clc
clear all
close all

% Coefficient matrix A and RHS b
A = [10 -1 2;
     -1 11 -1;
      2 -1 10];

b = [6; 25; -11];

n = length(b);

x = zeros(n,1);      % initial guess
x_old = x;

tol = 1e-4;
max_iter = 100;

for k = 1:max_iter
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j ~= i
                sum = sum + A(i,j)*x_old(j);
            end
        end
        x(i) = (b(i) - sum) / A(i,i);
    end

    % check convergence
    if norm(x - x_old, inf) < tol
        break
    end

    x_old = x;
end

disp('Solution using Jacobi Method:');
disp(x);
