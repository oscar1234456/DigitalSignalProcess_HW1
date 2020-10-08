%Homework: P-2.28 mobile radio (sinusoid)
%student name: 陳泰元 110616038

x = -100:100;
c= 3 * 1e8; %the speed of light

d1 = sqrt(x.*x+ 1e6 ); %direct-path
d2 = sqrt((x - 55).*(x - 55) + 1e6)+55; %reflected-path

t1 = d1./c; %directed-path time delay 
t2 = d2./c; %reflected-path time delay

s1 = 1*exp(j*300*1e6*pi*t1) %X1 = 1; Signal(directed-path)
s2 = 1*exp(j*300*1e6*pi*t2) %X2 = 1; Signal(reflected-path)
r_signal = s1+s2; %phasor addition (received signal)
%draw the plot
plot(x, abs(r_signal)); grid on,
xlabel('Position(x)');
ylabel('Signal Strength');
