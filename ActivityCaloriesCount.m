function[CaloriesBurnPerDancing,CaloriesBurnPerWalking,CaloriesBurnPerSwimmingLight,CaloriesBurnPerRacquetball,CaloriesBurnPerGolf,CaloriesBurnPerCyclingLight,CaloriesBurnPerCyclingMod,CaloriesBurnPerRunning12MinPerMile,CaloriesBurnPerRunning11MinPerMile,CaloriesBurnPerRunning10MinPerMile,CaloriesBurnPerRunning9MinPerMile,CaloriesBurnPerRunning8MinPerMile,CaloriesBurnPerRunning7MinPerMile,CaloriesBurnPerRunning6MinPerMile,CaloriesBurnPerGardening,CaloriesBurnPerYoga,CaloriesBurnPerCircuitTraining,CaloriesBurnPerWeightTrainingHard,CaloriesBurnPerWeightTrainingLight]= ActivityCaloriesCount(Weight,ActivityTime)
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

%ActivityTime should be in minutes

%Convert pounds into killograms
Weightkg=convmass([Weight],'lbm','kg');

%The following code calculates the amount of calories needed to perform the
%activities

Dance= (.08 .* Weightkg) .* ActivityTime;
CaloriesBurnPerDancing=Dance;

Walking =(.06.*Weightkg).*ActivityTime;
CaloriesBurnPerWalking=Walking;

SwimmingLight=(.1.*Weightkg).*ActivityTime;
CaloriesBurnPerSwimmingLight=SwimmingLight;

SwimmingMod=(.14.*Weightkg).*ActivityTime;
CaloriesBurnPerSwimmingMod=SwimmingMod;

Racquetball=(.07.*Weightkg).*ActivityTime;
CaloriesBurnPerRacquetball=Racquetball;

Golf = (.09.*Weightkg).*30;
CaloriesBurnPerGolf=Golf;

CyclingLight=(.12.*Weightkg).*ActivityTime;
CaloriesBurnPerCyclingLight=CyclingLight;

CyclingMod=(.14.*Weightkg).*ActivityTime;
CaloriesBurnPerCyclingMod=CyclingMod;

Running12=(.12.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning12MinPerMile=Running12;

Running11=(.14.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning11MinPerMile=Running11;

Running10=(.16.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning10MinPerMile=Running10;

Running9=(.19.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning9MinPerMile=Running9;

Running8=(.22.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning8MinPerMile=Running8;

Running7=(.24.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning7MinPerMile=Running7;

Running6=(.28.*Weightkg).*ActivityTime;
CaloriesBurnPerRunning6MinPerMile=Running6;

Gardening=(.07.*Weightkg).*ActivityTime;
CaloriesBurnPerGardening=Gardening;

Yoga=(.06.*Weightkg).*ActivityTime;
CaloriesBurnPerYoga=Yoga;

Circuit=(.14.*Weightkg).*ActivityTime;
CaloriesBurnPerCircuitTraining=Circuit;

WeightTrainingHard=(.1.*Weightkg).*ActivityTime;
CaloriesBurnPerWeightTrainingHard=WeightTrainingHard;

WeightTrainingLight=(.05.*Weightkg).*ActivityTime;
CaloriesBurnPerWeightTrainingLight=WeightTrainingLight;
end
