%Getting Data from CSV file
data = readmatrix('BBox_List_2017.csv');

%Extracting Data
data = data(:,3:6);
x = data(:,1);
y = data(:,2);
width = data(:,3);
height = data(:,4);

%Initializing Variables
o = sum(size(width)');
Wtotal = 0;
Htotal = 0;
XT = 0;
YT = 0;

%Calculating Sum
for i=1:o-1
    Wtotal = Wtotal + width(i,1);
    Htotal = Htotal + height(i,1);
    XT = XT + x(i,1);
    YT = YT + y(i,1);
end

%Calculating average
Waverage = Wtotal/o;
Haverage = Htotal/o;
Xave = XT/o;
Yave = YT/o;

%plotting
scatter(x,y,width,height,'blue')
hold on

%plotting the overall average
scatter(Xave,Yave,Waverage,'yellow')

%Labeling Data
title('Atelectasis Data')
xlabel('Horizontal Position')
ylabel('Vertical Position')