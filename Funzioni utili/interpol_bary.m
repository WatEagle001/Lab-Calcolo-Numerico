function t = interpol_bary(x,y,s)
% Input:
%         x,y  vettori (riga) cui si associa il polinomio interpolatore "p_n"
%         s    vettore (colonna!) in cui valutare il polinomio interpolatore
% Output:
%         t    vettore di valutazioni "p_n(s)"

n = length(x);
% Genero vettore dei pesi w_i
w = zeros(size(x));
for i = 1:n
    w(i) = 1./prod([x(i)-[x(1:i-1),x(i+1:n)]]);
end

m = length(s);

% Numeratore per tutti i punti di valutazione
Nt = sum(repmat(w,m,1)./(repmat(s,1,n) - repmat(x,m,1)).*repmat(y,m,1),2);
% Denominatore per tutti i punti di valutazione
Dt = sum(repmat(w,m,1)./(repmat(s,1,n) - repmat(x,m,1)),2);
% Interpolante
t = Nt./Dt;

% Impongo i valori per i nodi inclusi nel vettore di punti di valutazione
[idy,locs] = ismember(x,s);
t(locs(locs~=0)) = y(idy);

end