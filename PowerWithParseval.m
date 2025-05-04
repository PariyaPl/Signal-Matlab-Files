function Power = PowerWithParseval(FourierCoefficients)
% This function gets the fourier series coefficients of a descrete 
% signal as input and calcutes the signal's power based on them,
% using the "Parseval identity"
Power = sum(FourierCoefficients.^2);
end
