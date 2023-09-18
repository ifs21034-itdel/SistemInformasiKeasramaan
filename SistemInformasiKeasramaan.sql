CREATE DATABASE SistemAsramaDB



-- CREATE TABLE

--CREATE TABLE Mahasiswa
create table Mahasiswa(
NIM varchar(10) NOT NULL,
Nama varchar(50) NOT NULL,
Prodi varchar(20) NOT NULL,
Jenis_Kelamin varchar(10) NOT NULL,
Primary Key(NIM));

select* from Mahasiswa

--CREATE TABLE Asrama
create table Asrama(
ID_Asrama varchar(10) NOT NULL,
Nama_Asrama varchar(15) NOT NULL,
Jenis_Asrama varchar(10) NOT NULL,
Lokasi_Asrama varchar(10) NOT NULL,
Primary Key(ID_Asrama));

select* from Asrama

--CREATE TABLE Keasramaan
create table Keasramaan(
NID_Keasramaan varchar(15) NOT NULL,
Nama_Keasramaan varchar(50) NOT NULL,
Jenis_Kelamin varchar(10) NOT NULL,
Jabatan_Keasramaan varchar(20) NOT NULL,
Primary Key(NID_Keasramaan));

select* from Keasramaan

--CREATE TABLE Keamanan
create table Keamanan(
ID_Asrama varchar(10) NOT NULL,
ID_Satpam varchar(15) NOT NULL,
Nama_Satpam varchar(50) NOT NULL,
Primary Key(ID_Satpam),
Foreign Key(ID_Asrama) references Asrama(ID_Asrama));

select* from Keamanan

--CREATE TABLE Kamar
create table Kamar(
NIM varchar(10) NOT NULL,
ID_Asrama varchar(10) NOT NULL,
No_Kamar varchar(10) NOT NULL,
Foreign Key(NIM) references Mahasiswa(NIM),
Foreign Key(ID_Asrama) references Asrama(ID_Asrama));

select* from Kamar

--CREATE TABLE RiwayatAsrama
create table RiwayatAsrama(
NIM varchar(10) NOT NULL,
NID_Keasramaan varchar(15) NOT NULL,
ID_Asrama varchar(10) NOT NULL,
Tahun varchar(10) NOT NULL,
Semester varchar(10) NOT NULL,
Foreign Key(NIM) references Mahasiswa(NIM),
Foreign Key(NID_Keasramaan) references Keasramaan(NID_Keasramaan));

select* from RiwayatAsrama

--CREATE TABLE PengurusAsrama
create table PengurusAsrama(
NIM varchar(10) NOT NULL,
Jabatan varchar(15) NOT NULL,
ID_Asrama varchar(10) NOT NULL,
Foreign Key(NIM) references Mahasiswa(NIM),
Foreign Key(ID_Asrama) references Asrama(ID_Asrama));

select* from PengurusAsrama

--CREATE TABLE DaftarPelanggaran
create table DaftarPelanggaran(
No_Pelanggaran varchar(10) NOT NULL,
Nama_Pelanggaran varchar(20) NOT NULL,
Jenis_Peraturan varchar(20) NOT NULL,
Bobot_Poin varchar(10) NOT NULL,
Primary Key(No_Pelanggaran));

select* from DaftarPelanggaran


--CREATE TABLE RiwayatPelanggaran
create table RiwayatPelanggaran(
NIM varchar(10) NOT NULL,
Semester varchar(10) NOT NULL,
No_Pelanggaran varchar(10) NOT NULL,
Foreign Key(NIM) references Mahasiswa(NIM),
Foreign Key(No_Pelanggaran) references DaftarPelanggaran(No_Pelanggaran));

select* from RiwayatPelanggaran

--CREATE TABLE RiwayatPerbuatanBaik
create table RiwayatPerbuatanBaik(
NIM varchar(10) NOT NULL,
Semester varchar(10) NOT NULL,
Nama_PerbuatanBaik varchar(50) NOT NULL,
Bobot_Pemulihan varchar(10) NOT NULL,
Foreign Key(NIM) references Mahasiswa(NIM));

select* from RiwayatPerbuatanBaik

--CREATE TABLE JadwalIbadah
create table JadwalIbadah(
ID_Asrama varchar(10) NOT NULL,
No_Kamar varchar(10) NOT NULL,
Ayat_Renungan varchar(20) NOT NULL,
Tanggal varchar(15) NOT NULL,
Waktu varchar(10) NOT NULL,
Foreign Key (ID_Asrama) references Asrama(ID_Asrama));

select* from JadwalIbadah

--CREATE TABLE JadwalKurve
create table JadwalKurve(
NIM varchar(10) NOT NULL,
ID_Asrama varchar(10) NOT NULL,
Kelompok varchar(10) NOT NULL,
Lokasi varchar(20) NOT NULL,
Foreign Key (NIM) references Mahasiswa(NIM),
Foreign Key (ID_Asrama) references Asrama(ID_Asrama));

select* from JadwalKurve

