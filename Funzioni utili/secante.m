function [x,xall,iter] = secante(f,Df, x0,x1,toll,max_iter)

if Df(x0) == 0
    error('Attenzione, Df(x0) = 0');
end

dx = -f(x1)*(x1-x0)/(f(x1)-f(x0));
x = x1 + dx;
iter = 1;
xall(iter) = x;

while(abs(dx) > toll) && (iter < max_iter)
    x0 = x;
    if Df(x0) == 0
        break
    end
    
    dx = -f(x1)*(x1-x0)/(f(x1)-f(x0));
    x = x1 + dx;
    iter = iter +1;
    xall(iter) = x;
end
end
