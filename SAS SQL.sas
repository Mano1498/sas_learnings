data stu;
input id name $ mlat domain $;
datalines;
1 Mano 10 DS
2 Renu 8 SDE
;
run;

proc sql;
create table student as 
select * from stu;
quit;
proc print data = student;
run;

proc sql;
select id,mlat from student;
quit;

proc sql;
select Make,Type,Origin from sashelp.cars;
quit;

proc sql;
select make,model,MSRP from sashelp.cars
where make='BMW';
quit;

proc sql;
update student
set mlat=mlat*0.5;
quit;


proc sql;
create table aspirants as
select
id as aspirants_id,
name as aspirants_name,
mlat*0.5 as mlat_score
from student;
quit;







