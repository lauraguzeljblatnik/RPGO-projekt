function T = getCoordClick()
%poklikamo točke in odvode


T = zeros (4,2);
[x,y] = ginput(4);
T (:,1) = x;
T(:,2) = y;
close;
end

