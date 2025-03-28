CREATE DATABASE QLSV;

USE QLSV;

CREATE TABLE SinhVien (
    MaSV VARCHAR(13) PRIMARY KEY,
    TenSV NVARCHAR(50) NOT NULL,
    NgaySinh DATE,
);

CREATE TABLE Lop (
    MaLop VARCHAR(11) PRIMARY KEY,
    TenLop NVARCHAR(50) NOT NULL,
);

CREATE TABLE LopSV (
    MaLop VARCHAR(11),
    MaSV VARCHAR(13),
	ChucVu NVARCHAR(50),
    PRIMARY KEY (MaLop, MaSV),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);

CREATE TABLE Khoa (
    MaKhoa VARCHAR(3) PRIMARY KEY,
    TenKhoa NVARCHAR(50) NOT NULL,
);

CREATE TABLE BoMon (
    MaBM VARCHAR(6) PRIMARY KEY,
    TenBM NVARCHAR(50) NOT NULL,
    MaKhoa VARCHAR(3) NOT NULL,
	FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);

CREATE TABLE MonHoc (
    MaMon VARCHAR(6) PRIMARY KEY,
    TenMon NVARCHAR(50),
    STC INT NOT NULL
);

CREATE TABLE GiaoVien (
    MaGV VARCHAR(5) PRIMARY KEY,
    TenGV NVARCHAR(50) NOT NULL,
	NgaySinh DATE,
    MaBM VARCHAR(6) NOT NULL,
    FOREIGN KEY (MaBM) REFERENCES BoMon(MaBM)
);

CREATE TABLE GVCN (
    MaGV VARCHAR(5),
    MaLop VARCHAR(11),
	HK INT,
	PRIMARY KEY (MaLop, MaGV, HK),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop),
	FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);

CREATE TABLE LopHP (
    MaLopHP VARCHAR(11) PRIMARY KEY,
    TenLopHP NVARCHAR(50) NOT NULL,
    HK INT NOT NULL,
	MaMon VARCHAR(6) NOT NULL,
	MaGV VARCHAR(5) NOT NULL,
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon),
    FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);

CREATE TABLE DKMH (
    MaLopHP VARCHAR(11) PRIMARY KEY,
    MaSV VARCHAR(13) NOT NULL,
    DiemTP FLOAT,
	DiemThi FLOAT,
	PhanTramThi FLOAT,
    FOREIGN KEY (MaLopHP) REFERENCES LopHP(MaLopHP),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
