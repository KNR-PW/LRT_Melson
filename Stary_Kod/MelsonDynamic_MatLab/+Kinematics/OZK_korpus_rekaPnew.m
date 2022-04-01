function [ q ] = OZK_korpus_rekaP( r_W_RH , q0, fi_W_CH)
% Zadanie odwrotne kinematyki dla ko�czyny g�rnej Prawej
% Wej�cie:
% r_W_RH - po�o�enie ko�c�wki (d�oni) w uk�adzie bioder
% fi_CH - k�t obrotu mi�dzy biodrami a klatk� piersiow� (opcjonalnie)
% Wyj�cie
% q - wektor wsp. z��czowych
% q = [ fi_RAy fi_RAx fi_RFA];

if( nargin<2 )
   fi_W_CH = 0;
   q0 = [0 0 -pi/2];
end

% Wczytanie wymiar�w)
wymiary;

% Macierz rotacji mi�dzy uk�adami klatki piersiowej i bioder
rot_W_CH = [cos(fi_W_CH) -sin(fi_W_CH) 0;
          sin(fi_W_CH) cos(fi_W_CH) 0;
          0 0 1];

% Po�o�enie ko�c�wki (d�oni) w uk�adzie klatki piersiowej
r_CH_RH = rot_W_CH' * r_W_RH;

q0 = [0 0 -pi/2];

options = optimset('Display','off');
f = @(q) Kinematics.PZK_klatka_rekaP(q,r_CH_RH); 
q=fsolve(f,q0, options);

end

