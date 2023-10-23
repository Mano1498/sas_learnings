/* datastep*/
Data students;
input id name $ course $ marks;
label id = 'Candidate id' name = 'Aspirants name';
datalines;
1 Mano DS 50
2 Pradeep DA 80
3 Pankaj BI 90
4 Janani DE 100
;
run;

/* procstep*/
proc means;
run;

/* outputstep */
proc print data = students;
where marks>80;
run;

/* string operations*/
Data string_op;
length s1 $ 7 s2 $ 7;
s1 = 'welcome';
s2 = 'welcome';
sc = s1||s2;
/* 4 - starting position , 2 - length of string */
subs1 = substrn(s1,4,2);   
subs2 = substrn(sc,4);
run;


/* trimming */
Data stu;
length str1 $6;
str1 = ' Mano ';
ls1 = lengthc(str1);
lst1 = lengthc(trimn(str1));
run;


/* arrays with numbers*/
Data arr;
input a1 a2 a3;
array num(3) a1-a3;
mean = mean(of num(*));
datalines;
1 2 3
4 5 6
;
run;

/* array with string */

Data arrs;
input b1 $ b2 $ b3 $;
array st(3) $ b1-b3;
if 'Mano' in st then avaliable = 'yes'; else avaliable = 'no';
datalines;
Mano Renu Jaya
Tamil Arun Prem
;
run;
 

/* input format */
Data formating;
input x 6;
/* format x 6.3; */
datalines;
123458
12.3436
;
run; 






















































