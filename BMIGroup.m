function [BMIClass,BMI,MaxRecommendedWeight,MinRecommendedWeight]=BMIGroup(Weight, Height)

%The function BMIGroup uses the weight and height of each subject to
%determine each subject's BMI, BMI classification, and a high and low range
%for recommended weight.


%Convert pounds into killograms
Weightkg=convmass([Weight],'lbm','kg');

%Convert inches into meters
Heightm=convlength([Height],'in','m');


%Calculate BMI for each subject
BMI= (Weightkg ./ (Heightm .* Heightm));
% Loop to determine BMI class
for i= 1:length(BMI)
    if BMI(i)<18.5
        BMIClass(i,:)= {'Underweight'};
    elseif BMI(i)>=18.5 && BMI(i)<=24.9
        BMIClass(i,:)={'Normal Weight'};
    elseif BMI(i)>24.9 && BMI(i)<=29.9
        BMIClass(i,:)={'Overweight'};
    elseif BMI(i)>=30
        BMIClass(i,:)={'Obese'};
    end
    
% Calculate max and min recommended weight in poundd for each subject    
MaxRecommendedWeight= convmass([24.9.*(Heightm.*Heightm)],'kg','lbm');
MinRecommendedWeight= convmass([18.5.*(Heightm.*Heightm)],'kg','lbm');
    
end