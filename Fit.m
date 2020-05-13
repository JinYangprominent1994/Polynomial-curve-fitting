function Fit(X, Y_noise, dimension, numberOfData)
% This function can fit data with a polynomail curve without regularizers

    % Initialize vandermonde matrix
    vandermonde = ones(numberOfData, dimension+1);
    temp = zeros(1, dimension);
    
    % Calculate vandermonde matrix
    for i = 0:dimension-1
        temp(dimension - i) = 1;
        poly =  polyval(temp, X);
        vandermonde(:,i+2) = poly;
        temp(dimension - i) = 0;
    end
    vandermonde = vandermonde(:, 2:end);
    
    % Calculate parameters
    theta = flipud(inv(vandermonde' * vandermonde) * vandermonde' * Y_noise);
    
    figure;
     
    temp = linspace(0, 1);
    Y_original = cos(2 * pi * temp);
    
    % draw original data points
    plot(X, Y_noise, 'o');
    hold on;
    
    % draw original sin function curve
    plot(temp, Y_original, 'LineWidth',2);
    hold on;
    
    % draw polynomial fitting curve
    plot(temp, polyval(theta, temp), 'LineWidth',2);
    
    xlabel('x or a');
    ylabel('y or b');
    
    legend('(a,b)','cos','poly');
    
    title(['Dimension = ' num2str(dimension - 1) ', Data = ' num2str(numberOfData)])    
  
end