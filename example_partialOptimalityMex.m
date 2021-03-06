% this example runs partialOptimalityMex on a simple binary energy of 5 variables
% y1 - y2 + y1 * y5 - 10 * y1 * y3 - y3 * y4 + y3 * y5  

dataCost = [0 0 0 0 0; 1 -1 0 0 0];

neighbors = sparse([1; 1; 3; 3], [5; 3; 4; 5], [1; 10; 1; 1], 5, 5);

labels = partialOptimalityMex(dataCost, neighbors);

% correct results: labels = [1; 2; 1; 1; 1];
