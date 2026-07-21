clc
clear
close all
func_str = input ('Enter function f(x): ','s');
% Convert string to function
f = str2func(['@(x) ' func_str]);
% Initial values
a = input('Enter the value of a: ');
b = input('Enter the value of b: ');

% Number of iterations
n = input('Enter the number of iterations: ');
fprintf('Iter \t a \t\t b \t\t c \t\t f(c)\n');
for i= 1:n
  %formula
  c = (a*f(b) - b*f(a)) / (f(b) - f(a));
  fprintf('%d \t %.6f \t %.6f \t %.6f \t %.6f\n', i,a,b,c,f(c));
  if f(a) * f(c) < 0
    b = c;
  else
    a = c;
  end
end
fprintf('\n Approximate Root after %d iterations = %d.6f\n' , n, c);


