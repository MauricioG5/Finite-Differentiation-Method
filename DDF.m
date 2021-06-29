function q= DDF(x,y,num,e)
l=e+1;
if num > 2
    n=num-1;
    p=e+num-1;
    resta=x(e)-x(p);
    if resta==0
        resta=0.001;
    end
    q=(DDF(x,y,n,e)-DDF(x,y,n,l))/resta;
else
    q=(y(l)-y(e))/(x(l)-x(e));
end
end
