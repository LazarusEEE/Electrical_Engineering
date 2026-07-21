clc
clear
close all
func_str= input('Enter function f(x): ','s');
% convert string to function
f = str2func(['@(x) ' func_str]);

a = input('Enter lower limit: ');
b = input('Enter upper limit: ');

n = input('Enter number of subintervals(even): ');
if mod(n,2)~= 0
  fprintf('Error: Num of subintervals must be even.\n');
  return
end

h = (b - a) / n;
sum1 = 0;
fprintf('i\t x\t\t f(x)\n');
fprintf('-----------------\n');
for i = 0:n
  x = a + i*h;
  Fx = f(x);

  fprintf('%d\t %.6f\t %.6f\n', i, x, Fx);
  % Simpson's 1/3 coefficients
  if i==0 || i==n
    sum1 = sum1 + Fx;
  elseif mod(i,2)==0
    sum1 = sum1 + 2*Fx;
  else
    sum1 = sum1 + 4*Fx;
  end
end
% Simpson's 1/3 Rule formula
I = (h/3)*sum1;
fprintf('\n step size(h) = %.6f\n', h);
fprintf(' Approximate Integral = %.6f\n', I);


