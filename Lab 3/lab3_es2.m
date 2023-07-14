p =  4.999999999995 * 10^4;
q = 10^-2;
sol_esatta = 10^-7;


val_dir = -p + sqrt(p^2 + q);
razional = q / (p + sqrt(p^2 + q));

fprintf('\n \t valore con val diretta: %10.19f', val_dir);
fprintf('\n \t valore con razionalizz: %10.19f', razional);
