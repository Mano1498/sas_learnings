/* Reding */
data pr;
infile
'/home/u63644169/sasuser.v94/Price.csv' dlm=',';
input Area Price;
run;

/* Writing */
proc export data = pr
outfile = '/home/u63644169/sasuser.v94/land.csv'
dbms = dlm;
delimiter = ',';
run;

data b1_9848;
input id name $;
datalines;
1 Mano 
2 Renu 
3 Tamil
;
run;

data b2_9849;
input id name $;
datalines;
1 Arun 
2 Prem 
3 Jaya
;
run;

/* Concat */
data concat;
set b1_9848 b2_9849;
run;

data Mlat;
input id Topic $ Mark;
format Topic $cf.;
datalines;
1 PY 40
2 SAS 50
3 SQL 40
;
proc print data = Mlat;
run;

/* Merging */
data merg;
merge b2_9849 Mlat;
by id;
proc print data = merg;
run;

/* Custom formating */
proc format;
value $cf  'PY' = "Python"
           'SAS' = 'Statistical Analysis System'
           'SQL' = 'Structured Query Language';

 
/* Subsetting */
data Just_pass;
set Mlat;
if Mark > 40 then delete;
run;

data aspirant;
set merg;
keep name ;
run;

data aspirants;
set merg;
drop Topic ;
run;