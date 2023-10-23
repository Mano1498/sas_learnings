/* named input */
data name;
input id= name= $ marks=;
datalines;
id=1 name=mano marks=40
name=jaya marks=80 id=2 
;
proc print;
run;

/* Column input */
data column;
input id 1-3 name $ 5-8 marks 10-11;
datalines;
123 Mano 40
345 Renu 80
;
proc print;
run;

/* list input */
Data students;
input id name $ course $ marks;
label id = 'student id' name = 'student name';
datalines;
1 Mano DS 50
2 Renu SDE 80
;
run;

/* Formatted input */

data emp;
input @1id @4name $ @9dep $;
datalines;
12 Mano DA
23 Renu SDE
;
proc print;
run;






