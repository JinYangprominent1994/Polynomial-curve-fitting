% Fit data through different dimensions of polynomail curve

numberOfData = 15;
covariance = 0.2;
% Generate data sample from y = cos(2 * pi * x) with Gaussian noise
noise = covariance .* randn(numberOfData, 1);
X = sort(rand(numberOfData, 1));
Y_noise = cos(2 * pi * X) + noise;

% polynomial function with dimesion 1
dimension = 2;
Fit(X, Y_noise, dimension, numberOfData);

% polynomial function with dimesion 2
dimension = 3;
Fit(X, Y_noise, dimension, numberOfData);

% polynomial function with dimesion 3
dimension = 4; 
Fit(X, Y_noise, dimension, numberOfData);

% polynomial function with dimesion 5
dimension = 6; 
Fit(X, Y_noise, dimension, numberOfData);

% polynomial function with dimesion 9
dimension = 10;
Fit(X, Y_noise, dimension, numberOfData);
