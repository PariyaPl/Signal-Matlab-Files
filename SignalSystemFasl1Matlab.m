%% 1-1) Ploting continuous time signals:
clear; clc; figure(1)
t = linspace(-3*pi,3*pi,1000);

subplot(2,2,1)
plot(t,sin(t),"color", [0, 0, 0.7] ,"LineWidth", 3);
hold on;
plot(t,cos(t),"color", [0.5, 0.5, 1] ,"LineWidth", 3);
grid on;
xlabel("-----  t  -----");
ylabel("----- Sin(t) & Cos(t) -----")
legend("Sin(t)", "Cos(t)");

subplot(2,2,2)
plot(t,sinc(t),"color", [0.3, 0.5, 0.5] ,"LineWidth", 3);
xlabel("-----  t  -----");
ylabel("----- Sinc(t) -----");

%% 1-2) Plotting discrete time signals:
n = -3*pi : pi/8 : 3*pi;

subplot(2,2,3)
stem(n,sin(n),"color", [0, 0, 0.7] ,"LineWidth", 2);
hold on;
stem(n,cos(n),"color", [0.5, 0.5, 1] ,"LineWidth", 2);
xlabel("-----  n  -----");
ylabel("----- Sin(n) & Cos(n) -----")
legend("Sin(n)", "Cos(n)");

subplot(2,2,4)
stem(n,sinc(n),"color", [0.3, 0.5, 0.5] ,"LineWidth", 2);
xlabel("-----  n  -----");
ylabel("----- Sinc(n) -----");
%% 1-3) Calculating the signal's average value (discrete)
n = -3*pi : pi/8 : 3*pi;
f = sinc(n);
f_avg = mean(f);
disp("1-3)");
disp("Average of the discrete sinc(n) signal from -3pi to 3pi is ((  "+f_avg+"  ))");
disp("-------------------");

%% 1-4) Calculating the signal's energy and power (discrete)
n = -3*pi : pi/8 : 3*pi;
f = sinc(n);
f_enegry = sum(f.*f);
disp("1-4)");
disp("The discrete sinc(n) signal's energy from -3pi to 3pi is ((  "+f_enegry+"  ))");
disp("-------------------");
f_power = f_enegry / length(f);
disp("The discrete sinc(n) signal's power from -3pi to 3pi is ((  "+f_power+"  ))");
disp("-------------------");

%% 1-5) Defining and plotting a piecewise function
figure(2)
t = linspace(-1,2,1000);
x = (t <= 1).*(2*t) + (t > 1)*(2);
%subplot(3,2,5)
plot(t,x,"color", [0.5, 0.7, 0.5] ,"LineWidth", 7);
grid on;
