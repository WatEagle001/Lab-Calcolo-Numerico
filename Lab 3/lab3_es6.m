x1 = 1;
N = 70;
f_esatta = log(x1+1);
iterate = sequenza_log(x1,N);

fprintf('\n \t valore x1: %4d', x1);
fprintf('\n \t valore N: %4d', N);

fprintf('\n \t valore ultima iterata: %1.4f', iterate(end));

err_ass = abs(iterate - f_esatta);

figure(1)
semilogy(1:N, iterate, 'black');


iterate2 = sequenza_log2(x1,N);

fprintf('\n \t valore x1 log2: %4d', x1);
fprintf('\n \t valore N log2: %4d', N);

fprintf('\n \t valore ultima iterata log2: %1.4f', iterate2(end));

err_ass2 = abs(iterate2 - f_esatta);

figure(2)
semilogy(1:N, iterate2, 'red');
