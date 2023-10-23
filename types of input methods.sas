/* named input */
data name;
input id= name= $ marks=;
datalines;
id=1 name=mano marks=40
id=2 name=jaya marks=80
;
run;

data column;
input id 1-3 name $ 5-8 marks 9-11;
datalines;
123 Mano 40
345 Renu 80
;
run;

Data students;
input id name $ course $ marks;
label id = 'student id' name = 'student name';
datalines;
1 Mano DS 50
2 Renu SDE 80
;
run;

data emp;
input @1id @4name $ @9dep $;
datalines;
12 Mano DA
23 Renu SDE
;
run;






