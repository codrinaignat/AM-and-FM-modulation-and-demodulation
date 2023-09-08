%Pasul 1
fs = 1001; 	% frecventa esantioanelor (Hz)
t = (0:1/fs:1000)';	%setarea bazei de timp – 100s
fc = 300;
x = sin(2*pi*t);

%Pasul 2
ydouble = ammod(x,fc,fs);
ysingle = ssbmod(x,fc,fs);
sa = dsp.SpectrumAnalyzer('SampleRate',fs, ...
    'PlotAsTwoSidedSpectrum',false, ...
    'YLimits',[-60 80]);
step(sa,ydouble)
%step(sa,ysingle)