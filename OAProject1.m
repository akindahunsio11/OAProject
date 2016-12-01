% Kunle Akindahunsi
% 
% Code Project
% Due: Dec 1
%
% The goal of this code is to take multiple subjects' gender,age,weight,
% height,and activity level data from an excel file to calculate each
% subjects BMI, BMI classification, recommended weight range, calories
% needed to maintain and loss 1 or 2 pounds. This code also calculates the 
% amount of calories burned for different activities depending on times in 
% minutes.   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% The function importfile1 is used to import the ProjectEx1.xlsx file from
% Microsoft excel. This will create variable names for
% Subject, Gender, Age, Weight, Height, and ActivityLevel.
[Subject,Gender,Age,Weight,Height,ActivityLevel]=importfile1('ProjectEx1.xlsx')

%The function BMIGroup uses the weight and height of each subject to
%determine each subject's BMI, BMI classification, and a high and low range
%for recommended weight.
[BMIClass,BMI,MaxRecommendedWeight,MinRecommendedWeight]=BMIGroup(Weight, Height)


%The function DailyEstimatedCalorieIntake is used to calculate the calorie
%needed to maintain, loss 1 pound/week, and loss 2 pound/week. The function
%uses the input Weight, Height, Age, Gender, and ActivityLevel.
[CaloriesNeededToMaintianWeight, CaloriesNeededToLoss1lbPerWeek, CaloriesNeededToLoss2lbPerWeek]=DailyEstimatedCalorieIntake(Weight, Height, Age,Gender, ActivityLevel)

%The function ActivityCaloriesCount calculates the amount of calories used
%in an activity depending on the amount of minutes doing the activity and the subject's weight.
%Outputs for this function are CaloriesBurnPerDancing,CaloriesBurnPerWalking,
%CaloriesBurnPerSwimmingLight,CaloriesBurnPerRacquetball,CaloriesBurnPerGolf,
%CaloriesBurnPerCyclingLight,CaloriesBurnPerCyclingMod,
%CaloriesBurnPerRunning12MinPerMile,CaloriesBurnPerRunning11MinPerMile,
%CaloriesBurnPerRunning10MinPerMile,CaloriesBurnPerRunning9MinPerMile,
%CaloriesBurnPerRunning8MinPerMile,CaloriesBurnPerRunning7MinPerMile,
%CaloriesBurnPerRunning6MinPerMile,CaloriesBurnPerGardening,CaloriesBurnPerYoga,
%CaloriesBurnPerCircuitTraining,CaloriesBurnPerWeightTrainingHard, and
%CaloriesBurnPerWeightTrainingLight.
[CaloriesBurnPerDancing,CaloriesBurnPerWalking,CaloriesBurnPerSwimmingLight,CaloriesBurnPerRacquetball,CaloriesBurnPerGolf,CaloriesBurnPerCyclingLight,CaloriesBurnPerCyclingMod,CaloriesBurnPerRunning12MinPerMile,CaloriesBurnPerRunning11MinPerMile,CaloriesBurnPerRunning10MinPerMile,CaloriesBurnPerRunning9MinPerMile,CaloriesBurnPerRunning8MinPerMile,CaloriesBurnPerRunning7MinPerMile,CaloriesBurnPerRunning6MinPerMile,CaloriesBurnPerGardening,CaloriesBurnPerYoga,CaloriesBurnPerCircuitTraining,CaloriesBurnPerWeightTrainingHard,CaloriesBurnPerWeightTrainingLight]= ActivityCaloriesCount(Weight,30)


%The following scrip export the output of the above functions into an
%excel file.
xlswrite('ProjectEx1results.xlsx',BMIClass,'BMIClass')
xlswrite('ProjectEx1results.xlsx',BMI,'BMI')
xlswrite('ProjectEx1results.xlsx',MaxRecommendedWeight,'MaxRecommendedWeight')
xlswrite('ProjectEx1results.xlsx',MinRecommendedWeight,'MinRecommendedWeight')
xlswrite('ProjectEx1results.xlsx',CaloriesNeededToMaintianWeight,'CaloriesNeededToMaintianWeight')
xlswrite('ProjectEx1results.xlsx',CaloriesNeededToLoss1lbPerWeek,'CaloriesNeededToLoss1lbPerWeek')
xlswrite('ProjectEx1results.xlsx',CaloriesNeededToLoss2lbPerWeek,'CaloriesNeededToLoss2lbPerWeek')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerDancing,'CaloriesBurnPerDancing')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerWalking,'CaloriesBurnPerWalking')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerSwimmingLight,'CaloriesBurnPerSwimmingLight')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRacquetball,'CaloriesBurnPerRacquetball')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerGolf,'CaloriesBurnPerGolf')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerCyclingLight,'CaloriesBurnPerCyclingLight')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerCyclingMod,'CaloriesBurnPerCyclingMod')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning12MinPerMile,'CaloriesBurnRunning12MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning11MinPerMile,'CaloriesBurnRunning11MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning10MinPerMile,'CaloriesBurnRunning10MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning9MinPerMile,'CaloriesBurnRunning9MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning8MinPerMile,'CaloriesBurnRunning8MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning7MinPerMile,'CaloriesBurnRunning7MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerRunning6MinPerMile,'CaloriesBurnRunning6MinPerMile')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerGardening,'CaloriesBurnPerGardening')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerYoga,'CaloriesBurnPerYoga')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerCircuitTraining,'CaloriesBurnPerCircuitTraining')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerWeightTrainingHard,'CaloriesBurnWeightTrainingHard')
xlswrite('ProjectEx1results.xlsx',CaloriesBurnPerWeightTrainingLight,'CaloriesBurnWeightTrainingLight')






