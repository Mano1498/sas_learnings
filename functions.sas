data num;
a1 = 20 ; a2 = 40 ; a3 = 30;
max = max(a1,a2,a3);
min = min(a1,a2,a3);
med = median(a1,a2,a3);
sq = sqrt(sum(a1,a2,a3));
ran = ranuni(0);
run;

data calendar;
input @1 date1 date9. @11 date2 date9. ;
format date1 date9. date2 date9. today date9.;
years = intck('year',date1,date2);
month = intck('month',date1,date2);
week_day = weekday(date1);
day = put(date1,weekdate3.);
today = today();
time = time();
time_12hrs = put(time(), timeampm12.);
datalines;
11nov2015 20oct2023
14jun2015 20oct2023
;
proc print;
run;


data chr;
s1 = scan("Mano Ranjan",2);
s2 = lowcase("MANO");
s3 = upcase("mano");
s4 = reverse("Mano");
run;

data num_op;
round = round(1.5);
ceil = ceil(1.5);
floor = floor(1.5);
integer = int(1.5);
proc print;
run;

data zip;
state = zipstate('88901');
proc print;
run;


data loan;
monthly_emi = mort(100000,.,.10/12,10*12);
proc print;
run;











