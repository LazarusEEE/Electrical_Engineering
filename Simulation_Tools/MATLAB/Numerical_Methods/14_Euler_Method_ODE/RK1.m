clc
clear all
close all

f = @(x,y) x + y;   % example ODE

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
    y = y + h * f(x,y);
    x = x + h;

    fprintf('%.2f\t %.4f\n', x, y);
end
