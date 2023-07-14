function s = norme_varie(V,p)
[n1,n2] = size(V);

switch p
    case 1
        if (n1 == 1 )|| (n2 == 1)
            %norma vettoriale
            s = sum(abs(V));
        else
            %norma matriciale
            s = max(sum(abs(V,1)));
            
        end
    case 2
        if (n1 == 1 )|| (n2 == 1)
            s = sqrt(sum(abs(V)^2));
        else
            e = eig(x' * x)
            s = sqrt(max(abs(e)));
        end
    case Inf
        if (n1 == 1 )|| (n2 == 1)
            s = max(abs(V));
        else
            s = max(sum(abs(V,2)));
        end
end


end