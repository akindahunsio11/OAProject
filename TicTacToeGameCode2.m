% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kunle Akindahunsi
% Due: 9/27/16
% Instructions:
% This script enables the user to play a game of tic tac toe against the computer. 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
x=[1 2 3 1 2 3 1 2 3];
y=[1 1 1 2 2 2 3 3 3];
board=plot(x,y,'ks','MarkerSize',70);
axis('ij');
grid('minor');
axis('equal');
axis([0 4 0 4]);
set(gca,'xticklabel',[],'yticklabel',[])
%set(gcf,'WindowStyle','docked')
text(0.2,1,'1','fontsize',20)
text(0.2,2,'2','fontsize',20)
text(0.2,3,'3','fontsize',20)
text(0.9,3.7,'1','fontsize',20)
text(1.9,3.7,'2','fontsize',20)
text(2.9,3.7,'3','fontsize',20)
text(0.45,0.3,'X=You, O=Computer','fontsize',20)
hold('on')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
msgbox('Lets Play a Game of Tic Tac Toe')
pause(3)
msgbox('Game will start soon.')
pause(5)
%p##=((c+.5)/r)
p11=1.5;
p12=.75;
p13=.5;
p21=2.5;
p22=1.25;
p23=.8333;
p31=3.5;
p32=1.75;
p33=1.1667;

%P##=((C+.5)/M)*10
P11=15;
P12=7.5;
P13=5;
P21=25;
P22=12.5;
P23=8.3333;
P31=35;
P32=17.5;
P33=11.6667;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Compter Turn 1
C=(2);
R=(2);
plot(C,R,'O','markersize',40,'linewidth',2,'markeredgecolor','k')
CM1=((C+.5)/R)*10;
pause(2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Your Turn 1
pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
name='Enter your choice of row and column';
pt=inputdlg(pprompt,name);
c=str2double(pt{2});
r=str2double(pt{1});
ymc=c;
ymr=r;


if (c==C)&&(r==R)
    delete(plot(c,r,'X','markersize',40,'linewidth',2,'markeredgecolor','k'))
    pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
    name='Enter a different choice of row and column or game will end';
    pt=inputdlg(pprompt,name);
    c=str2double(pt{2});
    r=str2double(pt{1});
    plot(c,r,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
    if(c==C)&&(r==R)
        stop;
    end
else
    plot(c,r,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
end
YM1=((c+.5)/r);
pause(2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Computer Turn 2
C2=3;
R2=3;
ymc=c;
ymr=r;
if((C2==c)&&(R2==r))
    C2=C2+1;
    if((C2+1)>3)
        C2=C2-2;
    end
end
if((C2==C)&&(R2==R))
    C2=C2+1;
    if((C2+1)>3)
        C2=C2-2;                        
    end
end
  %else
   % C2=3;
if((C2==c)&&(R==r))
    R2=R2+1;
    if((R2+1)>3)
        R2=R2-2;
    end
end
if((C2==C)&&(R2==R))
    R2=R2+1;
    if((R2+1)>3)
        R2=R2-2;
    end
end

  
plot(C2,R2,'O','markersize',40,'linewidth',2,'markeredgecolor','k')
CM2=(((C2)+.5)/(R2))*10;
CMC2=C2;
CMR2=R2;
pause(2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Your Turn 2
pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
name='Enter your choice of row and column';
pt=inputdlg(pprompt,name);
c2=str2double(pt{2});
r2=str2double(pt{1});
ymc2=c2;
ymr2=r2;
if ((c2==C)&&(r2==R))||((c2==C2)&&(r2==R2))||((c2==c)&&(r2==r))
    pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
    name='Enter a different choice of row and column or game will end';
    pt=inputdlg(pprompt,name);
    c2=str2double(pt{2});
    r2=str2double(pt{1});
    plot(c2,r2,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
    if((c2==C)&&(r2==R))||((c2==C2)&&(r2==R2))||((c2==c)&&(r2==r))
        stop;
    end
else
    plot(c2,r2,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
end


YM2=(((c2)+.5)/(r2));
pause(2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Computer Turn 3
C=2;
R=2;
CMC2=C2;
CMR2=R2;
C3=1;
R3=1;
ymc=c;
ymr=r;
ymc2=c2;
ymr2=r2;
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    C3=C3+1;
    if((C3+1)>3)
        C3=C3-2;
    end
end
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    C3=C3+1;
    if((C3+1)>3)
        C3=C3-2;                        
    end
end
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    C3=C3+1;
    if((C3+1)>3)
        C3=C3-2;                        
    end
end
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    C3=C3+1;
    if((C3+1)>3)
        C3=C3-2;
    end
end
  
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    R3=R3+1;
    if((R3+1)>3)
        R3=R3-2;
    end
end
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    R3=R3+1;
    if((R3+1)>3)
        R3=R3-2;
    end
end
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    R3=R3+1;
    if((R3+1)>3)
        R3=R3-2;
    end
end
if((C3==c)&&(R3==r))||((C3==C)&&(R3==R))||((C3==c2)&&(R3==r2))||((C3==C2)&&(R3==R2))
    R3=R3+1;
    if((R3+1)>3)
        R3=R3-2;
    end
end
plot(C3,R3,'O','markersize',40,'linewidth',2,'markeredgecolor','k')

CM3=((C+.5)/R)*10;
CMC3=C3;
CMR3=R3;
pause(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------------------
% %CCheck
if((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))
    if((p12)==(CM1))||((p12)==(CM2))||((p12)==(CM3))
        if((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p21)==(CM1))||((p21)==(CM2))||((p21)==(CM3))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))
        if((p23)==(CM1))||((p23)==(CM2))||((p23)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))
    if((p32)==(CM1))||((p32)==(CM2))||((p32)==(CM3))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))
    if((p21)==(CM1))||((p21)==(CM2))||((p21)==(CM3))
        if((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p12)==(CM1))||((p12)==(CM2))||((p12)==(CM3))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))
        if((p32)==(CM1))||((p32)==(CM2))||((p32)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))
    if((p23)==(CM1))||((p23)==(CM2))||((p23)==(CM3))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))
        if((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))
           msgbox('Computer Wins bye');
           stop;
        end
    end
