function [ figure_ransac ] = plot_single_ransac( p, x_dist_1, x_dist_2, y_dist_1, y_dist_2, threshold,match_manual,f1,f2)

    % plot the line between 2 chosen points
    fun = @(x) p(1)*x+p(2);
    figure_ransac = figure(5);
    fplot(fun,[-2000 2000]);
    hold on;
    plot(x_dist_1,y_dist_1,'r*');
    hold on;
    plot(x_dist_2,y_dist_2,'r*');
    axis equal;
    % find the threshold for drawing - depends on the alpha angle
    
    alpha = atan2(y_dist_2-y_dist_1,x_dist_2-x_dist_1);
    threshold = abs(threshold/cos(alpha));
    
    fun_up = @(x) p(1)*x+p(2)+threshold;
    fun_down = @(x) p(1)*x+p(2)-threshold;
    fplot(fun_up,[0 1000],'r--');
    fplot(fun_down,[0 1000],'r--');
    
    % plot other points as well
    for i=1:length(match_manual(1,:))
       point_1_plot = match_manual(1,i);
       point_2_plot = match_manual(2,i);

       x_dist = f2(1,point_2_plot)-f1(1,point_1_plot);
       y_dist = f2(2,point_2_plot)-f1(2,point_1_plot);

       hold on;
       plot(x_dist,y_dist,'.b');
    end
    
    
end

