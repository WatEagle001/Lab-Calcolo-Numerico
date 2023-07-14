clear all;
clc;

f = @(x) sin(x) +x;
df =@(x) cos(x) +1;

x0 = 3;
df_vera = df(x0);
i = 5;
for j = 1:i
    h = 10^(-j);

    destro(j) = rapp_inc_destro(f,x0,h);
    sinistro(j) = rapp_inc_sinistro(f,x0,h);
    simmetrico(j) = rapp_inc_simmetrico(f,x0,h);
end
 err_rel_dest = abs(destro - df_vera) / abs(df_vera);
 err_rel_sin  = abs(sinistro - df_vera) / abs(df_vera);
 err_rel_simm = abs(simmetrico - df_vera) / abs(df_vera);

 figure(1)
 semilogy(1:i, err_rel_dest, 'red');
 hold on;
 semilogy(1:i, err_rel_sin, 'black');
 semilogy(1:i, err_rel_simm, 'green');
 
