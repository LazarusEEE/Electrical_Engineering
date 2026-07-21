clc
clear all
close all

% Input data
x = [1 2 3 4 5];
y = [2 4 5 4 5];

n = length(x);

% Degree of polynomial
m = 2;   % you can change (1=linear, 2=quadratic, 3=cubic...)

A = zeros(n, m+1);

for i = 1:n
    for j = 1:m+1
        A(i,j) = x(i)^(j-1);
    end
end

coef = A \ y';
disp('Polynomial Coefficients (a0, a1, a2, ...):');
disp(coef');

x_fit = linspace(min(x), max(x), 100);
y_fit = zeros(size(x_fit));

for j = 1:m+1
    y_fit = y_fit + coef(j) * x_fit.^(j-1);
end

plot(x, y, 'ro', 'MarkerSize', 8)
hold on
plot(x_fit, y_fit, 'b-', 'LineWidth', 2)
grid on
legend('Data points', 'Polynomial fit')
title('Polynomial Curve Fitting')
