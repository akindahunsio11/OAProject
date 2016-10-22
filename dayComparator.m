function [day1toDay2] = dayComparator(subjectID, day1, day2)

% This function uses the input subjectID, day1,day2 to 
% return the output day1toDay2 which shows the subjects that
% increased in weight between two days.
%




DayDiff=day2-day1;
%finds the difference between two days to see if value increase on the 
%later day 
array2=[subjectID,DayDiff];
% makes a matrix of subjectID and DayDiff
for i= 1:length(subjectID)
    if array2(i,2)>0
        IncreasedSubjectID1(i,1)= array2(i,1:1);
    end
end
%finds all subjectID that had an increase and turns other subjectID into 0
day1toDay2=IncreasedSubjectID1(IncreasedSubjectID1~=0);
%pulls all subjectID that had an increase between days into output varible
end
