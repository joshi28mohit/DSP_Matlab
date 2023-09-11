Fs = 44100;
% nBits = 16;
% nChannels = 1;
%  recorder = audiorecorder(Fs, nBits, nChannels);
% 
%  disp('Recording....');
%  record(recorder);
% 
%  recordingDuration = 5;
%  pause(recordingDuration);
% 
%  stop(recorder);
%  disp('Recording Stopped');
% 
% audioData = getaudio.data(recorder);
% 
% filename = 'recorded_audio.wav';
% audiowrite(filename, audioData, Fs);
% disp(['Recorded audio saved as ' filename]);


[s,Fs] = audioread('song.wav');
subplot(331);
plot(s);
title('Audio Signal');

subplot(332)
plot(fft(s));
title('FFT of Audio Signal');

subplot(333)
plot(abs(fft(s)));
title('Absolute of FFT of Audio Signal');
% 
var = s(28800:29280);
subplot(334);
plot(var);
title('Segment of the Audio Signal');

subplot(335);
plot(fft(var));
title('FFT of Segment of the Audio Signal');

subplot(336);
plot(abs(var));
title('Absolute of Segment of the Audio Signal');

subplot(337);
plot(fft(abs(var)));
title('FFT of Absolute value Segment of the Audio Signal');

subplot(336);
plot(abs(fft(var)));
title('Absolute value of FFT of Segment of the Audio Signal');

% Down Sampling
newFS = 20400;

resampledAudio = resample(s,newFS,Fs);

rerecord = 'resampled_audio.wav';
audiowrite(rerecord, resampledAudio, Fs);

disp(['Resampled audio saved as' rerecord]);

[t,Fs] = audioread('resampled_audio.wav');
subplot(337);
plot(t);
title('Re sampled Audio Signal');

% UP Sampling
% newFS = 22400;
% 
% resampledAudio = resample(s,newFS,Fs);
%  
% rerecord = 'resampled_audio.wav';
% audiowrite(rerecord, resampledAudio, newFS);
%  
% disp(['Resampled audio saved as' rerecord]);
% 
% [t,Fs] = audioread('resampled_audio.wav');
% subplot(337);
% plot(t);
% title('Re sampled Audio Signal');


% Upsampling
newFS2 = 60400;

resampledAudio2 = resample(s,newFS2,Fs);

rerecord2 = 'resampled_audio2.wav';
audiowrite(rerecord2, resampledAudio2, Fs);

disp(['Resampled audio saved as' rerecord2]);

[t2,Fs] = audioread('resampled_audio2.wav');
subplot(338);
plot(t2);
title('Re sampled Audio Signal UP');



