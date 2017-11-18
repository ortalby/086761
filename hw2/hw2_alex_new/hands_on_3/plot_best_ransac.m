function [  ] = plot_best_ransac( best,inliers_output,outliers_output,match_manual,threshold,f1,f2 )

   p = best.p;
   p1 = best.p1;
   p2 = best.p2;
   
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
   

best_ransac_plot = figure(6);
title('RANSAC algorithm');
grid on;
    fun = @(x) p(1)*x+p(2);
    fplot(fun,[-2000 2000]);
    hold on;
    plot(x_dist_1,y_dist_1,'r*');
    hold on;
    plot(x_dist_2,y_dist_2,'r*');
    axis equal;
    
    alpha = atan2(y_dist_2-y_dist_1,x_dist_2-x_dist_1);
    threshold = abs(threshold/cos(alpha));
    
    fun_up = @(x) p(1)*x+p(2)+threshold;
    fun_down = @(x) p(1)*x+p(2)-threshold;
    fplot(fun_up,[0 1000],'r--');
    fplot(fun_down,[0 1000],'r--');
    
    % plot inliers and outliers
    if (inliers_output(1)~=0)
        
        for j=1:length(inliers_output)
           point_f1 = match_manual(1,inliers_output(j));
           point_f2 = match_manual(2,inliers_output(j));

           x_dist = f2(1,point_f2)-f1(1,point_f1);
           y_dist = f2(2,point_f2)-f1(2,point_f1); 

           hold on;
           plot(x_dist,y_dist,'bo');       
        end
    end
    
    
    if (outliers_output(1)~=0)   
        for j=1:length(outliers_output)
           point_f1 = match_manual(1,j);
           point_f2 = match_manual(2,j);

           x_dist = f2(1,point_f2)-f1(1,point_f1);
           y_dist = f2(2,point_f2)-f1(2,point_f1); 

           hold on;
           plot(x_dist,y_dist,'ko');       
        end
    end
    
    

end

