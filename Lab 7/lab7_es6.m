x0 = pi/4;
y = [1.081472368639318; 0.815623938503011; 0.264095434559032;
-0.252848906174545; -0.892111226657974; -1.459959155014975;
-1.766075861433004; -1.819704100115936; -1.613278176259043;
-1.250824907620662; -0.862891009748491; -0.314666627135050;
0.046156477792090; 0.182512161087846; 0.190879110714435;
-0.080869277646918; -0.371753017609851; -0.654997944383704;
-0.908605679502703; -0.955459143503488; -0.824901178793667;
-0.505623916026125; 0.122274653404417; 0.748401831158879;
1.299060920457728; 1.735835000538698; 1.940338650596930;
1.859694970292042; 1.613403187791179; 1.136844347208049;
0.708708595857479; 0.215190648098014; -0.039799084319580;
-0.143340812469280; -0.017595122703702; 0.328483160028172;
0.654742714596673; 0.916442688538714; 1.140889511394805;
1.003444608050291];

x = linspace(-pi,pi,length(y));

n = 10;
f = @(x) sin(x) - cos(3*x);

%polinomio minimi quadrati
coeff = polyfit(x,y,n);

coeff_pol = polyval(coeff,x0);

figure(1)
plot(x,y);
hold on;
plot(coeff_pol);

y_pari = y(2:2:length(y));
x_pari = x(2:2:length(x));

coeff_2 = polyfit(x_pari,y_pari,n);
coeff_pol_2 = polyval(coeff_2,x0);

fprintf('\n \t valore polinomio ricostruito in x0: %1.10f', coeff_pol);

fprintf('\n \t valore polinomio con elementi pari ricostruito in x0: %1.10f', coeff_pol_2);

figure(2)
plot(x,y);
hold on;
plot(coeff_pol_2);

err_ass = abs(f(x0) - coeff_pol);
err_ass_2 = abs(f(x0) - coeff_pol_2);


fprintf('\n \t errore polinomio ricostruito in x0: %1.10f', err_ass);

fprintf('\n \t errore polinomio ricostruito in x0: %1.10f', err_ass_2);

