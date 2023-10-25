/* Reading dataset */
data iris;
infile
"/home/u63644169/sasuser.v94/Dataset_Operation/Iris.csv" dlm=",";
input id PetalLengthCm PetalWidthCm SepalLengthCm SepalWidthCm Species $ ;
run;

/* Writing dataset */
proc export data = sashelp.fish
outfile = '/home/u63644169/sasuser.v94/Dataset_Operation/Fish.csv'
dbms = dlm;
delimiter= ',';
run;


data b1;
input id name $ marks;
datalines;
1 Mano 40
2 Renu 50
;
run;

data b2;
input id name $ score;
datalines;
1 Arun 60
2 Prem 40
;
run;


data dept;
input id department $;
format department $mm.;
datalines;
1 EEE 
2 ECE
;
proc print data = dept;
run;


/* Concat */
data concat;
set b1(Rename=(marks=score)) b2;
run;

/* Sorting */
proc sort data=concat;
by name;
run;

/* merge */
data mer;
merge b2 dept;
by id;
proc print data = mer;
run;

/* Subseting Observation */
data ss;
set concat;
if score > 40 then delete;
run;

/* Subseting variable */
data ss1;
set mer;
keep name department;
run;

/* creating custom formating */
proc format;
value $mm  'EEE' = 'Electrical and Electronics Engineering'
           'ECE' = 'Electronics and Communication Engineering'
           'MECH' = "Mechanical Engineering"
           'CSE' = 'Computer Science Engineering'
            'IT' = 'Inforamtion Technology';
              
proc print data = dept;
format department $mm.;
run;









