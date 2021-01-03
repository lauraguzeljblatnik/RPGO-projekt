% skripta za projekt

t = linspace(0,1,100);

%poklikamo točke in vektorje
T = getCoordClick();
T_pop = [0 0; T(1,:); 1 0; T(2,:)];

B = interpolateBeziere(T_pop);
plotbezier(B,t)



%Klasifikacija
M1 = T_pop(1,:);
M2 = T_pop(3,:);
M3 = T_pop(2,:);
M4 = T_pop(4,:);
[U,V] = izracunUV(M1,M2,M3,M4);
klasifikacijaGP(U,V)

%primer z zanko
T1 = [0 0;
    5 1;
    1 0;
    3 4];


B1 = interpolateBeziere(T1);
plotbezier(B1,t);


%Klasifikacija
M1 = T1(1,:);
M2 = T1(3,:);
M3 = T1(2,:);
M4 = T1(4,:);

[U1, V1] = izracunUV(M1,M2,M3,M4);
klasifikacijaGP(U1,V1)