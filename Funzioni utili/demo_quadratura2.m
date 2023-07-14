
clear all;
clc;

a = 0;
b = 1;

f = @(x) 1 ./ (x+1);
N = 20;
int_esatto = log(2);

trap = trapezi(f,a,b);
cav = cavalieri_simpson(f,a,b);
for i = 1:N
    [x,w] = trapezi_composta(a,b,i);
    [x_2, w_2] = simpson_composta(a,b,i);

    Int_trap(i) = f(x)'*w;
    Int_cav(i) = f(x_2)'*w_2;
end


err_ass = abs(Int_trap - int_esatto);
err_ass_2 = abs(Int_cav - int_esatto);


err_ass_trap = abs(trap - int_esatto);
err_ass_simp = abs(cav - int_esatto);

fprintf('\n \t valore integrale esatto: %1.4f', int_esatto);
fprintf('\n \t valore formula trapezi: %1.4f', trap);
fprintf('\n \t valore cavalieri-simpson: %1.4f', cav);


figure(2)
semilogy(1:N, err_ass, 'green');
hold on;
semilogy(1:N, err_ass_2, 'black');

