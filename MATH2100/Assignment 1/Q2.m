n=300;
t=300;
t100_xs = zeros(1,n);
t100_ys = zeros(1,n);
t200_xs = zeros(1,n);
t200_ys = zeros(1,n);
t300_xs = zeros(1,n);
t300_ys = zeros(1,n);

for i = 1:n
    [x,y] = RandomWalk2D(t);
    t100_xs(i) = x(101);
    t100_ys(i) = y(101);
    t200_xs(i) = x(201);
    t200_ys(i) = y(201);
    t300_xs(i) = x(301);
    t300_ys(i) = y(301);
end
subplot(3,1,1)
scatter(t100_xs,t100_ys, '*');
title("t=100")
grid on
subplot(3,1,2)
scatter(t200_xs,t200_ys, '+');
title("t=200")
grid on
subplot(3,1,3)
scatter(t300_xs,t300_ys, 'o');
title("t=300")
grid on



function [xs,ys] = RandomWalk2D(t)
    xs = zeros(1,t+1);
    ys = zeros(1,t+1);
    for i = 1:t
        x = xs(i);
        y = ys(i);
        R = 1;
        theta = 2*pi*rand;
        dx = R*cos(theta);
        dy = R*sin(theta);
        xs(i+1) = x+dx;
        ys(i+1) = y+dy;
    end
end