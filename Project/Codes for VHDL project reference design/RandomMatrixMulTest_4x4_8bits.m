% Clear variables and console
clear;
clc;

% Randomly generate 4x4 matrices A and B 
% with values between -9 and 9
A = randi([-128 127], 4, 4);
B = randi([-128 127], 4, 4);

% Calculate C
C = A*B;

% Convert matrices to hexadecimal arrays
AHex = dec2hex(A', 2);
BHex = dec2hex(B', 2);
CHex = dec2hex(C', 5);


% Specify output file names
fileNameA =   'InputA.txt';      
fileNameB =   'InputB.txt';     
fileNameC =   'OutputC_matlab.txt';  

% Output hexadecimal arrays representing each matrix 
% to .txt files
fid = fopen(fileNameA, 'w');
fprintf(fid, '%s\n', string(AHex));
fclose(fid);
disp(['File: ' fileNameA ' has been saved.']);

fid = fopen(fileNameB, 'w');
fprintf(fid, '%s\n', string(BHex));
fclose(fid);
disp(['File: ' fileNameB ' has been saved.']);

fid = fopen(fileNameC, 'w');
fprintf(fid, '%s\n', string(CHex));
fclose(fid);
disp(['File: ' fileNameC ' has been saved.']);




