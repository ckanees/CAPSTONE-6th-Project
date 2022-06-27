
/*Solving below Secanrio*/
/*Take record of 8 students with their marks and assign grade to them as follow*/
/*percentage greater than 35 and less than 60 Pass class*/
/*percentage greater than 60 and less than 80 First class */
/*percentage greater than 80 is distinction*/
/* inputs should be roll_no, name, percentage */
/* */

/*Data step for below student with marks*/

data student;
input Roll_no $ Name $ Percentage $;
datalines;
101 Vikram 85 
102 Vijay 90 
103 Manoj 78 
104 Sruthy 90 
105 Hemalatha 98
106 Raju 92
107 Anees 58
108 Lessly 91
;
run;

/*Procedure and output step*/
proc print data=student;
run;

/*Code for Conditions*/
data student1;
set student;
if Percentage > 34 and Percentage <60 then Grade="PassClass";
else if Percentage >60 and Percentage <80 then Grade ="FirstClass";
else if Percentage >80 then Grade = "Distinction";
else Grade="Failed";
proc print data=student1;
run;

