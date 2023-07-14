function [x,xall,iter] = puntofisso(g,x0,tol,max_iter)
iter = 1;
x = g(x0);
xall(iter)= x;

while (abs(x-x0) > tol) && (iter < max_iter)
    x0 = x;
    x = g(x0);
    iter = iter+1;
    xall(iter) = x;
end
end