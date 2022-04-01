%% skrypt przechowuj�cy wymiary humanoida w postaci wektorowej

% Po�o�enie kolejnych cz�on�w w uk�adach zwi�zanych z cz�onem
% poprzedzaj�cym. G��wnym cz�onem s� biodra (W).
% r_X_Y - po�o�enie cz�onu Y w uk�adzie cz�onu poprzedzaj�cego X
r_W_CH  = [0 0 0]'; 

r_W_RT  = [ 0 -42.8 -100]';
r_RT_RS  = [0 0 -96.283]';
r_RS_RF  = [0 0 -95]';

r_W_LT  = [ 0 42.8 -100]';
r_LT_LS  = [0 0 -96.283]';
r_LS_LF  = [0 0 -95]';

r_CH_RA  = [0 -102 54.25]';
r_RA_RFA = [0 0 -103]';
r_RFA_RH  = [0 0 -90]';

r_CH_LA  = [0 102 54.25]';
r_LA_LFA = [0 0 -103]';
r_LFA_LH  = [0 0 -90]';

% Po�o�enie �rodk�w mas cz�on�w w uk�adach z nimi zwi�zanych.
% r_com_X - po�o�enie �rodka masy cz�onu X w zwi�zanym z nim uk�adzie
r_com_W   = [0 0 0]';
r_com_CH  = [0 0 0]'; 
r_com_RT  = [0 0 0]';
r_com_LT  = [0 0 0]';
r_com_RS  = [0 0 0]';
r_com_LS  = [0 0 0]';
r_com_RF  = [0 0 0]';
r_com_LF  = [0 0 0]';
r_com_RA  = [0 0 0]';
r_com_LA  = [0 0 0]';
r_com_RFA = [0 0 0]';
r_com_LFA = [0 0 0]';

% Masy poszczeg�lnych cz�on�w (gramy)
mCH  = 0; 
mRT  = 0;
mLT  = 0;
mRS  = 0;
mLS  = 0;
mRF  = 0;
mLF  = 0;
mRA  = 0;
mLA  = 0;
mRFA = 0;
mLFA = 0;

% Po�o�enie punkt�w charakterystycznych st�p w uk�adach zwi�zanymi ze
% stopami
r_RF_center     = [0 0 -35]';
r_RF_right_toe  = [63 -51.5 -35]';
r_RF_left_toe   = [63 28.5 -35]';
r_RF_right_heel = [-57 -51.5 -35]';
r_RF_left_heel  = [-57 28.5 -35]';

r_LF_center     = [0 0 -35]';
r_LF_right_toe  = [63 -28.5 -35]';
r_LF_left_toe   = [63 51.5 -35]';
r_LF_right_heel = [-57 -28.5 -35]';
r_LF_left_heel  = [-57 51.5 -35]';
