y1 = @(x) (1-x).^6;
y2 = @(x) x.^6 - 6*x.^6 + 15*x.^4 - 20*x.^3 + 15*x.^2 - 6*x +1;
delta = [0.1 0.01 0.005 0.0025];

    
x= linspace(1 - delta(1), 1+delta(1),100);

figure(1)
plot(x, y1(x));
hold on;
plot(x, y2(x));
title('grafico y1 e y2 con delta(1)');

x = linspace(1 - delta(2), 1+delta(2),100);
figure(2)
plot(x, y1(x));
hold on;
plot(x, y2(x));
title('grafico y1 e y2 con delta(2)');

x = linspace(1 - delta(3), 1+delta(3),100);
figure(3)
plot(x, y1(x));
hold on;
plot(x, y2(x));
title('grafico y1 e y2 con delta(3)');

x = linspace(1 - delta(4), 1+delta(4),100);
figure(4)
plot(x, y1(x));
hold on;
plot(x, y2(x));
title('grafico y1 e y2 con delta(4)');