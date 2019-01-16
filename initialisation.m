% Run this first
%
clear all;
close all;
clc;

addpath(fullfile(pwd,'CODE'));
foldername = fullfile(pwd,'DATA');
cd(fullfile(pwd,'CODE'));

fnames = dir(fullfile(foldername,'*.tif')); 
fnames = {fnames.name};
fnames(contains(fnames, '._')) = [];

gtnames = fnames(contains(fnames, 'GT'));
fnames(contains(fnames, 'GT')) = [];

fprintf('[INFO] Variables created <fnames> and <gtnames>.\n')

