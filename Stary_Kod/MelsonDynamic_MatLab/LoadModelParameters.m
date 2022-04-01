%% skrypt przechowuj�cy wymiary humanoida w postaci wektorowej

% Po�o�enie kolejnych cz�on�w w uk�adach zwi�zanych z cz�onem
% poprzedzaj�cym. G��wnym cz�onem s� biodra (W).
% r_X_Y - po�o�enie cz�onu Y w uk�adzie cz�onu poprzedzaj�cego X
RobotModelParameters.r_W_CH  = [0 0 0]'; 

RobotModelParameters.r_W_RT  = [ 0 -42.8 -100]';
RobotModelParameters.r_RT_RS  = [0 0 -96.283]';
RobotModelParameters.r_RS_RF  = [0 0 -95]';

RobotModelParameters.r_W_LT  = [0 42.8 -100]';
RobotModelParameters.r_LT_LS  = [0 0 -96.283]';
RobotModelParameters.r_LS_LF  = [0 0 -95]';

RobotModelParameters.r_CH_RA  = [0 -83 54.25]';
RobotModelParameters.r_RA_RFA = [0 0 -103]';
RobotModelParameters.r_RFA_RH  = [0 0 -90]';

RobotModelParameters.r_CH_LA  = [0 83 54.25]';
RobotModelParameters.r_LA_LFA = [0 0 -103]';
RobotModelParameters.r_LFA_LH  = [0 0 -90]';

% Po�o�enie �rodk�w mas cz�on�w w uk�adach z nimi zwi�zanych.
% r_com_X - po�o�enie �rodka masy cz�onu X w zwi�zanym z nim uk�adzie
RobotModelParameters.r_com_W   = [-15.048  -0.004  -92.396]';
RobotModelParameters.r_com_CH  = [ -2.677   0.036   33.366]'; 
RobotModelParameters.r_com_RT  = [ -0.912   0.433  -66.801]';
RobotModelParameters.r_com_LT  = [ -0.912  -0.433  -66.801]';
RobotModelParameters.r_com_RS  = [  9.397   0.390  -40.345]';
RobotModelParameters.r_com_LS  = [  9.397   0.390  -40.345]';
RobotModelParameters.r_com_RF  = [-11.196  -4.147   -0.605]';
RobotModelParameters.r_com_LF  = [-11.196   4.147   -0.605]';
RobotModelParameters.r_com_RA  = [  0.274   0.274  -51.498]';
RobotModelParameters.r_com_LA  = [  0.274  -0.274  -51.498]';
RobotModelParameters.r_com_RFA = [  0.000   0.400  -68.248]';
RobotModelParameters.r_com_LFA = [  0.000  -0.400  -68.248]';


% Masy poszczeg�lnych cz�on�w [gramy]
RobotModelParameters.mW   = 805;
RobotModelParameters.mCH  = 294; 
RobotModelParameters.mRT  = 132;
RobotModelParameters.mLT  = 132;
RobotModelParameters.mRS  = 61;
RobotModelParameters.mLS  = 61;
RobotModelParameters.mRF  = 254;
RobotModelParameters.mLF  = 254;
RobotModelParameters.mRA  = 131;
RobotModelParameters.mLA  = 131;
RobotModelParameters.mRFA = 56;
RobotModelParameters.mLFA = 56;

% Masa ca�ego robota
RobotModelParameters.TotalMass = RobotModelParameters.mW ...
                               + RobotModelParameters.mCH ...
                               + RobotModelParameters.mRT ...
                               + RobotModelParameters.mLT ...
                               + RobotModelParameters.mRS ...
                               + RobotModelParameters.mLS ...
                               + RobotModelParameters.mRF ...
                               + RobotModelParameters.mLF ...
                               + RobotModelParameters.mRA ...
                               + RobotModelParameters.mLA ...
                               + RobotModelParameters.mRFA ...
                               + RobotModelParameters.mLFA;


% Po�o�enie punkt�w charakterystycznych st�p w uk�adach zwi�zanymi ze
% stopami
RobotModelParameters.r_RF_center     = [0 0 -35]';
RobotModelParameters.r_RF_right_toe  = [63-5 -51.5 -35]';
RobotModelParameters.r_RF_left_toe   = [63-5 28.5 -35]';
RobotModelParameters.r_RF_right_heel = [-57+5 -51.5 -35]';
RobotModelParameters.r_RF_left_heel  = [-57+5 28.5 -35]';

