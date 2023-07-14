function der = rapp_inc_sinistro(f,x0,h)

der = (f(x0) - f(x0-h)) / h;

end