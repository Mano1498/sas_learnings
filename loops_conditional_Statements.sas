/*  do */
data do;
sum = 0;
do var = 1 to 10;
sum = sum+var;
end;

/* do while */

data dw;
sum = 0;
var = 1;
do while(var<11);
sum=sum+var;
var+1;
end;

/* do until */

data du;
sum = 0;
var =1;
do until(var>10);
sum = sum+var;
var+1;
end;
proc print;
run;

/* if statements */


data st;
input id name $ marks;
datalines;
1 mano 34
2 renu 50
3 jaya 90
;
run;

data cst;
set st;
length remarks $ 11;
if marks>80 then remarks = 'good';
else if 35<marks<80 then remarks = 'average';
else remarks='fails';
run;


data cst;
set st;
if marks>80 then delete;
else if 35<marks<80 then remarks = 'average';
else remarks = 'fail';
run;






