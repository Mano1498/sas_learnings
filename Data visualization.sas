/* histogram */
proc univariate data = sashelp.cars;
histogram msrp
/
normal(
mu=est
sigma=est
color=greenyellow
w=5)
barlabel=percent
midpoints=30000 to 200000 by 10000;
run;



/* barchart */
proc sql;
create table demo as
select make,model,type,length,weight
from sashelp.cars
where make in ("Jaguar","Audi","Kia","BMW")
;
run;


/* stacked */
proc sgplot data=work.demo;
vbar length
/
group=make 
groupdisplay=stack;
run;

/* cluster */
proc sgplot data=work.demo;
vbar length/group=make groupdisplay=cluster;
run;



/* pie chart */

proc template;
define statgraph pie;
begingraph;
layout region;
piechart category=make/
datalabellocation=auto
categorydirection=clockwise
dataskin=pressed
start=180 name='pie';
endlayout;
endgraph;
end;
run;

proc sgrender data=work.demo
template=pie;
run;



proc template;
define statgraph pie1;
begingraph;
layout region;
piechart category=type/
datalabellocation=auto
categorydirection=clockwise
dataskin=sheen
start=180 name='pie';
endlayout;
endgraph;
end;
run;


proc sgrender data=work.demo
template=pie1;
run;


/* scatter  */
proc sgscatter data=work.demo;
plot length*weight
/datalabel=make group=type grid;
run;

proc sgscatter data=work.demo;
plot length*weight
/datalabel=make group=type ellipse=(alpha=0.05 type=predicted);
run; 
/* Pair plot (Correlation) */
proc sgscatter data=work.demo;
matrix length weight
/group=make;
run;


