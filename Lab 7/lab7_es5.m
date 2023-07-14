f = @(x) sin(2.*x) - x.^2;
n = 100;
x = linspace(-5,5,n);

s = linspace(-5,5,1000);
f_dist =@(x) f + 0.5*rand(size(f));
y = f(x);
f_esatta = f(s);

d = 8;

%metodo polyfit per i minimi quadrati
coeffs_poly = polyfit(x,y,d); % Calcolo i coefficienti attraverso la funzione polyfit
rec_poly = polyval(coeffs_poly,s); % Valuto il pol in 1000 punti su [-5,5]

figure(1)
plot(x,y, 'ob');
hold on;
plot(s,f_esatta);
plot(s, rec_poly);
legend('Nodi','Funzione','Ricostruzione')
title('Interpolazione ai minimi quadrati: polyfit/polyval')

%metodo equazioni normali
V = fliplr(vander(x));

A = V(:,1:d+1);

sol = (A'*A) \ (A'*y');

s = linspace(0,1,100);
ricostruzione_eq_norm = polyval(sol(end:-1:1),s);



figure(2)
plot(x,y);
hold on;
plot(s,y, 'b');
plot(s,ricostruzione_eq_norm);
legend('Nodi','Funzione','Ricostruzione');
title('Interpolazione ai minimi quadrati: equazioni normali');


%scomposizione qr
V = fliplr(vander(x));

A = V(:,1:d+1);

[Q,R] = qr(A);

Q1 = Q(:,[1:d+1]);
R1 = R([1:d+1],[1:d+1]);

b = Q1' * y';
coeffs_qr = R1\b; % Calcolo i coefficienti con QR

rec_qr = polyval(coeffs_qr(end:-1:1),s); % Si veda sopra

figure(3)
plot(x,y,'ob')
hold on
plot(s,y,'-r','LineWidth',2)
plot(s,rec_qr,'-b','LineWidth',2)
legend('Nodi','Funzione','Ricostruzione')
title('Interpolazione ai minimi quadrati: scomposizione QR')

