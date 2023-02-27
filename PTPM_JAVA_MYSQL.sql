CREATE DATABASE PTPM_JAVA

USE PTPM_JAVA 

CREATE TABLE PTPM_JAVA.lop (
	id BIGINT auto_increment NOT NULL,
	ma_lop varchar(100) NULL,
	ten_lop varchar(100) NULL,
	so_luong_sv BIGINT NULL,
	CONSTRAINT lop_PK PRIMARY KEY (id),
	CONSTRAINT lop_UN UNIQUE KEY (ma_lop)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE PTPM_JAVA.chuyen_nganh (
	id BIGINT auto_increment NOT NULL,
	ma_chuyen_nganh varchar(100) NULL,
	ten_chuyen_nganh varchar(100) NULL,
	CONSTRAINT chuyen_nganh_PK PRIMARY KEY (id),
	CONSTRAINT chuyen_nganh_UN UNIQUE KEY (ma_chuyen_nganh)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE PTPM_JAVA.sinh_vien (
	id BIGINT auto_increment NOT NULL,
	chuyen_nganh_id BIGINT NULL,
	maSV varchar(100) NULL,
	ten varchar(100) NULL,
	gioi_tinh BIT NULL,
	email varchar(100) NULL,
	CONSTRAINT sinh_vien_PK PRIMARY KEY (id),
	CONSTRAINT sinh_vien_UN UNIQUE KEY (maSV),
	CONSTRAINT sinh_vien_FK FOREIGN KEY (chuyen_nganh_id) REFERENCES PTPM_JAVA.chuyen_nganh(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE PTPM_JAVA.sinh_vien ADD lop_id BIGINT NULL;
ALTER TABLE PTPM_JAVA.sinh_vien ADD CONSTRAINT sinh_vien_FK_1 FOREIGN KEY (lop_id) REFERENCES PTPM_JAVA.lop(id);

CREATE TABLE PTPM_JAVA.`user` (
	id BIGINT auto_increment NOT NULL,
	username varchar(100) NULL,
	password varchar(100) NULL,
	CONSTRAINT user_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO PTPM_JAVA.`user`
(id, username, password)
VALUES(1, 'HangNT169', '$2a$12$sBdXyANxfSVr70Qkbj7ot.lOdvR5A2szJ01yPoqNCh.2ffV5o1Ag.');

INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(1, 'M01', 'IT17317', 40);
INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(2, 'M02', 'IT17312', 39);
INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(3, 'M03', 'IT17316', 40);
INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(4, 'M04', 'IT17319', 38);
INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(5, 'M05', 'IT17320', 40);
INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(6, 'M06', 'IT17307', 37);
INSERT INTO PTPM_JAVA.lop
(id, ma_lop, ten_lop, so_luong_sv)
VALUES(7, 'M07', 'IT17203', 31);

INSERT INTO PTPM_JAVA.chuyen_nganh
(id, ma_chuyen_nganh, ten_chuyen_nganh)
VALUES(1, 'udpm', 'Ứng dụng phần mềm');
INSERT INTO PTPM_JAVA.chuyen_nganh
(id, ma_chuyen_nganh, ten_chuyen_nganh)
VALUES(2, 'ptpm', 'Phát triển phần mềm ');
INSERT INTO PTPM_JAVA.chuyen_nganh
(id, ma_chuyen_nganh, ten_chuyen_nganh)
VALUES(3, 'ltw', 'Lập trình web');
INSERT INTO PTPM_JAVA.chuyen_nganh
(id, ma_chuyen_nganh, ten_chuyen_nganh)
VALUES(4, 'cntt', 'Công nghệ thông tin');

INSERT INTO PTPM_JAVA.sinh_vien
(id, chuyen_nganh_id, maSV, ten, gioi_tinh, email, lop_id)
VALUES(1, 1, 'HE130461', 'Nguyễn Thuý Hằng', 0, 'HangNT169@fpt.edu.vn', 1);
INSERT INTO PTPM_JAVA.sinh_vien
(id, chuyen_nganh_id, maSV, ten, gioi_tinh, email, lop_id)
VALUES(2, 3, 'HE130671', 'Trần Tuấn Phong', 1, 'PhongTT35@fpt.edu.vn', 1);
INSERT INTO PTPM_JAVA.sinh_vien
(id, chuyen_nganh_id, maSV, ten, gioi_tinh, email, lop_id)
VALUES(3, 1, 'HE130462', 'Phạm Gia Khánh', 1, 'KhanhPG@fpt.edu.vn', 1);
INSERT INTO PTPM_JAVA.sinh_vien
(id, chuyen_nganh_id, maSV, ten, gioi_tinh, email, lop_id)
VALUES(4, 2, 'HE130492', 'Vũ Văn Nguyên', 1, 'NguyenVV4@fpt.edu.vn', 2);
INSERT INTO PTPM_JAVA.sinh_vien
(id, chuyen_nganh_id, maSV, ten, gioi_tinh, email, lop_id)
VALUES(5, 4, 'HE134813', 'Nguyễn Hoàng Tiến', 1, 'TienNH21@fpt.edu.vn', 2);
INSERT INTO PTPM_JAVA.sinh_vien
(id, chuyen_nganh_id, maSV, ten, gioi_tinh, email, lop_id)
VALUES(6, 3, 'HE136792', 'Nguyễn Anh Dũng', 1, 'DungNA29@fpt.edu.vn', 1);

