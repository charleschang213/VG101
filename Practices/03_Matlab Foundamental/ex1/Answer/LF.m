function Theta = LF(x,y)
    X = [ones(size(x,1),1),x];
    Theta = pinv(X'*X)*X'*y;
end