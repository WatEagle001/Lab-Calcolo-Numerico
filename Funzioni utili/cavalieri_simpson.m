function int = cavalieri_simpson(f,a,b)
int = (b-a)/6 * (f(a) + 4*f((a+b) / 2) + f(b));
end