end
%--------------------------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Your Turn 3
pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
name='Enter your choice of row and column';
pt=inputdlg(pprompt,name);
c3=str2double(pt{2});
r3=str2double(pt{1});
ymc3=c3;
ymr3=r3;
if ((c3==C)&&(r3==R))||((c3==C2)&&(r3==R2))||((c3==C3)&&(r3==R3))||((c3==c)&&(r3==r))||((c3==c2)&&(r3==r2))
    pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
    name='Enter a different choice of row and column or end will end';
    pt=inputdlg(pprompt,name);
    c3=str2double(pt{2});
    r3=str2double(pt{1});
    plot(c3,r3,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
    if((c3==C)&&(r3==R))||((c3==C2)&&(r3==R2))||((c3==C3)&&(r3==R3))||((c3==c)&&(r3==r))||((c3==c2)&&(r3==r2))
        stop;
    end
else
    plot(c3,r3,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
end


YM3=(((c3)+.5)/(r3));
pause(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------------------
% %YCheck
if((p11)==(YM1))||((p11)==(YM2))||((p11)==(YM3))
    if((p12)==(YM1))||((p12)==(YM2))||((p12)==(YM3))
        if((p13)==(YM1))||((p13)==(YM2))||((p13)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p21)==(YM1))||((p21)==(YM2))||((p21)==(YM3))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))
        if((p23)==(YM1))||((p23)==(YM2))||((p23)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p31)==(YM1))||((p31)==(YM2))||((p31)==(YM3))
    if((p32)==(YM1))||((p32)==(YM2))||((p32)==(YM3))
        if((p33)==(YM1))||((p33)==(YM2))||((p33)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p11)==(YM1))||((p11)==(YM2))||((p11)==(YM3))
    if((p21)==(YM1))||((p21)==(YM2))||((p21)==(YM3))
        if((p31)==(YM1))||((p31)==(YM2))||((p31)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p12)==(YM1))||((p12)==(YM2))||((p12)==(YM3))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))
        if((p32)==(YM1))||((p32)==(YM2))||((p32)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p13)==(YM1))||((p13)==(YM2))||((p13)==(YM3))
    if((p23)==(YM1))||((p23)==(YM2))||((p23)==(YM3))
        if((p33)==(YM1))||((p33)==(YM2))||((p33)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p11)==(YM1))||((p11)==(YM2))||((p11)==(YM3))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))
        if((p33)==(YM1))||((p33)==(YM2))||((p33)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p31)==(YM1))||((p31)==(YM2))||((p31)==(YM3))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))
        if((p13)==(YM1))||((p13)==(YM2))||((p13)==(YM3))
           msgbox('YOU WON bye');
           stop;
        end
    end
