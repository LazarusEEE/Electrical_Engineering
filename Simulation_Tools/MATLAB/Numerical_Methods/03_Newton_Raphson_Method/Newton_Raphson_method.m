clc
clear
close all

func_str = input('Enter function f(x): ', 's');
% Convert string to function
f = str2func(['@(x) ' func_str]);

df = @(x) (f(x) + 1e-6) -(f(x)) / 1e-6;

x0 = input('Enter initial guess: ');
tol = input('Enter tolerance(e.g. 1e-6): ');
max_iter = input('Enter maximum iteration : ');
fprintf('\n Iter \t\t x1 \t\t f(x1)\n');

for i = 1:max_iter
  x1 = x0 -f(x0)/df(x0);
  fprintf('%d \t\t %.6f \t\t %.6f\n', i, x1, f(x1));
  if abs(x1 - x0) < tol
    fprintf('\n Root = %.6f\n', x1);
    break
  end
  x0 = x1;
end
if i == max_iter
  fprintf('\n Solution did not convergence.\n');
end


