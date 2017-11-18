function [ match_manual ] = find_manual_matches( d1,d2,manual_threshold )

for i1=1:length(d1(1,:))
    for i2=1:length(d2(1,:))
        eucl_dist(i1,i2) = sqrt(sum((d1(:,i1) - d2(:,i2)).^ 2));  
    end
end

% go over again, check for every row, that the minimum value
% times manual_threshold is lower than any other value


match_index = 1;
clearvars match_manual

for i1=1:length(d1(1,:))
    [column_sorted,indexes] = sort(eucl_dist(i1,:));
    if(column_sorted(1)*manual_threshold<column_sorted(2))
       match_manual(:,match_index) = [i1; indexes(1)];
       match_index = match_index+1;
    end
end

end

