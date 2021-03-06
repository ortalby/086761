function [ inliers_output,outliers_output ] = ransac( match_manual,f1,f2 )

% go over random points couples for #iteration of times

iterations = 500;
threshold = 5;
polynom_deg = 1;
maximum_support=0;

plot_ransac = 0;
draw_support = plot_ransac;

plot_best = 1;
   
for i=1:iterations
   % choose random 2 matches from the "matches"
   p1 = randi([1 length(match_manual(1,:))],1,1);
   p2 = randi([1 length(match_manual(1,:))],1,1);
   
   % the index of matched point from image 1
   point_11 = match_manual(1,p1);
   point_12 = match_manual(2,p1);
   
   % the index of matched point from image 2
   point_21 = match_manual(1,p2);
   point_22 = match_manual(2,p2);
   
   % the x distance between matched points 
   x_dist_1 = f2(1,point_12)-f1(1,point_11);
   x_dist_2 = f2(1,point_22)-f1(1,point_22);
   
   % the y distance between matched points 
   y_dist_1 = f2(2,point_21)-f1(2,point_21);
   y_dist_2 = f2(2,point_22)-f1(2,point_22);
   
   x_y_point_1 = [x_dist_1 y_dist_1];
   x_y_point_2 = [x_dist_2 y_dist_2];
   
   
   % compute the "translation vector"
   p = polyfit([x_dist_1 x_dist_2],[y_dist_1 y_dist_2],polynom_deg);
   
   if (plot_ransac)
       figure_ransac = plot_single_ransac(p, x_dist_1, x_dist_2, y_dist_1, y_dist_2, threshold, match_manual,f1,f2); 
   else
       figure_ransac = 0;
   end
   % how many points lay in the vicinity of this line.
   support = find_support(x_y_point_1,x_y_point_2,match_manual,f1,f2,threshold,p1,p2,figure_ransac,draw_support);
    
   [inliers, outliers, support] = find_support(x_y_point_1,x_y_point_2,match_manual,f1,f2,threshold,p1,p2,figure_ransac,draw_support);
    
   if (support > maximum_support)
       maximum_support = support;
       inliers_output = inliers;
       outliers_output = outliers;
       best.p1 = p1;
       best.p2 = p2;
       best.p = p;
   end 
end

if (plot_best)
    plot_best_ransac(best,inliers_output,outliers_output,match_manual,threshold,f1,f2);
end



end

