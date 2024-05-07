/*LAB-04 ANALIZADOR LEXICO W/ LEX AND YACC*/
%{
#include <stdio.h>
%}

%%
^"//"(.*)\n { printf ("COMMENT\n"); } /*Any "//"*/
^f { printf ("floatdcl "); } /*At the beggining of the line f character means float*/
^i { printf ("intdcl "); } /*At the beggining of the line i character means integer*/
^p { printf ("print "); } /*At the beggining of the line p character means print*/
[a-zA-Z]+ { printf ("id ");} /*Identify an id*/
= { printf ("assign "); } /*Any = is an assignation */
\+ { printf ("plus "); } /*Any + is a sum*/
\- { printf ("minus "); } /*Any - is a substraction*/
[0-9]+ { printf ("inum "); } /*Any chain that containts 1 or more numberes is an integer*/
([0-9]*[.][0-9]+) { printf ("fnum "); } /*Any number with(out) a precedent number that contains a "." and is followed by 1 or more nunmbers */
. {/*Ignore these dudes*/} 
%%

