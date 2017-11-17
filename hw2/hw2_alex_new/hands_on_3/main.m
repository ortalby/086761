
%% parameters

clear all

% for detection
peak_thresh = 5;
edge_thresh = 8;
% for matching
match_threshold = 5;

vizualize_fd = 0;
vizualize_matches=1;


%%

% read the images, extract features and descriptors

I1 = imread('Image1.jpg');
I1 = imresize(I1,0.3); % resize the image
I_s1 = single(rgb2gray(I1));
[f1,d1] = vl_sift(I_s1,'PeakThresh', peak_thresh,'edgethresh', edge_thresh) ; % extract features and descriptors

I2 = imread('Image2.jpg');
I2 = imresize(I2,0.3); % resize the image
I_s2 = single(rgb2gray(I2));
[f2,d2] = vl_sift(I_s2,'PeakThresh', peak_thresh,'edgethresh', edge_thresh) ; % extract features and descriptors

fprintf('Peak Thr: %2.0f ;\nEdge Thr.: 2.0f\n',peak_thresh, edge_thresh);
fprintf('Features found in Image 1: %2.0f\n',length(f1));
fprintf('Features found in Image 1: %2.0f\n',length(f2));
fprintf('\n');


%%
% vizualise 50 random frames for each image
draw_fd


%%
% find the matching features
[matches, scores] = vl_ubcmatch(d1,d2,match_threshold) ;
fprintf('Matches found : %2.0f\n',length(matches));
fprintf('\n\n\n');
for i=1:length(matches)
   f1_matched(:,i) = f1(:,matches(1,i));
   f2_matched(:,i) = f2(:,matches(2,i));
   d1_matched(:,i) = d1(:,matches(1,i));
   d2_matched(:,i) = d2(:,matches(2,i)); 
end

draw_matches

% choose the matches with smallest scores
[scores_sorted,indexes] = sort(scores);




