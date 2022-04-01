function [Motion] = GenerateJointAngles2(Motion, RbtMdlPar, SolverOptions)

    %% Przybliżenie startowe 
    q0 = RbtMdlPar.q0;

    %% Rozwiązanie dla pierwszej pozycji
    Motion = InverseKinematicsRF(Motion, 1, q0,SolverOptions);
    
    for TimeIter = 1:100        
        Motion = InverseKinematicsRF(Motion, 1, Motion.JointPos(:,1), SolverOptions);
    end 

    %% Kolejne rozwiązania
    for TimeIter = 2:Motion.N        
        if Motion.SupportLeg(TimeIter) == "Left"
            Motion = InverseKinematicsLF(Motion, TimeIter, Motion.JointPos(:,TimeIter-1), SolverOptions);
        else
            Motion = InverseKinematicsRF(Motion, TimeIter, Motion.JointPos(:,TimeIter-1), SolverOptions);
        end
    end 
end

