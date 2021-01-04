function [U,V] = izracunUV(M1,M2,M3,M4)
% M1 in M2 sta začetni točki; v testnem primeru je M1 =(0,0) in M2=(1,0)
%Točki M3 in M4 pa sta izbrani na tak način da je M3-M1 smer tangetnega
%vektorja A0 ina M4-M2 smer tangetnega vektorja A1
A0 = M3 - M1;
A1 = M4- M2;
%A1 = M4;

%Sestavimo dve linearni funkciji
k1 = A0(2)/A0(1);
k2 = A1(2)/A1(1);
n1 = M1(2)-k1*M1(1);
n2 = M2(2)-k2*M2(1);
x1 = (n2-n1)/(k1-k2);
y1 = x1*k1 +n1;
M =[x1 y1]
%M = presek_premic(M1,M3,M2,M4);
MM1 = M-M1;
MM2 = M-M2;
dolzina1 = sqrt(MM1(1)^2+MM1(2)^2)
dolzina2 = sqrt(MM2(1)^2+MM2(2)^2)
dolzinaA0 = sqrt(A0(1)^2+A0(2)^2)
dolzinaA1 =sqrt(A1(1)^2+A1(2)^2)
U = dolzinaA0/dolzina1
V = dolzinaA1/dolzina2
end


