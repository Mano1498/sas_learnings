data d;
input @1 d1 mmddyy10. @12 d2 mmddyy10. @23 d3 mmddyy10. @34 d4 mmddyy10. @46 d5 mmddyy10.;
format d1 date11. d2 date9. d3 worddate20. d4 mmddyy8. d5 anydtdte15.;
datalines;
11/10/2022 11/11/2023 12/12/2023 11/30/2024 12/12/2023
;
proc print data = d;
run;