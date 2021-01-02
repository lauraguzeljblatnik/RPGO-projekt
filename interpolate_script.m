% interpolate script

t0 = [0 0];
t1 = [1 0];
a0 = [1 0.2]; % 5 1 loop
a1 = [0.6 1]; % 3 4 loop
T1 = [0 0;
    5 1;
    1 0;
    3 4];
B1 = interpolateBeziere(T1);

t = linspace(0,1,100);
%T = getCoordClick()
B = interpolateBeziere(T1);
hold on;
plotbezier(B,t)
%Tm = moveToOrigin(T);
%BB = moveToOriginBezier(B);

%Bm =  interpolateBeziere(Tm);
%BBm =interpolateBeziere(BB);
%plotbezier(Bm,t);
%plotbezier(BB,t);

%moving
% t00 = [1 1];
% t01 = [4 3];
% a00 = [6 2]; % 5 1 loop
% a01 = [6 5]; % 3 4 loop
% 
% am = moveToOrigin(t00,t01,a00,a01)
% 
% p0 = [t00;a00];
% p1 = [t01; a01];
% p2 = [t00; t01];
% hold on;
% plot(p0(:,1), p0(:,2), "-o")
% plot(p1(:,1), p1(:,2), "-o")
% plot(p2(:,1), p2(:,2), "-o")
% 
% 
% pm0 = [t0;am(1,:)];
% pm1 = [t1; am(2,:)];
% pm2 = [t0; t1];
% plot(pm0(:,1), pm0(:,2), "-o")
% plot(pm1(:,1), pm1(:,2), "-o")
% plot(pm2(:,1), pm2(:,2), "-o")

