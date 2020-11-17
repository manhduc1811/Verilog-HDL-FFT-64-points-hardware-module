%clear;clc;close all;
clc;
for i = 0:1:63
    formatSpec ="		int_r[%d] =  %d;\n";
    fprintf(formatSpec,i,xINT(i+1));
end