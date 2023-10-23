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

















