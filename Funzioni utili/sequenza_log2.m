function [x] = sequenza_log2(x1,N)

x(1) = x1;
for i = 1:N-1
    x(i+1) = 1./2^(i)* (sqrt(1 + (x(i) / 2^(i-1)))-1);
end
end
