% Demo of fitting a motor program to an image.

% Parameters
K = 1; % number of unique parses we want to collect
verbose = true; % describe progress and visualize parse?
include_mcmc = false; % run mcmc to estimate local variability?
fast_mode = true; % skip the slow step of fitting strokes to details of the ink?


% if fast_mode
%     fprintf(1,'Fast mode skips the slow step of fitting strokes to details of the ink.\n');
%     warning_mode('Fast mode is for demo purposes only and was not used in paper results.');
% end
% fprintf("Reading\n");

A = imread('Aa.png');

% fprintf("Getting A\n");

img = A(:,:,1);

% fprintf("Logical threshold\n");

img = logical(img);

% fprintf("Motor fit\n");

G = fit_motorprograms(img,K,verbose,include_mcmc,fast_mode);

% fprintf("Display?\n");

vizMP(G.models{1},'motor');






