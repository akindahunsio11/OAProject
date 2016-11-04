function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Kunle Akindahunsi
%
%         DUE: October 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------
% I found 10 bugs
beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');                                   


% Bug4. Found when I ran the code. Bug made all my entery invalid. 
% I changed || to && so that the condition would run if level is not equal
% to any of the beginner, moderate and advanced.
while level ~= beginner && level ~= moderate && level ~= advanced           
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');               
end

% set highest secret number based on level selected


% Bug1. found when looking through code. this bug assigned level to 
% beginner when it should be a comparing if its equal to. I added = to 
% make it enqual to.
if level == beginner                                                         

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
    
    
% Bug2.found when looking through code and saw that the first h in
% advancedhighest was not capitlized like in line 43. The bug would 
% not set highest to 100. I changed advancedhighest to advancedHighest
highest = advancedHighest;                                                  
end

% randomly select secret number between 1 and highest for level of play



% Bug10.Found this bug when I figured out the secret number was just 
% the value of "highest". I changed the way to calulate secretNumber to 
% get a different number everytime you play. 
% From "secretNumber=floor(rand() + 1 * highest)" to 
% "secretNumber = randi([1,highest])" 
secretNumber = randi([1,highest]);  %floor(rand() + 1 * highest);   
                                                                            
                                                                            
% initialize number of guesses and User_guess



% Bug7. Found when I guessed the secret number right on the first try and 
% the display "Lucky You!  You got it on your first try!" didn't show. 
% Change numOfTries from 1 to 0 in order to calculate the correct number 
% of tries
numOfTries = 0;                                                             
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');          


% Bug5. Ran code and when I guess the highest number it told me it wasn't 
% a valid guess. I removed the = because it exclude the highest number
while userGuess < 1 || userGuess > highest                                  

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');                                                      
end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct


% Bug6. Found this bug when I entered a number I keept on getting 
% "Congratulations!  You got 10 in Game Over. Thanks for playing the Guess 
% That Number game." which was the else statment. I changed the '>' to '<' 
if userGuess < secretNumber                                                 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);


% Bug8. Found when I guessed the secret number right on the first try and 
% the display "Lucky You!  You got it on your first try!" didn't show. I 
% added "&& userGuess==secretNumber" to the elseif condition of 
% "numOfTries == 1" to get the display to show.
elseif numOfTries == 1 && userGuess==secretNumber                           
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
    
    
% Bug9. Found when code was run ending display was "Congratulations!
% You got 10 in Game Over. Thanks for playing the Guess That Number game." 
% which didn't show the number of tries. I added numOfTries to the end of 
% "fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...secretNumber);" 
% to make it read "fprintf('\nCongratulations!  You got %d in %d 
% tries.\n\n', ...secretNumber, numOfTries);"  
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);                                                  

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop


% Bug3. Before running code I saw that the 'end' that was on the last line
% of code was for the while loop and the function was missing an 'end' to 
% close it. % end of game
end% end of game                                                            