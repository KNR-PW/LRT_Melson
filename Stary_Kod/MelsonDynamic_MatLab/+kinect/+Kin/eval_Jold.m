function [J] = eval_J(RbtPar,Chain,q)
%EVAL_J
% Funkcja zwracaj�ca jakobian 

% dr = [ dr_RF_LF;
%        dr_RF_RH;
%        dr_RF_LH;
%        dr_RF_CoM;       
%        w_RF_LF];
% dr = J * dq
RTz = q(1); RTx = q(2); RTy = q(3);
RSy = q(4); RFy = q(5); RFx = q(6);
LTz = q(7); LTx = q(8); LTy = q(9);
LSy = q(10); LFy = q(11); LFx = q(12);
RAy  = q(13); RAx  = q(14); RFAy = q(15);
LAy  = q(16); LAx  = q(17); LFAy = q(18);
CHz  = q(19);

JointRot        = zeros(3,3,19);
JointRotInGlobal  = zeros(3,3,19);


JointU      = zeros(3,19);
Ux = [1 0 0]';
Uy = [0 1 0]';
Uz = [0 0 1]';

JointRot(:,:,1)     = RotZ( -q(1) ); 
JointRot(:,:,2)     = RotX( -q(2) );
JointRot(:,:,3)     = RotY( -q(3) );
JointRot(:,:,4)     = RotY( -q(4) );
JointRot(:,:,5)     = RotY( -q(5) );
JointRot(:,:,6)     = RotX( -q(6) );
JointRot(:,:,7)     = RotZ( q(7) );
JointRot(:,:,8)     = RotX( q(8) );
JointRot(:,:,9)     = RotY( q(9) );
JointRot(:,:,10)    = RotY( q(10) );
JointRot(:,:,11)    = RotY( q(11) );
JointRot(:,:,12)    = RotX( q(12) );
JointRot(:,:,13)    = RotY( q(13) );
JointRot(:,:,14)    = RotX( q(14) );
JointRot(:,:,15)    = RotY( q(15) );
JointRot(:,:,16)    = RotY( q(16) );
JointRot(:,:,17)    = RotX( q(17) );
JointRot(:,:,18)    = RotY( q(18) );
JointRot(:,:,19)    = RotZ( q(19) );

% for Iter=1:RbtPar.DoF
%     if JointRotOrderPrev(Iter,1)
%         JointRotInGlobal(:,:,JointRotOrderPrev(Iter,2)) = JointRotInGlobal(:,:,RobotModelParameters.JointRotOrderPrev(Iter,1)) * JointRot(:,:,RobotModelParameters.JointRotOrderPrev(Iter,2));
%     else
%         JointRotInGlobal(:,:,JointRotOrderPrev(Iter,2)) = JointRot(:,:,RobotModelParameters.JointRotOrderPrev(Iter,2));
%     end
% end



JointU(:,1)     = -Uz;
JointU(:,2)     = -Ux;
JointU(:,3)     = -Uy;
JointU(:,4)     = -Uy;
JointU(:,5)     = -Uy;
JointU(:,6)     = -Ux;
JointU(:,7)     = Uz;
JointU(:,8)     = Ux;
JointU(:,9)     = Uy;
JointU(:,10)    = Uy;
JointU(:,11)    = Uy;
JointU(:,12)    = Ux;
JointU(:,13)    = Uy;
JointU(:,14)    = Ux;
JointU(:,15)    = Uy;
JointU(:,16)    = Uy;
JointU(:,17)    = Ux;
JointU(:,18)    = Uy;
JointU(:,19)    = Uz;



% Wyznaczanie i-tej kolumny jakobianu
J = zeros(15,19);
Jmass = zeros(3,19);

for Joint=1:19
    [J(1:3,Joint) J(13:15,Joint)]   = J_column(Joint,JointRot, JointU, Chain(1).R, Chain(1).JointOrder );
    J(4:6,Joint) = J_column(Joint,JointRot, JointU, Chain(2).R, Chain(2).JointOrder );
    J(7:9,Joint) = J_column(Joint,JointRot, JointU, Chain(3).R, Chain(3).JointOrder );
    
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRS * J_column(Joint,JointRot, JointU, Chain(4).R, Chain(4).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRT * J_column(Joint,JointRot, JointU, Chain(5).R, Chain(5).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mW  * J_column(Joint,JointRot, JointU, Chain(6).R, Chain(6).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLT * J_column(Joint,JointRot, JointU, Chain(7).R, Chain(7).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLS * J_column(Joint,JointRot, JointU, Chain(8).R, Chain(8).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLF * J_column(Joint,JointRot, JointU, Chain(9).R, Chain(9).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mCH * J_column(Joint,JointRot, JointU, Chain(10).R, Chain(10).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRA * J_column(Joint,JointRot, JointU, Chain(11).R, Chain(11).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRFA* J_column(Joint,JointRot, JointU, Chain(12).R, Chain(12).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLA * J_column(Joint,JointRot, JointU, Chain(13).R, Chain(13).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLFA* J_column(Joint,JointRot, JointU, Chain(14).R, Chain(14).JointOrder );    
end
    J(10:12,:) = Jmass / RbtPar.TotalMass;
end

function [dr dfi] = J_column(Joint, Rot, U, R, JointOrder)
    NumberOfJoints = length(JointOrder);
    dr = zeros(3,1);
    dfi= zeros(3,1);
    
    if ismember(Joint,JointOrder)
        % Okre�lenie wersora kierunkowowego "u" i-tego nap�du robota
        % zapisanego we wsp�rz�dnych uk�adu RF
        rot_RF_i = eye(3);
        
        Iter=1;
        while JointOrder(Iter) ~= Joint
            rot_RF_i = rot_RF_i * Rot(:,:,JointOrder(Iter));
            Iter = Iter+1;
        end
        u_joint = rot_RF_i * U(:,Joint);

        % Okre�lenie ramienia "d" i-tego nap�du robota
        % zapisanego we wsp�rz�dnych uk�adu RF
        
        d_joint = zeros(3,1);
        
        for Iter=Iter:length(JointOrder)
        	rot_RF_i = rot_RF_i * Rot(:,:,JointOrder(Iter));
            d_joint = d_joint + rot_RF_i * R(:,Iter);
        end
        
        dr = Mat(u_joint) * d_joint;
        dfi = u_joint;
    end
end

function [A] = Mat(r)
%macierz stowarzyszona
    A = [0 -r(3) r(2);
         r(3) 0 -r(1);
         -r(2) r(1) 0];
end

function [out] = RotX(q)
%ROTZ Summary of this function goes here
%   Detailed explanation goes here
    out = [1 0 0;
           0 cos(q) -sin(q);
           0 sin(q) cos(q)];
end

function [out] = RotY(q)
%ROTZ Summary of this function goes here
%   Detailed explanation goes here
    out = [cos(q) 0 sin(q);
           0 1 0;
           -sin(q) 0 cos(q)];
end

function [out] = RotZ(q)
%ROTZ Summary of this function goes here
%   Detailed explanation goes here
    out = [cos(q) -sin(q) 0;
           sin(q) cos(q) 0;
           0 0 1];
end




