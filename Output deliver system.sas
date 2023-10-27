ods pdf file = '/home/u63644169/sasuser.v94/Dataset_Operation/fish.pdf' style = EGDefault;
proc print data = sashelp.fish;
run;
ods pdf close;

ods html file = '/home/u63644169/sasuser.v94/Dataset_Operation/fish.html' style = EGDefault;
proc print data = sashelp.fish;
run;
ods html close;

ods rtf file = '/home/u63644169/sasuser.v94/Dataset_Operation/fish.rtf' style = EGDefault;
proc print data = sashelp.fish;
run;
ods rtf close;


