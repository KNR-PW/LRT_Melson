function [ q ] = OZK_korpus_rekaL(RbtMdlPar, r_W_LH , fi_CH)
% Zadanie odwrotne kinematyki dla ko�czyny g�rnej lewej
% Wej�cie:
% r_W_LH - po�o�enie ko�c�wki (d�oni) w uk�adzie bioder
% fi_CH - k�t obrotu mi�dzy biodrami a klatk� piersiow� (opcjonalnie)
% Wyj�cie
% q - wektor wsp. z��czowych
% q = [ fi_LAy fi_LAx fi_LFA];

if( nargin<3 )
   fi_CH = 0; 
end

% Wczytanie wymiar�w)
% Kinematics.wymiary;

% Macierz rotacji mi�dzy uk�adami klatki piersiowej i bioder
rot_W_CH = [cos(fi_CH) -sin(fi_CH) 0;
          sin(fi_CH) cos(fi_CH) 0;
          0 0 1];

% Po�o�enie ko�c�wki (d�oni) w uk�adzie klatki piersiowej
r_CH_LH = rot_W_CH' * r_W_LH;

% Prawa strona r�wnania
r = r_CH_LH - RbtMdlPar.r_CH_LA;

% D�ugo�ci cz�on�w
l_LA = RbtMdlPar.r_LA_LFA(3);     %d�ugo�� ramienia (ujemna!) 
l_LFA = RbtMdlPar.r_LFA_LH(3);    %d�ugo�� przedramienia (ujemna!) 

% Wyliczanie warto�ci wsp. z��czowych
fi_LFA = -acos( (r'*r - l_LA^2 - l_LFA^2) / (2*l_LA*l_LFA));
fi_LAx = asin( -r(2) / (l_LA + l_LFA*cos(fi_LFA)));

% Wyznaczenie fi_RAy
% uk�ad r�na� liniowych:

A(1,1) = (l_LA + l_LFA*cos(fi_LFA)) * cos(fi_LAx);
A(1,2) = l_LFA*sin(fi_LFA);
A(2,1) = - l_LFA * sin(fi_LFA);
A(2,2) = (l_LFA * cos(fi_LFA) + l_LA) * cos(fi_LAx);

b = [r(1) ; r(3)];

x = A\b;

fi_LAy = atan2(real(x(1)), real(x(2)));

% zbudowanie wektora wsp. z��czowych
q = [ fi_LAy fi_LAx fi_LFA];
end

