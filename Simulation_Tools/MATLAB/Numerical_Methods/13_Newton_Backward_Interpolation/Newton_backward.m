clc
clear all
close all

% Input data (equally spaced)
x = [1 2 3 4];
y = [1 8 27 64];   % example: y = x^3

n = length(x);
h = x(2) - x(1);

% Difference table
diff_table = zeros(n,n);
diff_table(:,1) = y';

for j = 2:n
    for i = 1:n-j+1
        diff_table(i,j) = diff_table(i+1,j-1) - diff_table(i,j-1);
    end
end

disp('Forward Difference Table:');
disp(diff_table);

% Interpolation point (near last value)
xp = 3.5;

u = (xp - x(n))/h;

% Newton backward formula starts from last row
sum = y(n);

u_term = 1;
fact = 1;

for i = 1:n-1
    u_term = u_term * (u + (i-1));
    fact = fact * i;
    sum = sum + (u_term * diff_table(n-i,i+1)) / fact;
end

fprintf('Interpolated value at x = %.2f is %.4f\n', xp, sum);
