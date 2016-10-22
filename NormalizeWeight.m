
function [normDay1mean, normDay2mean, normDay3mean] = NormalizeWeight(Weight, Day1, Day2, Day3)
% This function inputs the subjects weight, day1, day2 and day3 results 
% to create the output variables normDay1mean, normDay2mean, normDay3mean.
% The output variables are the means of the normilized weight throught each
% day.

normDay1mean = mean(Day1./Weight);
normDay2mean = mean(Day2./Weight);
normDay3mean = mean(Day3./Weight);

end

