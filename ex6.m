% Tutorial Minggu ke-4 
% MENCARI APROKSIMASI POLINOMIAL DENGAN METODE INTERPOLASI 
% 
% File ini akan memanggil beberapa kode dan anda harus melengkapi kode tersebut
% untuk mencari solusi SPL tersebut
% 
% File latihan :    
%     1. lagrange.m
%     2. bedaterbagi.m
%     3. NewtonInterpolation.m
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
% 
%==========================================================================
% PART 1: VISUALIZING THE DATA FOR LAGRANGE INTERPOLATION
% Anda tidak perlu melakukan apa-apa. Pada bagian ini, kode ini akan
% memanggil sebuah file yang diberi nama plotData.m yang akan membuat grafik
% berdasarkan data yang disediakan

clc;
clear;
close all;
x = [1; 2; 3; 4; 5]; 
y = [0; -2; 2; 4; -3];
fprintf('Part 1 : Melakukan visualisasi data untuk interpolasi Lagrange \n');
figure; hold on;
title('Lagrange Interpolation')
plotData(x,y);
fprintf('Kode yang anda kerjakan adalah benar jika muncul grafik  \n');
fprintf('yang berisi data-data yang disediakan');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 2: INTERPOLASI LAGRANGE
% Buatlah sebuah fungsi yang diberi nama lagrange.m yang akan menginterpolasi
% suatu nilai dengan metode interpolasi Lagrange

fprintf('Part 2 : Melakukan metode interpolasi Lagrange \n');
p = 2.5;
yp = lagrange(x,y,p)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf(' -0.22656 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: PLOTTING INTERPOLASI LAGRANGE
% Anda tidak perlu melakukan apa-apa. Dalam bagian ini kita akan mencoba menggambar
% hasil interpolasi Lagrange digambar yang sama yang didapat di bagian 1

fprintf('Part 3 : Plotting polinomial Lagrange \n');
xData = [min(x):0.01:max(x)];
yData = zeros(length(xData),1);
for i=1:length(xData)
	yData(i) = lagrange(x,y,xData(i));
end
plot(xData,yData);
hold off;
fprintf('Kode yang anda kerjakan adalah benar anda mendapatkan grafik polinom Lagrange \n');
fprintf('melewati semua titik pada grafik sebelumnya \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 4: VISUALIZING THE DATA FOR NEWTON INTERPOLATION
% Anda tidak perlu melakukan apa-apa. Pada bagian ini, kode ini akan
% memanggil sebuah file yang diberi nama plotData.m yang akan membuat grafik
% berdasarkan data yang disediakan

x = [1; 2; 3; 4; 5]; 
y = [0; -2; 2; 4; -3];
%x = [0; 1; 2; 3; 4];
%y = cos(x);
fprintf('Part 4 : Melakukan visualisasi data untuk interpolasi Newton \n');
figure; hold on;
title('Newton Interpolation')
plotData(x,y);
fprintf('Kode yang anda kerjakan adalah benar jika muncul grafik  \n');
fprintf('yang berisi data-data yang disediakan');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 5: INTERPOLASI NEWTON - DIVIDED DIFFERENCES TABLE
% Buatlah sebuah fungsi yang diberi nama bedaterbagi.m yang akan membangkitkan
% tabel beda terbagi yang akan digunakan untuk menginterpolasi suatu nilai 

fprintf('Part 5 : Membuat tabel beda terbagi \n');
tab = bedaterbagi(x,y)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah sebuah matriks \n');
fprintf('yang isinya adalah tabel beda terbagi. Isi dari kolom terakhir adalah  \n');
fprintf(' 0.04167 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 6: INTERPOLASI NEWTON - 
% Buatlah sebuah fungsi yang diberi nama NewtonInterpolation.m yang akan menginterpolasi
% suatu nilai dengan metode interpolasi Newton

fprintf('Part 6 : Melakukan metode interpolasi Newton \n');
p = 2.5;
yp = NewtonInterpolation(x,y,p)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf(' -0.22656 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 7: PLOTTING INTERPOLASI NEWTON
% Anda tidak perlu melakukan apa-apa. Dalam bagian ini kita akan mencoba menggambar
% hasil interpolasi Newton digambar yang sama yang didapat di bagian 4

fprintf('Part 7 : Plotting polinomial Newton \n');
xData = [min(x):0.01:max(x)];
yData = zeros(length(xData),1);
for i=1:length(xData)
	yData(i) = NewtonInterpolation(x,y,xData(i));
end
plot(xData,yData);
hold off;
fprintf('Kode yang anda kerjakan adalah benar anda mendapatkan grafik polinom Newton \n');
fprintf('yang melewati titik-titik pada grafik sebelumnya. Jumlah titik tergantung dari ordenya \n');
fprintf('Program selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;
close all;

% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MENCOBA SET DATA YANG LAIN 
% 
% 2. COBALAH UNTUK MEMBUAT SEBUAH PROGRAM YANG BERTUJUAN UNTUK MENGAPROXIMASI 
%	 NILAI LN(1.3) DENGAN INTERPOLASI NEWTON DAN LAGRANGE. SET DATA YANG DIPAKAI
% 	 BERVARIASI MULAI DARI DATA X=1,2, DATA X=1, 1.5, 2, DATA X=1,1.25,1.5,1.75,2
%	 DAN SETERUSNYA.  


