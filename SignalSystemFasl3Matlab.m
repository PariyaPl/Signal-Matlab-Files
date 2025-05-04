%% 3-1) 1- if
clc; clear;

z = input("Enter a complex number:   ");
if abs(z)==1 
    disp("Your number is on the unit circle");
elseif abs(z) < 1
    disp("Your number is in the unit circle");
else
    disp("Your number is out of the unit circle");
end

%% 3-1) 2- switch
z = input("Enter a complex number:   ");
switch angle(z) 
    case 0
        disp("Your number is on the right side of the Real axis");
    case pi
        disp("Your number is on the left side of the Real axis");
    case pi/2
        disp("Your number is on the Upper side of the Imaginary axis");
    case 3*pi/2
        disp("Your number is on the Upper side of the Imaginary axis");
    otherwise
        disp("Your number is not on the Real or Imaginary axis");
end

%% 3-2) 1- for
disp("Enter the fourier series coefficients of a signal with N=10");
Power = 0;
for n = 1:10
    disp("---------------------------------------");
    c = input("Enter coefficient no." + n + ":   ");
    Power = Power + c^2;
end
disp("The signal's power is:  "+Power);

%% 
disp("Enter the fourier series coefficients of a signal with N=10");
Power = 0;
n = 1;
c = 0;
while n < 11
    disp("---------------------------------------");
    c = input("Enter coefficient no." + n + ":   ");
    Power = Power + c^2;
    n = n+1;
end
disp("The signal's power is:  "+Power);

%% 3-2) 2- while
disp("Enter the fourier series coefficients of a descrete signal ");
n = 1;
c = 0;
Power = 0;
while true
    disp("---------------------------------------");
    disp("Enter 'e' if u want to end");
    c = input("Or enter coefficient no." + n + ":   ", "s");
    if (c == 'e')
        break
    end
    Power = Power + (str2double(c))^2;
    n = n + 1;
end
disp("The signal's power is:  " + Power);
