%addpath('.')
clear all;
close all;

file = 'c3bc020b.wav';
[x, fs] = audioread(file);
len = length(x);
result = vad1(x,fs,len);
%result = result';
%display(result)
figure(1);
% subplot(2,1,1),plot(x),title('Signal'),axis([1 len min(x) max(x)]);
% subplot(2,1,2),plot(result),title('VAD'),axis([1 len 0 1.2]);

t = (1:length(x))./16000;
sound(x,fs);
p1 = plot(t, x);
hold on
p2 = plot(t, result*0.3, 'r-') ;
% p3 = plot(t(1:length(result)), result*0.15, 'r');
ylim([-0.3 0.6]);
xlim([0 t(end)]);