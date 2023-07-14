A = magic(10);
b = A*[1:10]';

x = lu_solver(A,b);

fprintf('\n \t sol sistema: %10.19f', x);