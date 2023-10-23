/* Global Macro */
proc print data = Sashelp.cars;
where make = 'Audi' and type = 'Sedan';
title "Sales for &sysdate9 &sysday";
run;

%let make_name = 'Audi';
%let type_name ='Sedan';
proc print data = Sashelp.cars;
where make=&make_name and type=&type_name;
Title "Sale for &sysdate &sysday";
run;

/* User Created */

%macro cars(maken,typen);
proc print data = Sashelp.cars;
where make = "&maken" and type = "&typen";
title "Sales for &sysdate &sysday";
run;
%MEND;

%cars(Audi,Sedan);
%cars(BMW,Sports);


%macro rr(val);
%if &val = 10 %then %return;
data d;
x = 20;
run;
%mend rr;

%rr(10);


data nn;
call symput("today",
TRIM(put("&sysdate"d,worddate22.)));
run;

%put &today;


data d;
input @1 d1 mmddyy10. @12 d2 mmddyy10. @23 d3 mmddyy10. @34 d4 mmddyy10. @46 d5 mmddyy10.;
format d1 date11. d2 date9. d3 worddate20. d4 mmddyy8. d5 anydtdte15.;
datalines;
11/10/2022 11/11/2023 12/12/2023 11/30/2024 12/12/2023
;
proc print data = d;
run;














