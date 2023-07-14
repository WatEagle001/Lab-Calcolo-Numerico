function [integrale, I, step, flag] = RefineQuad(a,b,f,formula,toll,maxN)

inter = 1;
iter = 1;
step = toll +1;

switch formula
    case 1 
        [x,w] = trapezi_composta(a,b,inter);
    case 2 
        [x,w] = simpson_composta(a,b,inter);
end

I = w' * f(x);

while iter <= maxN && step > toll
    inter = 2*inter;
    switch formula
    case 1 
        [x,w] = trapezi_composta(a,b,inter);
    case 2 
        [x,w] = simpson_composta(a,b,inter);
    end
    I = [I, w'*f(x)];
    step = abs(I(end) - I(end-1));
end

integrale = I(end);

if step <= toll
    flag = 1;
else 
    flag = 0;
end

end