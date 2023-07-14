function [x,xall,iter] = newton_mod(f,Df,m,x0,toll,max_iter)

if Df(x0) == 0
    error('Attenzione, Df(x0) = 0');
end

dx = -m *(f(x0)/Df(x0));
x = x0 + dx;
iter = 1;
xall(iter) = x;

while(abs(dx) > toll) && (iter < max_iter)
    x0 = x;
    if Df(x0) == 0
        break
    end
    
    dx = -m *(f(x0) / Df(x0));
    x = x0 + dx;
    iter = iter +1;
    xall(iter) = x;
end
end
