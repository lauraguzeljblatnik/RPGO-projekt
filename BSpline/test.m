rng(1) % Set random seed for reproductility
q=1;
%1.15 cusp
%0.6 loop
%0.1 nada
%2 2x inflexion
% knot sequence
%t = [0 0 0 0 0.3 0.4 1 1 1 1];
% control points (unknown)
%XY = [ 1 1 1 3 2 1.5 ;q+1 q 0 0 0.1 0.15 ];
%XY=(); % Random set of 5 points in 2D
XY= [ 1 q+1;
    1 q;
    1 0;
    3 0
    2 0.1;
    1.5 0.15];
BS3=BSpline(XY,'order',3);
h=plot(XY(:,1),XY(:,2),'-o',BS3(:,1),BS3(:,2),'--');
%legend('Reference data (knots)','2^{nd} order Bspline','3^{rd} order Bspline','2^{nd} order periodic Bspline')
%set(h, 'LineWidth',2)