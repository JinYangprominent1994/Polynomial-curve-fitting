% Fit different number of data through polynomail curve
dimension = 10; 
covariance = 0.2;

% model with 9 dimension and 10 data points
numberOfData = 10; 
noise = covariance .* randn(numberOfData, 1);
X = sort(rand(numberOfData, 1));
Y_noise = cos(2 * pi * X) + noise;

Fit(X, Y_noise, dimension, numberOfData);

% model with 9 dimension and 20 data points
numberOfData = 20; 
noise = covariance .* randn(numberOfData, 1);
X = sort(rand(numberOfData, 1));
Y_noise = cos(2 * pi * X) + noise;

Fit(X, Y_noise, dimension, numberOfData);

% model with 9 dimension and 50 data points
numberOfData = 50; 
noise = covariance .* randn(numberOfData, 1);
X = sort(rand(numberOfData, 1)); 
Y_noise = cos(2 * pi * X) + noise;

Fit(X, Y_noise, dimension, numberOfData);

% model with 9 dimension and 100 data points
numberOfData = 100; 
noise = covariance .* randn(numberOfData, 1);
X = sort(rand(numberOfData, 1));
Y_noise = cos(2 * pi * X) + noise;

Fit(X, Y_noise, dimension, numberOfData);

