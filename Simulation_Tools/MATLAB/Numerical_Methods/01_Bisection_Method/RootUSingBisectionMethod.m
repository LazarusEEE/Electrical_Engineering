clc
clear all

func_str = input ('Enter function f(x): ','s');
% Convert string to function
f = str2func(['@(x) ' func_str]);
%user input
x1 = input("Enter the value of x1: ");
x2 = input("Enter the value of x2: ");

if y(x1) * y(x2) > 0
    fprintf("No root exists in this interval\n");
    return
end

if y(x1) == 0
    fprintf("x1 is one of the roots\n");
    return
elseif y(x2) == 0
    fprintf("x2 is one of the roots\n");
    return
end
fprintf("\nIter\t x1\t\t x2\t\t xh\t\t f(xh)\n");
fprintf("---------------------------------------------------------\n");

for i = 1:100
    xh = (x1 + x2) / 2;
    yh = y(xh); % f(xh)

    % Print row data
    fprintf("%3d\t %10.6f\t %10.6f\t %10.6f\t %10.6f\n", i, x1, x2, xh, yh);

    if y(x1) * yh < 0
        x2 = xh;
    else
        x1 = xh;
    end

    if abs(yh) < 1.0e-4
        break;
    end
end

%result
fprintf("\nThe root = %f\n", xh);
