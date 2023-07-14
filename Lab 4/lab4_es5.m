clear all;
clc;
x0 = 0;
toll = 10^-8;
x = linspace(-20,20,2000);
f = @(x) log(x+2).^2;
df = @(x) (2*log(x + 2))/(x + 2);

figure(1)
plot(x,f(x));
grid on;

[x,xall,iter] = newton(f,df,x0,toll,2000);
[x_2,xall_2,iter_2] = newton_mod(f,df,2,x0,toll,2000); % la molteplicità 2 la vedo dal grafico, infatti vedo che vicino a zero la funzione tocca due volte zero
[x_3,xall_3,iter_3] = secante(f,df, x0,1,toll,2000);

sol = -1;

fprintf('\n \t valore sol: %10.19f', x);
fprintf('\n \t valore sol: %10.19f', x_2);
fprintf('\n \t valore sol: %10.19f', x_3);
err_ass = abs(xall - sol);
err_ass_2 = abs(xall_2 - sol);
err_ass_3 = abs(xall_3 - sol);


figure(2)
semilogy(1:iter, err_ass, 'black');
hold on;
semilogy(1:iter_2, err_ass_2, 'red');
semilogy(1:iter_3, err_ass_3, 'yellow');