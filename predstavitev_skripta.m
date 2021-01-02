% skripta za projekt

t = linspace(0,1,100);

%poklikamo točke in vektorje
T = getCoordClick();
B = interpolateBeziere(T);
plotbezier(B,t)

%tuki dodaš kaj vrne tvoja klasificija


%primer z zanko
T1 = [0 0;
    5 1;
    1 0;
    3 4];
B1 = interpolateBeziere(T1);
%plotbezier(B1,t);

%tuki dodaš kaj vrne tvoja klasificija