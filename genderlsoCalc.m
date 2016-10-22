 
function [femaleIsoIndMeans, maleIsoIndMeans, femaleGroupIsoMean, maleGroupIsoMean]=genderlsoCalc(Gender,Day1, Day2, Day3)

% This function generate four means. Two means contaning one number 
% that repasecnt the mean of all male and another that repasecnt all
% female. There output varable name is maleIsoIndMeans and femaleIsoIndMeans.
% The other output, maleGroupIsoMean, is the mean of each male subjects and the
% last output, femaleGroupIsoMean, is each female subject. This function uses 
% the inputs Gender,Day1, Day2, Day3.
%
MEAN1=[(Day1+Day2+Day3)/3];
% creates a variable for the mean of the three days  
for i= 1:length(Gender)
    if (Gender{i,1}=='F')
        FemaleMeans1(i,1)= MEAN1(i,1);
        femaleIsoIndMeans=FemaleMeans1(FemaleMeans1~=0);
    else
        MaleMeans1(i,1)= MEAN1(i,1);
        maleIsoIndMeans=MaleMeans1(MaleMeans1~=0);
    end
end
%sort means by gender into to different variables

femaleGroupIsoMean = mean(femaleIsoIndMeans);

maleGroupIsoMean = mean(maleIsoIndMeans);

%makes means for all female values and male values

end
 
   