data = load('ex1data1.txt');
x = data(:, 1); y = data(:, 2);
scatter(x,y,'r.');
hold on;
Theta = LF(x,y);
X = [ones(size(x,1),1),x];
Y = X*Theta;
plot(x,Y,'b');