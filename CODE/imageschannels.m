function imageschannels(RGB)
% IMAGESC THREE CHANNELS OF AN RGB IMAGE.
%

subplot(131)
imagesc(RGB(:,:,1))
subplot(132)
imagesc(RGB(:,:,2))
subplot(133)
imagesc(RGB(:,:,3))

