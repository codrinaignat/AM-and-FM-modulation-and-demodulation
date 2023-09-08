fs = 1e3;              % frecventa esantioanelor (Hz)
ts = 1/fs;             % perioada esantioanelor (s)
fd = 50;               % deviatia de frecventa (Hz)
t = (0:ts:1.6-ts)';
x = sin(2*pi*4*t);
MOD = comm.FMModulator('SampleRate',fs,'FrequencyDeviation',fd);
y = step(MOD,x);
plot(t,[x real(y)])
legend('Semnal de intrare','Semnal modulat FM')
xlabel('Timp (s)')
ylabel('Amplitudine')
SA = dsp.SpectrumAnalyzer('SampleRate',fs,'ShowLegend',true);
step(SA,[y])