function [gabor_response] = gabor_response_span(signal,freqs,spans,fs)
% fs = 1200; %sampling freq of data
% span = 5 ; %adjusts width of gabor

% assumes that dimensions of signal are either be trials X time X electrodes
% or time X electrodes
% freqs: frequencies at which gabor is computed, in Hz

% turn signal into GPU array
% signal = gpuArray(signal);

if (numel(size(signal)) == 3)
    [numtrials,siglength,numelecs] = size(signal);
    gabor_response = zeros(numel(freqs),numtrials,siglength,numelecs);
else
    [siglength,numelecs] = size(signal);
    gabor_response = zeros(numel(freqs),siglength,numelecs);
end


for f = 1:numel(freqs)
    span = spans(f);
    sigma = span/(freqs(f)); %adjust width of gaussian according to span
%     t = -span/(2*freqs(f)):1/fs:span/(2*freqs(f));
%     t = -(4*span/freqs(f))+(rem(4*span/freqs(f),1/fs)):(1/fs):(4*span/freqs(f))-(rem(4*span/freqs(f),1/fs));
   t = -(3.3*sigma)+(rem(3.3*sigma,1/fs)):(1/fs):(3.3*sigma)-(rem(3.3*sigma,1/fs));
   %last line added by ravi chacko at 6/30/14 (as opposed to line 24)

    gabor = exp(-(t.^2)/(2*sigma^2)).*exp(1i*2*pi*freqs(f)*t)./(sqrt(2*pi)*sigma);
    
    
    if (numel(size(signal)) == 3)
%         gpu_conj = gpuArray(gabor);
        gpu_conj = gabor;
        gabor_response(f,:,:,:) = convn(signal,gpu_conj,'same');
        
    else
%         gpu_conj = gpuArray(gabor);
        gpu_conj = gabor;
        gabor_response(f,:,:) = conv2(gpu_conj,1,signal,'same');

        var_info = whos('signal');
        
        if var_info.bytes > 1e9 
            half_chan_point = round(size(signal,2)/2);
            gabor_response(f,:,1:half_chan_point) = conv2(gpu_conj,1,signal(:,1:half_chan_point),'same');
            gabor_response(f,:,half_chan_point+1:end) = conv2(gpu_conj,1,signal(:,half_chan_point+1:end),'same');

        else
            
            gabor_response(f,:,:) =conv2(gpu_conj,1,signal,'same');
        end
        display('used GPU');
    end
    disp(f)
    pause(1e-10); %so you can ctrl c out of this
end

% gabor_response = gather(gabor_response);
%gpuDevice;
%gpudev = gpuDevice;
%reset(gpudev);
% reset(gpuDevice);
%gpuDevice;

end