RobotModelParameters.r_LF_center     = [0 0 -35]';
RobotModelParameters.r_LF_right_toe  = [63-5 -28.5 -35]';
RobotModelParameters.r_LF_left_toe   = [63-5 51.5 -35]';
RobotModelParameters.r_LF_right_heel = [-57+5 -28.5 -35]';
RobotModelParameters.r_LF_left_heel  = [-57+5 51.5 -35]';

% Konfiguracja pocz�tkowa dla zadania kinematyki (nogi ugi�t�, r�ce w
% "gotowo�ci") dla kt�rej jakobian ma pe�ny rz�d
RobotModelParameters.q0 = [-0.0000;
                           -0.1031;
                           -0.6778;
                            1.4081;
                           -0.7303;
                            0.1031;
                            0.0000;
                            0.1031;
                           -0.6778;
                            1.4081;
                           -0.7303;
                           -0.1031;
                            0.3999;
                           -0.1360;
                           -1.2334;
                            0.3999;
                            0.1360;
                           -1.2334;
                            0.0000];

% Budowa wektora wsp�rz�dnych z��czowych:
% q = [q(1); q(2); q(3); q(4); q(5); q(6); q(7); q(8); q(9); q(10); q(11); q(12); q(13); q(14); q(15); q(16); q(17); q(18); q(19)]
% q = [RTz;  RTx;  RTy;  RSy;  RFy;  RFx;  LTz;  LTx;  LTy;  LSy;   LFy;   LFx;   RAy;   RAx;   RFAy;  LAy;   LAx;   LFAy;  CHz]
%
% AAo - k�t pary obrotowej wok� osi 'o' uk�adu AA, 

% Wersory kierunkowe osi poszczeg�lnych par obrotowych:


RobotModelParameters.JointRotOrderPrev(1,:) = [0 6];
RobotModelParameters.JointRotOrderPrev(2,:) = [6 5];
RobotModelParameters.JointRotOrderPrev(3,:) = [5 4];
RobotModelParameters.JointRotOrderPrev(4,:) = [4 3];
RobotModelParameters.JointRotOrderPrev(5,:) = [3 2];
RobotModelParameters.JointRotOrderPrev(6,:) = [2 1];
RobotModelParameters.JointRotOrderPrev(7,:) = [1 7];
RobotModelParameters.JointRotOrderPrev(8,:) = [7 8];
RobotModelParameters.JointRotOrderPrev(9,:) = [8 9];
RobotModelParameters.JointRotOrderPrev(10,:) = [9 10];
RobotModelParameters.JointRotOrderPrev(11,:) = [10 11];
RobotModelParameters.JointRotOrderPrev(12,:) = [11 12];
RobotModelParameters.JointRotOrderPrev(13,:) = [1 19];
RobotModelParameters.JointRotOrderPrev(14,:) = [19 13];
RobotModelParameters.JointRotOrderPrev(15,:) = [13 14];
RobotModelParameters.JointRotOrderPrev(16,:) = [14 15];
RobotModelParameters.JointRotOrderPrev(17,:) = [19 16];
RobotModelParameters.JointRotOrderPrev(18,:) = [16 17];
RobotModelParameters.JointRotOrderPrev(19,:) = [17 18];
RobotModelParameters.DoF = 19;

RbtPar.JointU      = zeros(3,19);
Ux = [1 0 0]';
Uy = [0 1 0]';
Uz = [0 0 1]';

RobotModelParameters.JointU(:,1)     = -Uz;
RobotModelParameters.JointU(:,2)     = -Ux;
RobotModelParameters.JointU(:,3)     = -Uy;
RobotModelParameters.JointU(:,4)     = -Uy;
RobotModelParameters.JointU(:,5)     = -Uy;
RobotModelParameters.JointU(:,6)     = -Ux;
RobotModelParameters.JointU(:,7)     = Uz;
RobotModelParameters.JointU(:,8)     = Ux;
RobotModelParameters.JointU(:,9)     = Uy;
RobotModelParameters.JointU(:,10)    = Uy;
RobotModelParameters.JointU(:,11)    = Uy;
RobotModelParameters.JointU(:,12)    = Ux;
RobotModelParameters.JointU(:,13)    = Uy;
RobotModelParameters.JointU(:,14)    = Ux;
RobotModelParameters.JointU(:,15)    = Uy;
RobotModelParameters.JointU(:,16)    = Uy;
RobotModelParameters.JointU(:,17)    = Ux;
RobotModelParameters.JointU(:,18)    = Uy;
RobotModelParameters.JointU(:,19)    = Uz;
clear Ux Uy Uz;

