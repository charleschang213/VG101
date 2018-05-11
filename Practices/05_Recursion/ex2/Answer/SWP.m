function y = SWP(n,m)
    if (n<0)
        y = 0;
    elseif (n==0)
        y = 1;
    else
        y = 0;
        for i = 1:m
            y = y+SWP(n-i,m);
        end
    end
end