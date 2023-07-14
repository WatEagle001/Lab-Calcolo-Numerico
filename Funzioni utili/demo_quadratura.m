function demo_quadratura
a = 0;
b = 1;

f = @(x) 1 / (x+1);

int_esatto = log(2);

trap = trapezi(f,a,b);
cav = cavalieri_simpson(f,a,b);

fprintf('\n \t valore integrale esatto: %1.4f', int_esatto);
fprintf('\n \t valore formula trapezi: %1.4f', trap);
fprintf('\n \t valore cavalieri-simpson: %1.4f', cav);

end