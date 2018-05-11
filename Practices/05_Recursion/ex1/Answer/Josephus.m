function y = Josephus(n,m)
    if (n==1) 
        y = 1;
    else
        y = mod(m+Josephus(n-1,m),n);
        if (y==0)
            y = n;
        end
    end
end