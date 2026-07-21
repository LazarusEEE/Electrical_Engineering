clc
clear
 close all
func_str = input('Enter function f(x): ','s');
f = str2func(['@(x) ' func_str]);

a = input('Enter lower limit: ');
b = input('Enter upper limit: ');
n_sub = input('Enter number of subintervals: ');

h = (b - a) / n_sub;
xa = linspace(a, b, n_sub + 1);
ya = f(xa); % Evaluates function at all points
num_points = length(xa);

x_target = (a + b) / 2; % Target point to evaluate interpolation
Y_interp = 0;

fprintf('i\t x\t\t\t f(x)\n');
fprintf('------------------\n');
for i = 1:num_points
    fprintf('%d\t %.6f\t %.6f\n', i-1, xa(i), ya(i));
end

%Lagrange Logic
for i = 1:num_points
    L = 1;
    for j = 1:num_points
        if i ~= j
            L = L * ((x_target - xa(j)) / (xa(i) - xa(j)));
        end
    end
    Y_interp = Y_interp + ya(i) * L;
end

fprintf('\nStep size (h) = %.6f\n', h);
fprintf('Interpolated value at x=%.4f is = %.6f\n', x_target, Y_interp);
