function sistema_perturbato(A,b,Aap, bap)
% AAp = A perturbato
% bap = b perturbato

x = A\b;
xap = Aap\bap;
k = norm(A) * norm(A');
delta_a = norm(A - Aap);
delta_b = norm(bap - b);
delta_x = norm(x - xap);

if k * (norm(delta_a) / norm(A)) >1
    error('condizionamento > 1')
end

err = k/(1- k* (norm(delta_a) / norm(A))) * ((norm(delta_a)/norm(A)) + norm(delta_b)/norm(b));

ris = norm(delta_x) / norm(x);

fprintf('errore nel sistema: %1.2f', err);
fprintf('lato sinistro della disuguaglianza: %1.2f',ris);
end
