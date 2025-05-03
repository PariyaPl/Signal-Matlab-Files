%% 2-1) Defining a system as transfer function
clc; clear;

numerator = [1,2];      % s + 2
denominator = [3,4,5];  % 3s^2 + 4s + 5
disp("2-1)");
system1 = tf(numerator,denominator)
disp("----------------------------------");

%% 2-2) Combining systems
disp("2-2)");
system2 = tf([2,3],[1,2,3])

systemsSeries = series(system1,system2)

systemsParallel = parallel(system1,system2)

systemsFeedback = feedback(system1,system2)

disp("----------------------------------");

%% 2-3) System's impulse response and step response
figure(1);

[h,t] = impulse(system1);   % Impulse response
plot(t,h,"color", [0, 0, 0.7] ,"LineWidth", 3);

hold on

[s,t] = step(system1);      % Step response
plot(t,s,"color", [0.9, 0.5, 0.5] ,"LineWidth", 3);

grid on
title("Impulse and Step response")
legend("Impulse response", "Step response")

%% 2-3+) Other option: the folowing codes will plot responses instantly
% (only this way you can't change your plot style or color
figure(2); impulse(system1); hold on;
figure(2); step(system1);

%% 2-4) Systems response to any desired input
figure(3);
t = 0:0.01:3;
x = sin(10*t).*exp(-10*t);
[y,t] = lsim(system1,x,t);   % u,t define the input signal

plot(t,x,"color", [0, 0.6, 0] ,"LineWidth", 3);   % plot input
hold on
plot(t,y,"color", [0.9, 0, 0.5] ,"LineWidth", 3);   % plot output

grid on
title("Impulse and Step response")
legend("x = e^{-10t}Sin(10t)", "y(system output for x)")

%% 2-4) Other option: like before we can plot the output with the folowing code:
figure(4); lsim(system1,x,t);


%% Tamrinat 11,12,13 Fasl2:

num = 1;
den = randi(10, [1 3]);  
systemSoal_11 = tf(num,den)  % defining the system (Soal 11)

figure(5);  

subplot 311   % Impulse response (Soal 12)
[h,t] = impulse(systemSoal_11);   
plot(t,h,"color", [0.7, 0, 0] ,"LineWidth", 3);
grid on
title("Impulse response","color", [0.7, 0, 0])

subplot 312   % Step response (Soal 12)
[s,t] = step(systemSoal_11);      
plot(t,s,"color", [0, 0.7, 0] ,"LineWidth", 3);
grid on
title("Step response","color", [0, 0.7, 0])

subplot 313   % System's response to x=exp(-t).*sin(t) (Soal 13)
t = 0:0.01:10;
x = exp(-t).*sin(t);
[y,t] = lsim(system1,x,t);      
plot(t,y,"color", [0, 0, 0.7] ,"LineWidth", 3);
grid on
title('Response to "e^t Sin(t)"',"color", [0, 0, 0.7])


