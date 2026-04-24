% Clear variables and console
clear;
clc;

% Declaring Variables
randmin = -128;
randmax = 127;

% Randomly generate matrices A, B, and C
A = randi([randmin, randmax], 8, 16);
B = randi([randmin, randmax], 16, 16);
C = randi([randmin, randmax], 16, 8);

% Calculate D
temp = A * B;
D = temp * C;

% Convert matrices to hexadecimal arrays
AHex = formatted_hex(A, 2);
BHex = formatted_hex(B, 2);
CHex = formatted_hex(C, 2);
DHex = formatted_hex(D, 8);

% Set output file names
fileNameA = 'InputA.txt';
fileNameB = 'InputB.txt';
fileNameC = 'InputC.txt';
fileNameD = 'OutputD_matlab.txt';


write_file(fileNameA, AHex);
write_file(fileNameB, BHex);
write_file(fileNameC, CHex);
write_file(fileNameD, DHex);

% Function to deal with negative numbers
%   Function returns hex_array
function hex_array = formatted_hex(array, hex_size)
   [row, col] = size(array);
   hex_array = strings(row*col, 1);

   index = 1;
   for i = 1:col
       for j = 1:row
           number = array(j, i);
           if number < 0
               number = 2^(hex_size*4) + number;
           end
           hex_array(index) = dec2hex(number, hex_size);
           index = index + 1;
       end
   end
end

% Function to output hexadecimal arrays representung each matrix to .txt files
function write_file(filename, hex_array)
    fid = fopen(filename, 'w');
    fprintf(fid, '%s\n', string(hex_array));
    fclose(fid);
    disp(['File: ' filename ' has been saved.']);
end