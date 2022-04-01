function [ q ] = OZK_korpus_rekaL( r_W_LH , q0, fi_W_CH)
% Zadanie odwrotne kinematyki dla ko�czyny g�rnej lewej
% Wej�cie:
% r_W_LH - po�o�enie ko�c�wki (d�oni) w uk�adzie bioder
% fi_CH - k�t obrotu mi�dzy biodrami a klatk� piersiow� (opcjonalnie)
% Wyj�cie
% q - wektor wsp. z��czowych
% q = [ fi_LAy fi_LAx fi_LFA];

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
r_CH_LH = rot_W_CH' * r_W_LH;

q0 = [0 0 -pi/2];


options = optimset('Display','off');
f = @(q) Kinematics.PZK_klatka_rekaL(q,r_CH_LH); 
q=fsolve(f,q0, options);

end

