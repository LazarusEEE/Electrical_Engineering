clc
clear all
close all

func_str = input ('Enter function f(x): ','s');
% Convert string to function
f = str2func(['@(x) ' func_str]);

x0 = 0.75;
tol = 1e-4;
max_iter = 100;

for i = 1:max_iter
    x1 = f(x0);

    if abs(x1 - x0) < tol
        fprintf("Root = %f\n", x1);
        break
    end

    x0 = x1;
end
