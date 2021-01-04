function T = getCoordClick()
%poklikamo točke in odvode

axis([-4 4 -4 4])

T = zeros (2,2);
[x,y] = ginput(2);
T (:,1) = x;
T(:,2) = y;
close;
end

