/* arithmetic */
Data arithmetic_Operators;
input @1 n1 5. @6 n2 4.;
add = n1+n2;
sub = n1-n2;
mul = n1*n2;
div = n1/n2;
datalines;
123456789
987654321
;
run;


/* logical operator */

Data logical;
input @1 n1 5. @6 n2 4.;
not = ~(n2>n1);
and = (n2<n1 & n1>n2);
or = (n2>n1 | n2>n1);
datalines;
123456789
987654321
;
run; 

/* Comparasion Operator */

Data comparasion;
input @1 n1 5. @6 n2 4.;
equal = (n2=12345);
notequale = (n1^=n2);
lessthan = (n2<n1);
greatereq = (n2>=n1);
lessequ = (n2<=n1);
datalines;
123456789
987654321
;
run;

/* min max */

Data min_max;
input @1 n1 5. @6 n2 4.;
mn = min(n1,n2);
ma = max(n1,n2);
datalines;
123456789
987654321
;
run;








