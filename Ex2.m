%pasul 1
fs = 100; % frecventa esantioanelor (Hz)
ts = 1/fs; % perioada esantioanelor (s)
fd = 10; % deviatia de frecventa (Hz)
t = (0:ts:0.5-ts)';
x = sin(2*pi*4*t);

%pasul 2
MOD = comm.FMModulator('SampleRate',fs,'FrequencyDeviation',fd);
y = step(MOD,x);
figure(1)
plot(t,[x real(y)])
legend('Senmal de intrare','Semnal modulat FM')
xlabel('Timp (s)')
ylabel('Amplitudine')

%pasul3
DEMOD = comm.FMDemodulator('SampleRate',fs,'FrequencyDeviation',fd);
z = step(DEMOD,y);
figure(2)
plot(t,x,'r',t,z,'ks')
legend('Senmal de intrare','Semnal demodulat FM')
xlabel('Timp (s)')
ylabel('Amplitudine')