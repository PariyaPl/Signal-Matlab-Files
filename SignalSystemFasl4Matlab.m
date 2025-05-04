%% 4-1) Laplace transform
clear; clc;
syms t 
f = sin(t);
F = laplace(f);
disp("4-1)")
disp("laplace transform of Sin(t) is: ")
disp(F)

%% 4-2) Inverse laplace transform
syms s
F = 1/(s^2 + 1);
f = ilaplace(F);
disp("4-2)")
disp("Inverse laplace transform of 1/(s^2 + 1) is: ")
disp(f)

%% 4-3) limit in matlab
syms h n x;
LimX = limit((sin(x+h)-sin(x))/h, h, 0);
disp("4-3)")
disp("The answer to lim((sin(x+h)-sin(x))/h) when h -> 0 is: ")
disp(LimX);

%% 4-4) 1- Differentiation 
disp("4-4)")

syms t a
x = sin(a*t);

dx_dt = diff(x,t);  
disp("For x=sin(a*t), dx/dt is: ")
disp(dx_dt);

d2x_dt2 = diff(x,t,2);
disp("For x=sin(a*t), d^2x/dt^2 is: ")
disp(d2x_dt2);

%% 4-4) 2- Integral

% Defining the signal that we want to calculate its integral:
x = @(t) exp(-t).*sin(t);    % don't forget the dots
disp("The integral of exp(-t).*sin(t) from 0 to pi is: ")
Int_x = integral(x,0,pi);

disp(Int_x);

%% 4-5) Ploting a function's fourier transform Magnitude
Ts = 1/50;
t = 0:Ts:10-Ts;
x = sin(10*2*pi*t) + 2*sin(5*2*pi*t); 

X = fft(x);  % Fourier Transform
X_shift = fftshift(X);

Fs = 1/Ts;   % Sampling frequency
n = length(x);
f = (-n/2:n/2-1)*(Fs/n); % Frequency axis

figure(1);
plot(f, abs(X_shift) ,"color", [0, 0, 0.7] ,"LineWidth", 2);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude of the Fourier Transform');
