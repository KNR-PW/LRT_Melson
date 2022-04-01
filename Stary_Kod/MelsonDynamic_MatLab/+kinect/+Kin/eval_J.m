function [J] = eval_J(RbtPar,Chain,q)
%EVAL_J
% Funkcja zwracaj�ca jakobian 

% dr = [ dr_RF_LF;
%        dr_RF_RH;
%        dr_RF_LH;
%        dr_RF_CoM;       
%        w_RF_LF];
% dr = J * dq

JointRot        = zeros(3,3,RbtPar.DoF);
JointRotInGlobal  = zeros(3,3,RbtPar.DoF);
JointUInGlobal = zeros(3,RbtPar.DoF);


% for Iter=1:RbtPar.DoF
%     if RbtPar.JointU(:,Iter) == [1 0 0]'
%         JointRot(:,:,Iter) = RotX(q(Iter));
%     else
%         if RbtPar.JointU(:,Iter) == [0 1 0]'
%             JointRot(:,:,Iter) = RotY(q(Iter));
%         else
%             if RbtPar.JointU(:,Iter) == [0 0 1]'
%                 JointRot(:,:,Iter) = RotZ(q(Iter));
%             end
%         end
%     end       
% end
% 
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

for Iter=1:RbtPar.DoF
    if RbtPar.JointRotOrderPrev(Iter,1)
        JointRotInGlobal(:,:,RbtPar.JointRotOrderPrev(Iter,2)) = JointRotInGlobal(:,:,RbtPar.JointRotOrderPrev(Iter,1)) * JointRot(:,:,RbtPar.JointRotOrderPrev(Iter,2));
    else
        JointRotInGlobal(:,:,RbtPar.JointRotOrderPrev(Iter,2)) = JointRot(:,:,RbtPar.JointRotOrderPrev(Iter,2));
    end
end

for Iter=1:RbtPar.DoF
    if RbtPar.JointRotOrderPrev(Iter,1)
        JointUInGlobal(:,RbtPar.JointRotOrderPrev(Iter,2)) = JointRotInGlobal(:,:,RbtPar.JointRotOrderPrev(Iter,1)) * RbtPar.JointU(:,RbtPar.JointRotOrderPrev(Iter,2));
    else
        JointUInGlobal(:,RbtPar.JointRotOrderPrev(Iter,2)) = RbtPar.JointU(:,RbtPar.JointRotOrderPrev(Iter,2));
    end
end





% Wyznaczanie i-tej kolumny jakobianu
J = zeros(16,19);
Jmass = zeros(3,19);

for Joint=1:19
    [J(1:3,Joint) J(13:15,Joint)]   = J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(1).R, Chain(1).JointOrder );
    J(4:6,Joint) = J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(2).R, Chain(2).JointOrder );
    J(7:9,Joint) = J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(3).R, Chain(3).JointOrder );
    
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRS * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(4).R, Chain(4).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRT * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(5).R, Chain(5).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mW  * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(6).R, Chain(6).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLT * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(7).R, Chain(7).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLS * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(8).R, Chain(8).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLF * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(9).R, Chain(9).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mCH * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(10).R, Chain(10).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRA * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(11).R, Chain(11).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mRFA* J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(12).R, Chain(12).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLA * J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(13).R, Chain(13).JointOrder );
    Jmass(:,Joint) = Jmass(:,Joint) + RbtPar.mLFA* J_column(Joint,JointRotInGlobal, JointUInGlobal, Chain(14).R, Chain(14).JointOrder );    
end
    J(10:12,:) = Jmass / RbtPar.TotalMass;
    
    %% Wyznaczenie wiersza, odpowiedzialnego za pr�dko�� k�tow� korpusu, wzgl�dem jego osi Y
    u_Wy = JointRotInGlobal(:,:,1) * [0 1 0]';
    for Joint=1:19
        if ismember(Joint, Chain(15).JointOrder )
            J(16,Joint) = JointUInGlobal(:,Joint)' * u_Wy;
        end
    end   
    
    
    
    
end

function [dr dfi] = J_column(Joint, Rot, U, R, JointOrder)
    NumberOfJoints = length(JointOrder);
    dr = zeros(3,1);
    dfi= zeros(3,1);
    
    if ismember(Joint,JointOrder)
        % Okre�lenie wersora kierunkowowego "u" i-tego nap�du robota
        % zapisanego we wsp�rz�dnych uk�adu RF

        
        Iter=1;
        while JointOrder(Iter) ~= Joint
            Iter = Iter+1;
        end
        u_joint = U(:,Joint);

        % Okre�lenie ramienia "d" i-tego nap�du robota
        % zapisanego we wsp�rz�dnych uk�adu RF
        
        d_joint = zeros(3,1);
        
        for Iter=Iter:length(JointOrder)
        	rot_RF_i = Rot(:,:,JointOrder(Iter));
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




