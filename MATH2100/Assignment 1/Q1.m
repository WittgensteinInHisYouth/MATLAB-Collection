t = 500;
for i = 1:3
    [x,y] = RandomWalk2D(t);
    plot(x,y)
    hold all
end
title("Three trajectories")
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