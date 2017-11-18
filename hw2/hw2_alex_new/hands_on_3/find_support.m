function [ inliers, outliers,support ] = find_support( x_y_point_1,x_y_point_2,match_manual,f1,f2,threshold,p1,p2,figure_ransac,draw_support )

    % foreach other matched couple, find the translation vector
    % and find it's distance from the line.
    % if smaller than threshold -> inlier, add to support
    
    % p1, p2 - indexes of 2 points that create the line
    % f1, f2 - contain feature descriptions of all the found features
    % x_y_point_1, x_y_point_2 - XY coordinates of the point
    
    inliers_idx = 1;
    outliers_idx=1;
    support = 0;
    
    inliers = 0;
    outliers = 0;
    
    for i=1:length(match_manual(1,:))
       if (i==p1 || i==p2)
           continue ; % we don't want to count the same points
       end
       
       point_f1 = match_manual(1,i);
       point_f2 = match_manual(2,i);
       
       x_dist = f2(1,point_f2)-f1(1,point_f1);
       y_dist = f2(2,point_f2)-f1(2,point_f1); 
       
       x_y_point_target = [x_dist,y_dist];
       
       distance_from_line = point_to_line(x_y_point_target,x_y_point_1,x_y_point_2);
        
       if (distance_from_line < threshold)
           support=support+1;
           inliers(inliers_idx) = i;
           inliers_idx = inliers_idx +1;
           
           if (draw_support)
               figure_ransac;
               plot(x_dist,y_dist,'bo');
           end
           
       else
           outliers(outliers_idx) = i;
           outliers_idx = outliers_idx +1;           
       end 
    end



end

