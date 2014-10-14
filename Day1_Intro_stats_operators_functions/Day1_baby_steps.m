%% MATLAB Day 1 Intro
% Intro to interface. Workspace. Command Window. Command History. Rearranging workspace.
% GOOGLE IS YOUR FRIEND!
% Name variables sensibly!
%% MATLAB is a fancy calculator


1+2

78748+1337

%% Variables
a=1
b=2
%revist workspace, command history
%colon operator
1:10
% help funtion
help :
%% Data types
%int char 
a=4
b='cat'
c={1 ,2, 'dog'}
class(a)
class(b)
% explain the semicolon 
who %declared variables
whos 
whos a %whos a will give size parameter lead to how Matlab is MatrixLab
%% 2-d arrays and playing with them
% every variable is a matrix
mat_1=[1,2,3;4,5,6;7,8,9]
b='cat'
b(1)
%% row column adressing
mat_1(1,2)
row=1;
col=3;
% use r and c instead of i and j cause i and j in matlab are used to denote
% imaginary numbers also r and c means row and col
mat_1(row,col)
%indexing
mat_1(2)% answer is 4... why?
% rand eye
rand(3)
eye(3)

% identity matrix
mat_i=eye(3);

% * and .* & / and ./
mat_1*mat_i

mat_1*2

mat_1.*mat_i

mat_1/2

mat_1/mat_i
mat_1./mat_i

mat_2=[3;3;3]

mat_1*mat_2
% mat_1.*mat_2 %<-will give "matrix dimensions must agree error
%% Before starting basic stats explain algorithm chocolate eating time!
%% Intro to editor 
% .m files are basically .txt files open in notepad /mac equivalent
% clear %explain
% clc % explain
% 
isvarname foo
isvarname 1_var
which input
which in_put
prompt='Enter';
in_put=input(prompt)


