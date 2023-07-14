clear all;
clc;
n = 1e+2;
Sn1 = sqrt(6*cumsum(1 ./ (1:n).^2));

Sn2(1) = 2;
for i = 3:n
    Sn2(i-1) = 2^((i-2) / 2) * sqrt(1 -sqrt(1-4^(1 - (i-1)) * Sn2(i-2)^2));
end

Sn3(1) = 2;
for i = 3:n
    Sn3(i-1) = sqrt(2) * Sn3(i-2) / sqrt(1 + sqrt(1-4^(1 - (i-1)) * Sn3(i-2)^2));
end

err_rel_sn1 = abs(Sn1 - pi) / abs(pi);
err_rel_sn2 = abs(Sn2 - pi) / abs(pi);
err_rel_sn3 = abs(Sn3 - pi) / abs(pi);

fprintf('\n \t valore Sn1: %10.19f', Sn1(end));
fprintf('\n \t valore Sn2: %10.19f', Sn2(end));
fprintf('\n \t valore Sn3: %10.19f', Sn3(end));


figure(1)
semilogy(err_rel_sn1, 'red');
hold on;
semilogy(err_rel_sn2, 'green');
semilogy(err_rel_sn3, 'blue');