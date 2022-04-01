
%% czyszczenie Workspace'a, �adowanie danych
clear;
% load('chod200.mat')
load('chodok.mat')

LoadModelParameters;
RbtMdlPar = RobotModelParameters;

%% Zapis trajektorii enpoint�w i CoM w uk�adzie prawej stopy (RF), 
% R_traj = [ R_RF_LF;       - kolejne pozycje lewej stopy
%            R_RF_RH;       - kolejne pozycje prawej d�oni
%            R_RF_LH;       - kolejne pozycje lewej d�oni
%            R_RF_CoM;      - kolejne pozycje �rodka masy
%            E_RF_LF;       - kolejne parametry eulera opisuj�ce orientacj�
%            Pitch_W;       - pochylenie bioder( i ca�ego korpusu)

 N = size(GaitEndPointsTrajectory.r_RF,2);
    X_Planned = zeros(21,N);

    for TimeIter = 1:N        
        X_Planned(:,TimeIter) = [    GaitEndPointsTrajectory.r_RF(:,TimeIter);
                                     GaitEndPointsTrajectory.r_LF(:,TimeIter);
                                     GaitEndPointsTrajectory.r_RH(:,TimeIter);
                                     GaitEndPointsTrajectory.r_LH(:,TimeIter);
                                     GaitCoMTrajectory(:,TimeIter);
                                     Mat.rot2euler(GaitEndPointsTrajectory.rot_RF(:,:,TimeIter));
                                     Mat.rot2euler(GaitEndPointsTrajectory.rot_LF(:,:,TimeIter))];
    end  

N = size(X_Planned,2);


%% Przybli�enie startowe 
q0 = RbtMdlPar.q0;

%% Kolejne wsp. z��czowe
Q = zeros(19,N);

%% Rozwi�zanie dla pierwszej pozycji
Q = SolveInverseKinematics(q0, X_Planned(:,1), 100);

%% Kolejne rozwi�zania
tic;
for TimeIter = 2:N        
    Q(:,TimeIter) = SolveInverseKinematics(Q(:,TimeIter-1),X_Planned(:,TimeIter), 1);
end 
toc




