A = magic(9);
b = [910, 1034, 1113, 1264, 1172, 981, 1060, 941, 750]';

sol = lu_solver(A,b);

fprintf('\n \t soluzione sitema: %10.19f', sol);
