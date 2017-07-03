%Construct a bandpass filter
filtertype = 'FIR';  %FIR filter
sampleRate = 500e3;
Fstop1 = 18e3;       %1st stopband
Fpass1 = 20e3;       %start of passband
Fpass2 = 45e3;       %end of passband
Fstop2 = 47e3;       %2nd stopband
Rp = .1;             %Passband ripple
Astop = 80;          %Stopband Attenuation

d = fdesign.bandpass(Fstop1,Fpass1,Fpass2,Fstop2,Astop,Rp,Astop,sampleRate);

FIR = design(d, 'equiripple');
%get the coefficients of the filter
coefficients = coeffs(FIR);
coefficients = coefficients.Numerator;