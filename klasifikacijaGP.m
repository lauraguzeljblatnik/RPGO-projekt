function obmocje = klasifikacijaGP(U,V)
%UNTITLED funkcija dobi kot vhodni parameter kartezični koordinati U in V
%Glede na U,V pove ali pripadata območju:
% N -> no inflexion/cusp/loop
% S -> an inflexion point
% D -> two inflexion points
% C -> cusp
% L -> loop
if (U<0)&&(V<0)
    obmocje = 'N';
elseif (U>0)&&(V>0)&&(U<3)&&(V<3)
    obmocje = 'N';
elseif (U<0)&&(-V^2+3*V<U)
    obmocje = 'N';
elseif (V<0)&&(V>-U^2+3*U)
    obmocje = 'N';
elseif (U<0) && (0<V)&&(V<3)
    obmocje = 'S';
elseif (U<3)&&(V==4/(U-4)+4)
    obmocje='C';
elseif (U>3)&&(V==4/(U-4)+4)
    obmocje='C';
elseif (V<0)&&(0<U)&&(U<3)
    obmocje = 'S';
elseif (U>3)&&(0<V)&&(V<3)
    obmocje ='S';
elseif (0<U)&&(U<3)&&(V>3)
    obmocje ='S';
elseif (U>4)&&(V>4/(U-4) +4)
    obmocje = 'L';
elseif (U>3)&&(V> 4/(U-4) +4)&& (V< -U^2 +3*U)&&(U<4)
    obmocje ='L';
elseif (U>=4)&&(V< -U^2 +3*U)
    obmocje ='L';
elseif (U<0)&&(V> 4/(U-4)+4)&&(U<-V^2+3*V)
    obmocje ='L';
elseif (U>3)&&(V>3)&&(V<4/(U-4)+4)
    obmocje='D';
elseif (U>3)&&(V<4/(U-4)+4)
    obmocje ='D';
elseif (U<3)&&(V<4/(U-4)+4)
    obmocje='D';

else
    obmocje = 'Popravi robne pogoje';
end
end

