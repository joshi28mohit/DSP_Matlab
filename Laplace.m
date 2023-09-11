% function l = Laplace(x)
    syms t s;
     x=sin(t);
    y=exp(-s.*t);
    k=int(x.*y,t,0,inf);
    pretty(k);
    pretty(laplace(x));
% end