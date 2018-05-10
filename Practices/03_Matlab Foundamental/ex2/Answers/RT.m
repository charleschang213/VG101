function Y = RT(X)
    Y = sum(abs(diff(X)))+1;
end