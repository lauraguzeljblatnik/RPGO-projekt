%risanje za projekt

axis equal;
hold on;

t= linspace (-1.5,1.5,1000);
x1= t.^2-1;
y1= t.^3-t;
%plot(x1,y1)
%saveas(gcf,'loop.png')

x2= t.^2;
y2= t.^3;
%plot(x2,y2)
%saveas(gcf,'cusp.png')

x3= t;
y3= t.^3;
%plot(x3,y3)
%saveas(gcf,'no_sing.png')

x4= t.^2-1;
y4= t.^3+t;
%plot(x4,y4)
%saveas(gcf,'prevoj.png')
axis equal;


