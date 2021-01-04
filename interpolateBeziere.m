function B = interpolateBeziere(T)
% T = [t0; v0, t1;v1]
% interpolirati želimo točki t0 in t1
% in smerna vektorja odvodov s kubično bezierjevo krivuljo
% (krivulja reda 4)
% za vhodne točke vrne koordinate kontrolnega poligona

t0 = T(1,:); 
v0 = T(2,:)-t0;
t1 = T(3,:);
v1 = T(4,:)-t1;
B = zeros(4,2);
B (1,: ) = t0;
B (4,:) = t1;
B(2,:) = v0./3 + t0;
B(3,:) = t1 - v1./3;




end

