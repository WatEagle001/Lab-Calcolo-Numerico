function [x,w] = trapezi_composta(a,b,N)

h = (b-a)/N;

x = a:h:b;
x = x';

w = ones(N+1,1);

w(1) = 1/2;
w(end) = 1/2;

w = w*h;



end