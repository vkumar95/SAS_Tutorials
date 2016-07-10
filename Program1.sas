/*1: Data step : where u write new programs.. for new calculations.. u write frm scratch 
In short.. */

/*Procedures !! in short PROC  */

/* Variable names : 32 characters  data set names - 32 characters 
  it should always begin with _ or character variable.*/
/* two types of variables: Character and Numeric */ 
/* a+b 
2+3=5*/
libname class "G:\SAS_Training_Group_1\Day1_Introduction_SAS\Codes";
data class.sum_sal;
infile  "G:\SAS_Training_Group_1\Day1_Introduction_SAS\data1.txt";
input Name $ Salary  sal Age location $;
salary1=sum(salary+sal);
run;

/* Sas : Permanent libraries : system defined librarries will be there by defualt..
 Temporary Libraries : Work : Watever u do wrt work library - it will vanish , after sas closes.. 

permanent lib:Sashelp --> Gas 

Data  datasetname ;

 mak habit ;;;;;;    Data libraryname.datasetname                */

/* libname : u telling sas , store my data in seperate permanent folder .*/
/* class - 1-8 */

/* data class.123_xy ;
data class._a123
data class.&12a*/

/* noobs : no obsrvtns  */

proc print data=class.sum_sal noobs ;
run;

 proc freq data=class.sum_sal;
  table salary*age;
  run;




