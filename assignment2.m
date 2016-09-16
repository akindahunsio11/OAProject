% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kunle Akindahunsi
% Due: 9/15/16
% Instructions:
% Complete Chapter 1,2, and 3 Exercises and write 
% your answer with correct matlab syntax.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Chapter 1 Exercises

% 1.)
Cu = 63.55
% 2.)
myage = 23
% 3.)
63
%4.)
 bl=100
 oz=50
 who
 whose
 clear oz
 who
 whose
% 5.)
intmin(uint32) %0
intmax(uint32) %4294967295  
intmin(uint64) %0
intmax(uint64) %18446744073709551615
% 6.)
decimal = 5.5  
int32(decimal)  
newNUM = int32(decimal)

% 11.) 
pounds=100 
kilos = pounds/2.2 

% 12.) 
ftemp = 75  
ctemp = (ftemp-32)*5/9 = 23.8889
% 13.)
pound=25  
kilogram=(pound/2.2)
 %14.)
 y=sind(90)
 y=sin(1.5708)
 %15.)
R1=5
R2=6
R3=7
RT=1/((1/R1)+(1/R2)+(1/R3))
%22.)Uppercase
% 24.)
'b'>= 'c'-1 %=1; 
3==2+1 %=1;  
(3==2)+1 %=1; 
xor(5<6,8>4) %=0
%25.)
x=3
y=2
x>5||y<10
% 26.)
3*10^5==3e5 %=1;
% 27.)
log10(10000)==4 %=1;

%% Chapter 2 Exercises

% 1.)
vector1=[2,3,4,5,6,7] 
vector2=[1.1000,1.3000,1.5000,1.7000] 
vector3=[8,6,4,2]
% 2.)
vec = linspace(0,2*pi,50)
% 3.)
linspace(2,3,6)
% 4.)
linspace(-5,-1,5) 
linspace(5,9,3)  
linspace(8,4,3)

% 6.)
[-1;0.5;1]'

 %7.)
% 8.)
mat = [7:10; 12:-2:6]  
mat(1,3)  
mat(2,:)  
mat(:,1:2)
 %9.)
% 10.)
mat(1,:)=1:4  
mat(:,3)=[7 8]'

% 12.)
randi([1, 5], 1,4)  
randi([1, 5], 4,1)  
zeros(3,4)

% 23.) 
sum(3+5+7+9)

% 26.)
vecn=[3,5,7,9] 
vecd=1:4  
sum(vecn ./vecd) 

 %30.)
 randiVEC=randi([-10,10],1,5) 
 randiVEC-3 
 find(randiVEC>0)
 abs(randiVEC) 
 max(randiVEC)
% 31.)
mat3x5=randi([1,50],3,5)  
max(mat3x5) 
max(mat3x5') 
max(max(mat3x5))

%% Chapter 3  Exercises

%1.) %
radiusIN= input('enter inner radius:');
radiusOUT= input('enter outer radius:');
volume=((4*pi)/3)*((radiusOUT^3)-(radiusIN^3));
fprintf('For a hollow sphere with a inner radius of %.2f inches and an outer radius of %.2f inches .\n', radiusIN, radiusOUT)
fprintf('the volumes is %.2f inches cubed \n',volume)
       
%4.) 
vec=input('Enter a vector:') 
randi([1,50], 3,5)
 
%6.)
fprintf('12345.6789')
fprintf('%10.4f\n',12345.6789)
fprintf('%10.2f\n',12345.6789)
fprintf('%6.4f\n',12345.6789)
fprintf('%2.4f\n',12345.6789)
%8.)
flowRATEm=input('enter flow rate in m^3/s:')
fprintf('A flow rate of %.4f m^3/s \n', flowRATEm)
flowRATEf= (flowRATEm/.0280);
fprintf('is equivalent to %.4f f^3/s \n', flowRATEf)
%13.)
x=input('enter a value for x:');
y=input('enter a value for y:');
z=input('enter a value for z:');
unitVECTOR=(x*y*z)/(sqrt((x^2)+(y^2)+(z^2)));
fprintf('the unit vector is %.6f \n', unitVECTOR)
