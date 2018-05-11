function y = Josephus_NoRecursion(n,m)
    Jewish = 1:n;
    count = 0;
    while (length(Jewish)>1)
        count = mod(count+1,m);
        if (count==0)
            Jewish = Jewish(2:length(Jewish));
        else
            Jewish = [Jewish(2:length(Jewish)),Jewish(1)];
        end
    end
    y = Jewish(1);
end