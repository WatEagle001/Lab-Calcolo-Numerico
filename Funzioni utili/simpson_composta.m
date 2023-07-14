function [x,w] = simpson_composta(a,b,N)

h = (b-a)/(2*N); 
% nodi di integrazione
x = a:h:b; x=x'; 
% pesi di integrazione
w = zeros(2*N+1,1);
% primo e ultimo peso
w(1) = h/3 ; 
w(end) = h/3;
% pesi di indice pari
ind_pari = 2:2:2*N ;
w(ind_pari) = 4*h/3;
% pesi di indice dispari
ind_disp = 3:2:2*N-1;
w(ind_disp) = 2*h/3;
end