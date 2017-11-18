function distance = point_to_line(pt, v1, v2)
      
    if length(pt)==3
        a = v1 - v2;
        b = pt - v2;
        distance = norm(cross(a,b)) / norm(a);
    else
        % if the points are 2D, add 3rd dimension
        pt(end+1) = 1;
        v1(end+1) = 1;
        v2(end+1) = 1; 
        
        a = v1 - v2;
        b = pt - v2;
        distance = norm(cross(a,b)) / norm(a);
        
        
    end
      
end