% Demo of fitting a motor program to an image.

% Parameters
K = 1; % number of unique parses we want to collect
verbose = true; % describe progress and visualize parse?
include_mcmc = false; % run mcmc to estimate local variability?
fast_mode = true; % skip the slow step of fitting strokes to details of the ink?

if fast_mode
    fprintf(1,'Fast mode skips the slow step of fitting strokes to details of the ink.\n');
    warning_mode('Fast mode is for demo purposes only and was not used in paper results.');
end

A = imread('Aa.png');
img = A(:,:,1);
img = logical(img);
G = fit_motorprograms(img,K,verbose,include_mcmc,fast_mode);
vizMP(G.models{1},'motor');