--CREATE TABLE PoinKeasramaan
create table PoinKeasramaan(
NIM varchar(10) NOT NULL,
Semester varchar(10) NOT NULL,
Total_Poin varchar(10) NOT NULL,
Foreign Key(NIM) references Mahasiswa(NIM));

select* from PoinKeasramaan

--Insert Data Mahasiswa

INSERT INTO MAHASISWA VALUES ('11S21001', 'David Vincent', 'S1 Informatika', 'Laki-Laki');
INSERT INTO MAHASISWA VALUES ('11S21002', 'Rifqi Haikal', 'S1 Informatika', 'Laki-Laki');
INSERT INTO MAHASISWA VALUES ('11S21003', 'Benhard Yudha', 'S1 Informatika', 'Laki-Laki');
INSERT INTO MAHASISWA VALUES ('11S21004', 'Riris Iyut', 'S1 Informatika', 'Perempuan');
INSERT INTO MAHASISWA VALUES ('11S21005', 'Tesalonika', 'S1 Informatika', 'Perempuan');
INSERT INTO MAHASISWA VALUES ('11S21006', 'Salwa Zahira', 'S1 Informatika', 'Perempuan');
INSERT INTO MAHASISWA VALUES ('11S21034', 'Enrico Sirait', 'S1 Informatika', 'Laki-Laki');
INSERT INTO MAHASISWA VALUES ('11S21041', 'Itha Tarigan', 'S1 Informatika', 'Perempuan');
INSERT INTO MAHASISWA VALUES ('11S21055', 'Gerry Bukit', 'S1 Informatika', 'Laki-Laki');

select* from Mahasiswa

--Insert Data Asrama

INSERT INTO ASRAMA VALUES ('PN1', 'Pniel', 'Aspa', 'Dalam');
INSERT INTO ASRAMA VALUES ('KP1', 'Kapernaum', 'Aspi', 'Dalam');
INSERT INTO ASRAMA VALUES ('SL1', 'Silo', 'Aspi', 'Dalam');
INSERT INTO ASRAMA VALUES ('AN1', 'Antiokhia', 'Aspa', 'Dalam');
INSERT INTO ASRAMA VALUES ('R42', 'Rusunawa 4', 'Aspi', 'Luar');
INSERT INTO ASRAMA VALUES ('R12', 'Rusunawa 1', 'Aspa', 'Luar');
INSERT INTO ASRAMA VALUES ('R22', 'Rusunawa 2', 'Aspi', 'Luar');
INSERT INTO ASRAMA VALUES ('R32', 'Rusunawa 3', 'Aspa', 'Luar');

select* from Asrama

--Insert Data Keasramaan

INSERT INTO Keasramaan VALUES ('114003309', 'Alvin Bana', 'Laki-Laki', 'Pembina Asrama');
INSERT INTO Keasramaan VALUES ('114003290', 'Bengawan', 'Laki-Laki', 'Pembina Asrama');
INSERT INTO Keasramaan VALUES ('214003918', 'Eska Silitonga', 'Perempuan', 'Kepala Keasramaan');
INSERT INTO Keasramaan VALUES ('2140033667', 'Vebby Sirait', 'Perempuan', 'Pembina Asrama');
INSERT INTO Keasramaan VALUES ('2140088788', 'Herlin Juni', 'Perempuan', 'Pembina Asrama');

select* from Keasramaan

--Insert Data Keamanan

INSERT INTO Keamanan VALUES ('R42', '133382942', 'Robert Pakpahan');
INSERT INTO Keamanan VALUES ('R12', '133899138', 'Abudi Sitinjak');
INSERT INTO Keamanan VALUES ('R22', '234184188', 'Mahmud Kumis');
INSERT INTO Keamanan VALUES ('R32', '231874893', 'Sentot Lubis');

select* from Keamanan

--Insert Data Kamar

INSERT INTO Kamar VALUES ('11S21034', 'PN1', '12');
INSERT INTO Kamar VALUES ('11S21041', 'R42', '11');
INSERT INTO Kamar VALUES ('11S21055', 'R12', '2');
INSERT INTO Kamar VALUES ('11S21006', 'R22', '1');
INSERT INTO Kamar VALUES ('11S21001', 'R12', '2');

select* from Kamar

--Insert Data RiwayatAsrama

INSERT INTO RiwayatAsrama VALUES ('11S21001', '114003309', 'PN1', '2022', '3');
INSERT INTO RiwayatAsrama VALUES ('11S21005', '114003290', 'KP1', '2021', '1');
INSERT INTO RiwayatAsrama VALUES ('11S21004', '214003918', 'R42', '2022', '3');
INSERT INTO RiwayatAsrama VALUES ('11S21034', '114003309', 'PN1', '2022', '2');
INSERT INTO RiwayatAsrama VALUES ('11S21006', '214003918', 'R42', '2021', '1');

select* from RiwayatAsrama

--Insert Data PengurusAsrama

INSERT INTO PengurusAsrama VALUES ('11S21001', 'Ketua', 'PN1');
INSERT INTO PengurusAsrama VALUES ('11S21006', 'Bendahara', 'R22');
INSERT INTO PengurusAsrama VALUES ('11S21003', 'Ketua', 'R12');
INSERT INTO PengurusAsrama VALUES ('11S21041', 'Ketua', 'R22');
INSERT INTO PengurusAsrama VALUES ('11S21055', 'Bendahara', 'R12');