end
%--------------------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Computer Turn 4

C=2;
R=2;
C2=3;
R2=3;
CMC3=C3;
CMR3=R3;
C4=1;
R4=3;
ymc=c;
ymr=r;
ymc2=c2;
ymr2=r2;
ymc3=c3;
ymr3=r3;
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    C4=C4+1;
    if((C4+1)>3)
        C4=C4-2;
    end
end
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    C4=C4+1;
    if((C4+1)>3)
        C4=C4-2;                        
    end
end
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    C4=C4+1;
    if((C4+1)>3)
        C4=C4-2;                        
    end
end
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    C4=C4+1;
    if((C4+1)>3)
        C4=C4-2;
    end
end
  
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    R4=R4+1;
    if((R4+1)>3)
        R4=R4-2;
    end
end
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    R4=R4+1;
    if((R4+1)>3)
        R4=R4-2;
    end
end
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    R4=R4+1;
    if((R4+1)>3)
        R4=R4-2;
    end
end
if((C4==c)&&(R4==r))||((C4==C)&&(R4==R))||((C4==c2)&&(R4==r2))||((C4==C2)&&(R4==R2))||((C4==C3)&&(R4==R3))||((C4==c3)&&(C4==r3))
    R4=R4+1;
    if((R4+1)>3)
        R4=R4-2;
    end
end

plot(C4,R4,'O','markersize',40,'linewidth',2,'markeredgecolor','k')
CM4=(((C4)+.5)/(R4))*10;
CMC4=C4;
CMR4=R4;
pause(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------------------
% %CCheck
if((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))||((p11)==(CM4))
    if((p12)==(CM1))||((p12)==(CM2))||((p12)==(CM3))||((p12)==(CM4))
        if((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))||((p13)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p21)==(CM1))||((p21)==(CM2))||((p21)==(CM3))||((p21)==(CM4))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))
        if((p23)==(CM1))||((p23)==(CM2))||((p23)==(CM3))||((p23)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))||((p31)==(CM4))
    if((p32)==(CM1))||((p32)==(CM2))||((p32)==(CM3))||((p32)==(CM4))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))||((p33)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))||((p11)==(CM4))
    if((p21)==(CM1))||((p21)==(CM2))||((p21)==(CM3))||((p21)==(CM4))
        if((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))||((p31)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p12)==(CM1))||((p12)==(CM2))||((p12)==(CM3))||((p12)==(CM4))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))
        if((p32)==(CM1))||((p32)==(CM2))||((p32)==(CM3))||((p32)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))||((p13)==(CM4))
    if((p23)==(CM1))||((p23)==(CM2))||((p23)==(CM3))||((p23)==(CM4))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))||((p33)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))||((p11)==(CM4))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))||((p33)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))||((p31)==(CM4))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))
        if((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))||((p13)==(CM4))
           msgbox('Computer Wins bye');
           stop;
        end
    end
