Funkcje:
IKS - zadanie odwrotne dla zadanej pozycji we wsp. zewn�trznych i aktualnej konfiguracji z��czowej
calc_* - analityczne wyznaczenie funkcji:
       - e - orientacja lewej stopy wzgl�dem prawej w parametrach Eulera e1 e2 e3
       - r - pozycje endpoint�w i �rodka masy
       - w (omega) - pr�dko�� k�towa w_RF_LF
       - J - Jakobian geometryczny
       - J_aug - rozszerzenie jakobianu, dot. pochylenia korpusu
       - r_aug - rozrzerzenie pozycji, k�t pochylenia korpusu
function_  - wyznaczone funkcje, wykorzystywane przez polecenia eval_*
eval_* - funkcje wyliczaj�ce warto�ci poszczeg�lnych rzeczy

       - r - wektor r = [ r_RF_LF;
                          r_RF_RH;
                          r_RF_LH;
                          r_RF_CoM;
                          e_RF_LF]
       - r_aug - k�t pochylenia korpusu
       - J - jakobian geometryczny  15x19
       - J_aug - roszerzenie jakobianu, dr_aug/dq