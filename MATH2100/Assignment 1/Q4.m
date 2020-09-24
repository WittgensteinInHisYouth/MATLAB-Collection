n=500;
t=300;
t100_hist = zeros(1,n);
t200_hist = zeros(1,n);
t300_hist = zeros(1,n);

for i = 1:n
    [x,y] = RandomWalk2D(t);
    t100_hist(i) = sqrt(x(101)^2+y(101)^2);
    t200_hist(i) = sqrt(x(201)^2+y(201)^2);
    t300_hist(i) = sqrt(x(301)^2+y(301)^2);
end
d = 1:2:50;

subplot(3,1,1);

histogram(t100_hist, d);
t=100;
hold on
plot(d, 2*d/t.*exp(-d.^2/t)*n*2);
title("t=100")
hold off

subplot(3,1,2);
histogram(t200_hist, 1:2:50);
t=200;
hold on 
plot(d, 2*d/t.*exp(-d.^2/t)*n*2);plot(d, 2.*d/t.*exp(-d.^2*t));
title("t=200")
hold off

subplot(3,1,3);
histogram(t300_hist, 1:2:50);
t=300;
hold on
plot(d, 2*d/t.*exp(-d.^2/t)*n*2);
title("t=300")
hold off
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