clc
clear
close all

func_str = input ('Enter function f(x): ','s');
% Convert string to function
f = str2func(['@(x) ' func_str]);
a = input('Enter lower limit : ');
b = input('Enter upper limit : ');
n = input('Enter number of subintervals: ');
% Step size
h = (b-a)/n

variable
sum_val = 0
fprintf('\n i \t x \t f(x)\n');
fprintf('---------------------\n');
for i = 0:n
  x = a + i * h;
  fx = f(x);
  fprintf('%d \t %.4f \t %.4f\n', i, x, fx);
  % Apply trapezoidal coefficients
  if i == 0 || i == n
    sum_val = sum_val + fx;
  else
    sum_val = sum_val + 2 * fx;
  end
end
I = (h/2)*sum_val
fprintf('\n step suze(n)= %.4f\n', h);
fprintf('Approximate Integral= %.6f\n', I);


