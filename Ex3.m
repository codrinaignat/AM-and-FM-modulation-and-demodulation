%Pasul 1
m = 1; %indexul de modulatie, 0≤m≤1
Am = 5; % amplitudinea semnalului modulator
fa = 250; % frecventa semnalului modulator (Hz)
ta=1/fa; %perioada semnalului modulator
t=0:ta/999:6*ta;
ym = Am*sin(2*pi*fa*t);
%semnalul modulator
figure(1)
subplot(3,1,1);
plot(t,ym)
title('Semnalul modulator')

%Pasul 2
Ac=Am/m; %amplitudinea semnalului purtator
fc=fa*20; %frecventa semnalului purtator
tc=1/fc; %perioada semnalului purtator
yc=Ac*sin(2*pi*fc*t);
subplot(3,1,2)
plot(t,yc)
grid on;
title('Semnalul purtator')

%Pasul 3
y=Ac*(1+m*sin(2*pi*fa*t)).*sin(2*pi*fc*t);
subplot(3,1,3)
plot(t,y)
title('Semnalul modulat AM')
grid on;
