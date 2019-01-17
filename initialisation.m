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
fnames(contains(fnames, 'GT')) = [];

gtnames = dir(fullfile(foldername,'*.mat'));
gtnames = {gtnames.name};
fnames(contains(fnames, '._')) = [];

fprintf('[INFO] Variables created <fnames> and <gtnames>.\n')

