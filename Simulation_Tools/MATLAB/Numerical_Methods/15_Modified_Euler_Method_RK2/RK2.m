clc
clear all
close all

f = @(x,y) x + y;

% Initial conditions
x0 = 0;
y0 = 1;

h = 0.1;
xn = 1;
n = (xn - x0)/h;
x = x0;
y = y0;

fprintf('x\t\t y\n');
fprintf('%.2f\t %.4f\n', x, y);

for i = 1:n

    k1 = h * f(x, y);
    k2 = h * f(x + h, y + k1);

    y = y + (k1 + k2)/2;
    x = x + h;

    fprintf('%.2f\t %.4f\n', x, y);
end