select* from PengurusAsrama

--Insert Data DaftarPelanggaran

INSERT INTO DaftarPelanggaran VALUES ('1', 'Makan di kelas', 'Akademik', '5');
INSERT INTO DaftarPelanggaran VALUES ('2', 'Tidak kurve', 'Keasramaan', '2');
INSERT INTO DaftarPelanggaran VALUES ('4', 'Terlambat', 'Keasramaan', '4');
INSERT INTO DaftarPelanggaran VALUES ('5', 'Tidak memakai pin', 'Kemahasiswaan', '3');
INSERT INTO DaftarPelanggaran VALUES ('10', 'Menginjak rumput', 'Kemahasiswaan', '5');
INSERT INTO DaftarPelanggaran VALUES ('15', 'Membuat kegaduhan', 'Kemahasiswaan', '15');

select* from DaftarPelanggaran

--Insert Data RiwayatPelanggaran

INSERT INTO RiwayatPelanggaran VALUES ('11S21001', '2', '4');
INSERT INTO RiwayatPelanggaran VALUES ('11S21004', '2', '2');
INSERT INTO RiwayatPelanggaran VALUES ('11S21005', '3', '15');
INSERT INTO RiwayatPelanggaran VALUES ('11S21006', '3', '2');
INSERT INTO RiwayatPelanggaran VALUES ('11S21055', '3', '5');

select* from RiwayatPelanggaran

--Insert Data RiwayatPerbuataBaik

INSERT INTO RiwayatPerbuatanBaik VALUES ('11S21005', '3', 'Menolong teman sakit', '5');
INSERT INTO RiwayatPerbuatanBaik VALUES ('11S21004', '2', 'Menyapu Selasar', '2');
INSERT INTO RiwayatPerbuatanBaik VALUES ('11S21001', '1', 'Merapikan Sepatu', '3');
INSERT INTO RiwayatPerbuatanBaik VALUES ('11S21055', '3', 'Mengisi Galon', '10');
INSERT INTO RiwayatPerbuatanBaik VALUES ('11S21034', '2', 'Mengambil Sampah di Selasar', '2');

select* from RiwayatPerbuatanBaik

--Insert Data JadwalIbadah

INSERT INTO JadwalIbadah VALUES ('PN1', '1', 'Mat 1 : 29', '24/11/2022', 'Pagi');
INSERT INTO JadwalIbadah VALUES ('PN1', '2', 'Mrk 5 : 12', '24/11/2022', 'Malam');
INSERT INTO JadwalIbadah VALUES ('R42', '21', 'Kel 7 : 12', '30/11/2022', 'Malam');
INSERT INTO JadwalIbadah VALUES ('R42', '22', 'Kel 7 : 13', '31/11/2022', 'Pagi');
INSERT INTO JadwalIbadah VALUES ('R42', '23', 'Kel 7 : 14', '31/11/2022', 'Malam');

select* from JadwalIbadah

--Insert Data JadwalKurve

INSERT INTO JadwalKurve VALUES ('11S21001', 'PN1', 'B', 'Selasar lantai 1');
INSERT INTO JadwalKurve VALUES ('11S21002', 'R12', 'A', 'Selasar lantai 2');
INSERT INTO JadwalKurve VALUES ('11S21003', 'R12', 'A', 'Toilet 1');
INSERT INTO JadwalKurve VALUES ('11S21004', 'R22', 'B', 'Toilet 2');
INSERT INTO JadwalKurve VALUES ('11S21005', 'R22', 'A', 'Toilet 3');
INSERT INTO JadwalKurve VALUES ('11S21006', 'R22', 'B', 'Kamar Mandi 1');
INSERT INTO JadwalKurve VALUES ('11S21034', 'PN1', 'A', 'Halaman Depan');
INSERT INTO JadwalKurve VALUES ('11S21041', 'R42', 'B', 'Tempat Sepatu');
INSERT INTO JadwalKurve VALUES ('11S21055', 'R12', 'B', 'Ruang Cuci');

select* from JadwalKurve

--Insert Data PoinKeasramaan

INSERT INTO PoinKeasramaan VALUES ('11S21001', '1', '0');
INSERT INTO PoinKeasramaan VALUES ('11S21002', '2', '5');
INSERT INTO PoinKeasramaan VALUES ('11S21003', '1', '3');
INSERT INTO PoinKeasramaan VALUES ('11S21004', '2', '0');
INSERT INTO PoinKeasramaan VALUES ('11S21005', '3', '10');
INSERT INTO PoinKeasramaan VALUES ('11S21006', '2', '5');
INSERT INTO PoinKeasramaan VALUES ('11S21034', '3', '2');
INSERT INTO PoinKeasramaan VALUES ('11S21041', '3', '15');
INSERT INTO PoinKeasramaan VALUES ('11S21055', '2', '3');

select* from PoinKeasramaan

