[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803 .csv');
[femaleIsoIndMeans, maleIsoIndMeans, femaleGroupIsoMean, maleGroupIsoMean]=genderlsoCalc(Gender,Day1, Day2, Day3);
[day1toDay2] = dayComparator(SubjectID, Day1, Day2);
[day2toDay3] = dayComparator(SubjectID, Day2, Day3);
[normDay1mean, normDay2mean, normDay3mean] = NormalizeWeight(Weight, Day1, Day2, Day3)

xlswrite('iso_results.xlsx',maleGroupIsoMean,'maleGroupIsoMean')
xlswrite('iso_results.xlsx',femaleIsoIndMeans,'femaleIsoIndMeans')
xlswrite('iso_results.xlsx',maleIsoIndMeans,'maleIsoIndMeans')
xlswrite('iso_results.xlsx',femaleGroupIsoMean,'femaleGroupIsoMean')
xlswrite('iso_results.xlsx',day1toDay2,'day1toDay2')
xlswrite('iso_results.xlsx',day2toDay3,'day2toDay3')
xlswrite('iso_results.xlsx',normDay1mean,'normDay1mean')
xlswrite('iso_results.xlsx',normDay2mean,'normDay2mean')
xlswrite('iso_results.xlsx',normDay3mean,'normDay3mean')