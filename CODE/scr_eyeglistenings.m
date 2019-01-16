% Script
%

%% LOAD 

idx = 2;
[X, xatt] = readParseInput(fullfile(foldername, fnames{idx}));
[BB, batt] = readParseInput(fullfile(foldername, gtnames{idx}));
BB(:,:,4) = [];

GT = getEyeGroundTruth(BB);
C2 = imgaussfilt(X(:,:,2));

%% 

[Gxx, Gyy, Gxy] = imhessian(C2);
DH = imDoH(Gxx, Gyy, Gxy);

se = strel('disk', 2,4);
%se = ones(5);
%B = imclose(imbinarize(DH,'adaptive'), se);
B = imdilate(imbinarize(DH,'adaptive'), [0 1 0; 1 1 1; 0 1 0]);
L = bwlabeln(B);

imagesc(B);

