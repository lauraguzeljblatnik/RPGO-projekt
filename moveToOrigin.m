function Tm = moveToOrigin(T)
%tm0 in tm1 premaknemo na (0,0) in (0,1) 
% ustrezno skaliramo tudi vektorja

t0 = T(1,:); 
v0 = T(2,:);
t1 = T(3,:);
v1 = T(4,:);

%premaknemo v izhodišče

tm1 = t1-t0;
vm0 = v0-t0;
vm1 = v1- t0;

%rotiramo

phi = atan(tm1(2)/tm1(1));

M =[cos(-phi) -sin(-phi);
    sin(-phi) cos(-phi)];


vm0 = M.*vm0;
vm1 = M.*vm1;

%skaliramo
l = norm (tm1);
vm = [vm0;vm1];
vm = vm./l;

Tm = zeros(4,2);
Tm(1,:) = [0 0];
Tm(3,:) = [1 0];
Tm(2,:) = vm(1,:);
Tm(4,:) = vm(2,:);


end