end
%--------------------------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
name='Enter your choice of row and column';
pt=inputdlg(pprompt,name);
c4=str2double(pt{2});
r4=str2double(pt{1});
ymc4=c4;
ymr4=r4;
if ((c4==C)&&(r4==R))||((c4==C2)&&(r4==R2))||((c4==C3)&&(r4==R3))||((c4==C4)&&(r4==R4))||((c4==c)&&(r4==r))||((c4==c2)&&(r4==r2))||((c4==c3)&&(r4==r3))
    pprompt={'ROW(1,2,or 3)','COL(1,2,or 3)'};
    name='Enter a different choice of row and column or game will end';
    pt=inputdlg(pprompt,name);
    c4=str2double(pt{2});
    r4=str2double(pt{1});
    plot(c4,r4,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
    if((c4==C)&&(r4==R))||((c4==C2)&&(r4==R2))||((c4==C3)&&(r4==R3))||((c4==C4)&&(r4==R4))||((c4==c)&&(r4==r))||((c4==c2)&&(r4==r2))||((c4==c3)&&(r4==r3))
        stop;
    end
else
     plot(c4,r4,'X','markersize',40,'linewidth',2,'markeredgecolor','k')
end

YM4=((c4)+.5)/(r4);
pause(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------------------
% %YCheck
if((p11)==(YM1))||((p11)==(YM2))||((p11)==(YM3))||((p11)==(YM4))
    if((p12)==(YM1))||((p12)==(YM2))||((p12)==(YM3))||((p12)==(YM4))
        if((p13)==(YM1))||((p13)==(YM2))||((p13)==(YM3))||((p13)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p21)==(YM1))||((p21)==(YM2))||((p21)==(YM3))||((p21)==(YM4))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))||((p22)==(YM4))
        if((p23)==(YM1))||((p23)==(YM2))||((p23)==(YM3))||((p23)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p31)==(YM1))||((p31)==(YM2))||((p31)==(YM3))||((p31)==(YM4))
    if((p32)==(YM1))||((p32)==(YM2))||((p32)==(YM3))||((p32)==(YM4))
        if((p33)==(YM1))||((p33)==(YM2))||((p33)==(YM3))||((p33)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p11)==(YM1))||((p11)==(YM2))||((p11)==(YM3))||((p11)==(YM4))
    if((p21)==(YM1))||((p21)==(YM2))||((p21)==(YM3))||((p21)==(YM4))
        if((p31)==(YM1))||((p31)==(YM2))||((p31)==(YM3))||((p31)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p12)==(YM1))||((p12)==(YM2))||((p12)==(YM3))||((p12)==(YM4))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))||((p22)==(YM4))
        if((p32)==(YM1))||((p32)==(YM2))||((p32)==(YM3))||((p32)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p13)==(YM1))||((p13)==(YM2))||((p13)==(YM3))||((p13)==(YM4))
    if((p23)==(YM1))||((p23)==(YM2))||((p23)==(YM3))||((p23)==(YM4))
        if((p33)==(YM1))||((p33)==(YM2))||((p33)==(YM3))||((p33)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p11)==(YM1))||((p11)==(YM2))||((p11)==(YM3))||((p11)==(YM4))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))||((p22)==(YM4))
        if((p33)==(YM1))||((p33)==(YM2))||((p33)==(YM3))||((p33)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
elseif((p31)==(YM1))||((p31)==(YM2))||((p31)==(YM3))||((p31)==(YM4))
    if((p22)==(YM1))||((p22)==(YM2))||((p22)==(YM3))||((p22)==(YM4))
        if((p13)==(YM1))||((p13)==(YM2))||((p13)==(YM3))||((p13)==(YM4))
           msgbox('YOU WON bye');
           stop;
        end
    end
end
%--------------------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Computer Turn 5
C=2;
R=2;
C2=3;
R2=3;
CMC3=C3;
CMR3=R3;
CMC4=C4;
CMR4=R4;
C5=3;
R5=1;
ymc=c;
ymr=r;
ymc2=c2;
ymr2=r2;
ymc3=c3;
ymr3=r3;
ymc4=c4;
ymr4=r4;
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    C5=C5+1;
    if((C5+1)>3)
        C5=C5-2;
    end
end
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    C5=C5+1;
    if((C5+1)>3)
        C5=C5-2;                        
    end
end
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    C5=C5+1;
    if((C5+1)>3)
        C5=C5-2;                        
    end
end
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    C5=C5+1;
    if((C5+1)>3)
        C5=C5-2;
    end
end
  
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    R5=R5+1;
    if((R5+1)>3)
        R5=R5-2;
    end
end
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    R5=R5+1;
    if((R5+1)>3)
        R5=R5-2;
    end
end
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    R5=R5+1;
    if((R5+1)>3)
        R5=R5-2;
    end
end
if((C5==c)&&(R5==r))||((C5==C)&&(R5==R))||((C5==c2)&&(R5==r2))||((C5==C2)&&(R5==R2))||((C5==C3)&&(R5==R3))||((C5==c3)&&(C5==r3))||((C5==C4)&&(R5==R4))||((C5==c4)&&(C5==r4))
    R5=R5+1;
    if((R5+1)>3)
        R5=R5-2;
    end
end

plot(C5,R5,'O','markersize',40,'linewidth',2,'markeredgecolor','k')
CM5=(((C5)+.5)/(R5))*10;
CMC5=C5;
CMR5=R5;
pause(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------------------
% %Check
if((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))||((p11)==(CM4))||((p11)==(CM5))
    if((p12)==(CM1))||((p12)==(CM2))||((p12)==(CM3))||((p12)==(CM4))||((p12)==(CM5))
        if((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))||((p13)==(CM4))||((p13)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p21)==(CM1))||((p21)==(CM2))||((p21)==(CM3))||((p21)==(CM4))||((p21)==(CM5))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))||((p22)==(CM5))
        if((p23)==(CM1))||((p23)==(CM2))||((p23)==(CM3))||((p23)==(CM4))||((p23)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))||((p31)==(CM4))||((p31)==(CM5))
    if((p32)==(CM1))||((p32)==(CM2))||((p32)==(CM3))||((p32)==(CM4))||((p32)==(CM5))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))||((p33)==(CM4))||((p33)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))||((p11)==(CM4))||((p11)==(CM5))
    if((p21)==(CM1))||((p21)==(CM2))||((p21)==(CM3))||((p21)==(CM4))||((p21)==(CM5))
        if((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))||((p31)==(CM4))||((p31)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p12)==(CM1))||((p12)==(CM2))||((p12)==(CM3))||((p12)==(CM4))||((p12)==(CM5))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))||((p22)==(CM5))
        if((p32)==(CM1))||((p32)==(CM2))||((p32)==(CM3))||((p32)==(CM4))||((p32)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))||((p13)==(CM4))||((p13)==(CM5))
    if((p23)==(CM1))||((p23)==(CM2))||((p23)==(CM3))||((p23)==(CM4))||((p23)==(CM5))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))||((p33)==(CM4))||((p33)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p11)==(CM1))||((p11)==(CM2))||((p11)==(CM3))||((p11)==(CM4))||((p11)==(CM5))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))||((p22)==(CM5))
        if((p33)==(CM1))||((p33)==(CM2))||((p33)==(CM3))||((p33)==(CM4))||((p33)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
elseif((p31)==(CM1))||((p31)==(CM2))||((p31)==(CM3))||((p31)==(CM4))||((p31)==(CM5))
    if((p22)==(CM1))||((p22)==(CM2))||((p22)==(CM3))||((p22)==(CM4))||((p22)==(CM5))
        if((p13)==(CM1))||((p13)==(CM2))||((p13)==(CM3))||((p13)==(CM4))||((p13)==(CM5))
           msgbox('Computer Wins bye');
           stop;
        end
    end
end
%--------------------------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Check Tie
if((p11)~=(CM1))||((p11)~=(CM2))||((p11)~=(CM3))||((p11)~=(CM4))||((p11)~=(CM5))
    if((p12)~=(CM1))||((p12)~=(CM2))||((p12)~=(CM3))||((p12)~=(CM4))||((p12)~=(CM5))
        if((p13)~=(CM1))||((p13)~=(CM2))||((p13)~=(CM3))||((p13)~=(CM4))||((p13)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p21)~=(CM1))||((p21)~=(CM2))||((p21)~=(CM3))||((p21)~=(CM4))||((p21)~=(CM5))
    if((p22)~=(CM1))||((p22)~=(CM2))||((p22)~=(CM3))||((p22)~=(CM4))||((p22)~=(CM5))
        if((p23)~=(CM1))||((p23)~=(CM2))||((p23)~=(CM3))||((p23)~=(CM4))||((p23)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p31)~=(CM1))||((p31)~=(CM2))||((p31)~=(CM3))||((p31)~=(CM4))||((p31)~=(CM5))
    if((p32)~=(CM1))||((p32)~=(CM2))||((p32)~=(CM3))||((p32)~=(CM4))||((p32)~=(CM5))
        if((p33)~=(CM1))||((p33)~=(CM2))||((p33)~=(CM3))||((p33)~=(CM4))||((p33)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p11)~=(CM1))||((p11)~=(CM2))||((p11)~=(CM3))||((p11)~=(CM4))||((p11)~=(CM5))
    if((p21)~=(CM1))||((p21)~=(CM2))||((p21)~=(CM3))||((p21)~=(CM4))||((p21)~=(CM5))
        if((p31)~=(CM1))||((p31)~=(CM2))||((p31)~=(CM3))||((p31)~=(CM4))||((p31)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p12)~=(CM1))||((p12)~=(CM2))||((p12)~=(CM3))||((p12)~=(CM4))||((p12)~=(CM5))
    if((p22)~=(CM1))||((p22)~=(CM2))||((p22)~=(CM3))||((p22)~=(CM4))||((p22)~=(CM5))
        if((p32)~=(CM1))||((p32)~=(CM2))||((p32)~=(CM3))||((p32)~=(CM4))||((p32)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p13)~=(CM1))||((p13)~=(CM2))||((p13)~=(CM3))||((p13)~=(CM4))||((p13)~=(CM5))
    if((p23)~=(CM1))||((p23)~=(CM2))||((p23)~=(CM3))||((p23)~=(CM4))||((p23)~=(CM5))
        if((p33)~=(CM1))||((p33)~=(CM2))||((p33)~=(CM3))||((p33)~=(CM4))||((p33)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p11)~=(CM1))||((p11)~=(CM2))||((p11)~=(CM3))||((p11)~=(CM4))||((p11)~=(CM5))
    if((p22)~=(CM1))||((p22)~=(CM2))||((p22)~=(CM3))||((p22)~=(CM4))||((p22)~=(CM5))
        if((p33)~=(CM1))||((p33)~=(CM2))||((p33)~=(CM3))||((p33)~=(CM4))||((p33)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
elseif((p31)~=(CM1))||((p31)~=(CM2))||((p31)~=(CM3))||((p31)~=(CM4))||((p31)~=(CM5))
    if((p22)~=(CM1))||((p22)~=(CM2))||((p22)~=(CM3))||((p22)~=(CM4))||((p22)~=(CM5))
        if((p13)~=(CM1))||((p13)~=(CM2))||((p13)~=(CM3))||((p13)~=(CM4))||((p13)~=(CM5))
           msgbox('Tie bye');
           stop;
        end
    end
end
%--------------------------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%