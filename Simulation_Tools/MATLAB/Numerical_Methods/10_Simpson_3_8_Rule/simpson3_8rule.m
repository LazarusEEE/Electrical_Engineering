clc
clear
close all

func_str = input('Enter function f(x): ','s');
% convert string to function
f = str2func(['@(x) ' func_str]);

a = input('Enter lower limit: ');
b = input('Enter upper limit: ');
n = input('Enter number of subintervals (multiple of 3): ');

if mod(n,3) ~= 0
    fprintf('Error: Number of subintervals must be a multiple of 3.\n');
    return;
end

h = (b - a)/n;
total_sum = 0;
fprintf('i\t x\t\t f(x)\n');
fprintf('-----------------------------\n');

for i = 0:n
    x_val = a + i*h;
    fx = f(x_val);
    fprintf('%d\t %.6f\t %.6f\n', i, x_val, fx);
    
    % Simpson's 3/8 coefficients
    if i == 0 || i == n
        total_sum = total_sum + fx;
    elseif mod(i,3) == 0
        total_sum = total_sum + 2*fx;
    else
        total_sum = total_sum + 3*fx;
    end
end

% Simpson's 3/8 Rule formula
I = (3*h/8) * total_sum;

fprintf('\nStep size (h) = %.6f\n', h);
fprintf('Approximate Integral = %.6f\n', I);
