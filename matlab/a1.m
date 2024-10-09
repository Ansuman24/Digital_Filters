clc;
clear all;
close all;

%LPF FIR
Fpass=150;
Fstop=200;
Apass=1;
Astop=70;
fs=1e3;

d=designfilt('lowpassfir',....
  'PassbandFrequency',Fpass,'StopbandFrequency',Fstop,... 
  'PassbandRipple',Apass,'StopbandAttenuation',Astop,...
  'DesignMethod','equiripple','SampleRate',fs);

fvtool(d)


%LPF IIR
Fpass1=150;
Fstop1=200;
Apass1=0.5;
Astop1=70;
fs1=1e3;

d1=designfilt('lowpassiir',....
  'PassbandFrequency',Fpass1,'StopbandFrequency',Fstop1,... 
  'PassbandRipple',Apass1,'StopbandAttenuation',Astop1,...
  'DesignMethod','butter','SampleRate',fs1);

fvtool(d1)

%HPF FIR
Fstop = 350;
Fpass = 400;
Astop = 65;
Apass = 0.5;
Fs = 1e3;

d = designfilt('highpassfir','StopbandFrequency',Fstop, ...
  'PassbandFrequency',Fpass,'StopbandAttenuation',Astop, ...
  'PassbandRipple',Apass,'SampleRate',Fs,'DesignMethod','equiripple');

fvtool(d)



%BPF FIR
Fstop1 = 150;
Fpass1 = 200;
Fpass2 = 300;
Fstop2 = 350;
Astop1 = 65;
Apass  = 0.5;
Astop2 = 65;
Fs = 1e3;

d = designfilt('bandpassfir', ...
  'StopbandFrequency1',Fstop1,'PassbandFrequency1', Fpass1, ...
  'PassbandFrequency2',Fpass2,'StopbandFrequency2', Fstop2, ...
  'StopbandAttenuation1',Astop1,'PassbandRipple', Apass, ...
  'StopbandAttenuation2',Astop2, ...
  'DesignMethod','equiripple','SampleRate',Fs);

fvtool(d)



%BSF FIR
Fpass1 = 100;
Fstop1 = 150;
Fstop2 = 350;
Fpass2 = 400;
Apass1 = 0.5;
Astop  = 65;
Apass2 = 0.5;
Fs = 1e3;

d = designfilt('bandstopfir', ...
  'PassbandFrequency1',Fpass1,'StopbandFrequency1',Fstop1, ...
  'StopbandFrequency2',Fstop2,'PassbandFrequency2',Fpass2, ...
  'PassbandRipple1',Apass1,'StopbandAttenuation',Astop, ...
  'PassbandRipple2', Apass2, ...
  'DesignMethod','equiripple','SampleRate', Fs);

fvtool(d)
