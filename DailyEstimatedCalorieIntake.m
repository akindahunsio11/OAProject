function [CaloriesNeededToMaintianWeight, CaloriesNeededToLoss1lbPerWeek, CaloriesNeededToLoss2lbPerWeek]=DailyEstimatedCalorieIntake(Weight, Height, Age,Gender, ActivityLevel)
    %The function DailyEstimatedCalorieIntake is used to calculate the calorie
    %needed to maintain, loss 1 pound/week, and loss 2 pound/week. The function
    %uses the input Weight, Height, Age, Gender, and ActivityLevel.

    
    %Convert pounds into killograms
    Weightkg=convmass([Weight],'lbm','kg');
    Heightm=convlength([Height],'in','m');
    %Loop to give each subject Activity Level a number value to be used in
    %an equation
    for i= 1:length(ActivityLevel)
        if strcmp(ActivityLevel(i),'Sedentary')
            Sedentary= 1.2;
            ActivityLevel1(i,:)=Sedentary;
        elseif strcmp(ActivityLevel(i),'Lightly Active')
            LightlyActive=1.375;
            ActivityLevel1(i,:)=LightlyActive;
        elseif strcmp(ActivityLevel(i),'Moderatetely Active')
            ModeratetelyActive=1.55;
            ActivityLevel1(i,:)=ModeratetelyActive;
        elseif strcmp(ActivityLevel(i),'Very Active')
            VeryActive=1.725;
           ActivityLevel1(i,:)=VeryActive;
        end
    
    end
    
    %Loop to give each subject Gender a number value to be used in
    %an equation
for i=1:length(Gender)
    if strcmp(Gender(i),'Male')
        Male=5;
        Gender1(i,1)=Male;
    else
        Female=-161;
        Gender1(i,1)=Female;
    end
end
    % Equations used calculate calories needed to maintain weight, and loss
    % 1 and 2 pounds for each subject
    CaloriesNeededToMaintianWeight = (10.*Weightkg + 6.25.* (Heightm.*100) - 5 .* Age + Gender1).*ActivityLevel1;

    CaloriesNeededToLoss1lbPerWeek = CaloriesNeededToMaintianWeight-500;

    CaloriesNeededToLoss2lbPerWeek = CaloriesNeededToMaintianWeight-1000;
end