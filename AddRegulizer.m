% Fit data through the polynomail curve without and with regularizer

numberOfData = 15;
covariance = 0.2;
% Generate data sample from y = cos(2 * pi * x)
noise = covariance .* randn(numberOfData, 1); 
X = sort(rand(numberOfData, 1)); 
Y_noise = cos(2 * pi * X) + noise;

dimension = 10;

% No regulizer
Fit(X, Y_noise, dimension, numberOfData);

% lambda = 0.01, add regulizer
lambda = 0.001;
FitRegularizer(X, Y_noise, dimension, numberOfData, lambda);

% lambda = 0.01, add regulizer
lambda = 0.1;
FitRegularizer(X, Y_noise, dimension, numberOfData, lambda);

% lambda = 1, add regulizer
lambda = 1;
FitRegularizer(X, Y_noise, dimension, numberOfData, lambda);