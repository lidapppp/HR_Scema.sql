CREATE TABLE pegawai (
	id_pegawai NUMBER(6,0),
	nama_depan VARCHAR2(20),
	nama_belakang CONSTRAINT peg_nama_blk_nn NOT NULL,
	email VARCHAR2(25) CONSTRAINT peg_email_nn NOT NULL,
	no_telepon VARCHAR(20),
	tanggal_diterima DATE CONSTRAINT peg_tgl_diterima_nn NOT NULL,
	id_pekerjaan VARCHAR2(10) CONSTRAINT peg_id_pekerjaan_nn NOT NULL,
	gaji NUMBER(8,2),
	komisi NUMBER(2,2),
	id_manager NUMBER(6,0),
	id_departemen NUMBER(4,0),
	BONUS VARCHAR2(5),
	CONSTRAINT peg_id_pegawai_pk PRIMARY KEY (id_pegawai)
)

INSERT ALL 
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '17-Jun-1987','AD_PRES',24000, '', '', 90, '')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '21-Sep-1989','AD_VP',17000,'',100,90,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '13-Jan-1993','AD_VP',17000,'',100,90,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '17-Sep-1987','AD_ASST',4400,'',101,10,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '07-Jun-1994','AC_MGR',12000,'',101,110,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '07-Jun-1994','AC_ACCOUNT',8300,'',205,110, '')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '29-Jan-2000','SA_MAN',10500,0.2,100,80,1500)
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '11-May-1996','SA_REP'	11000,0.3,149,80,1700)
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '24-Mar-1998','SA_REP',8600,0.2,149, 80,1250)
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '24-May-1999','SA_REP',7000,0.15,149,'','')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '16-Nov-1999','ST_MAN',5800,'',100,50,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '17-Oct-1995','ST_CLERK',3500,'',124,50,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '29-Jan-1997','ST_CLERK',3100,'',124,50,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '15-Mar-1998','ST_CLERK',2600,'',124,50,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '09-Jul-1998','ST_CLERK', 2500,'',124,50,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '03-Jan-1990','IT_PROG',9000,'',102,60,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '21-May-1991','IT_PROG',6000,'',103,60,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '07-Feb-1999','IT_PROG',4200,'',103,60,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '17-Feb-1996','MK_MAN',13000,'',100,20,'')
	INTO pegawai(id_pegawai, nama_depan, nama_belakang, email, no_telepon, tanggal_diterima, id_pekerjaan, gaji, komisi, id_manager, id_departemen, bonus) 
	VALUES (202, 'Pat', 'Fay'	'PFAY', '603.123.6666', '17-Aug-1997', 'MK_REP',6000,'',201,20,'')

SELECT * FROM DUAL;


------------------------------------------------

CREATE TABLE departemen (
	id_departemen NUMBER(4,0),
	nama_departemen VARCHAR2(30) CONSTRAINT dep_nama_depart_nn NOT NULL,
	id_manager NUMBER(6,0),
	id_lokasi NUMBER(4,0),
	CONSTRAINT id_depat_pk PRIMARY KEY (id_departemen)	
);

INSERT ALL
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (10, Administration, 200, 1700)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (20, Marketing, 201, 1800)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (50, Shipping, 124, 1500)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (60, IT, 103, 1400)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (80, Sales, 149, 2500)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (90, Executive, 100, 1700)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (110, Accounting, 205, 1700)
	INTO departemen (id_departemen, nama_departemen, id_manager, id_lokasi)
	VALUES (190, Contracting, '', 1700)
SELECT * FROM DUAL;

-----------------------------------------------------------------------------

CREATE TABLE pekerjaan (
	id_pekerjaan VARCHAR2(10),
	jabatan VARCHAR2(35) CONSTRAINT jabatan_nn NOT NULL,
	gaji_min NUMBER(6,0),
	gaji_max NUMBER(6,0),
	CONSTRAINT id_pekerjaan_pk PRIMARY KEY (id_pekerjaan)
);

INSERT ALL
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('AD_PRES', 'President', 20000, 40000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('AD_VP', 'Administration Vice President', 15000, 30000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('AD_ASST', 'Administration Assistant', 3000, 6000)('AC_MGR', 'Accounting Manager', 8200, 16000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('AC_MGR', 'Accounting Manager', 8200, 16000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('AC_ACCOUNT', 'Public Accountant', 4200, 9000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('SA_MAN', 'Sales Manager', 10000, 20000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('SA_REP', 'Sales Representative', 6000, 12000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('ST_MAN', 'Stock Manager', 5500, 8500)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('ST_CLERK', 'Stock Clerk', 2000, 5000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('IT_PROG', 'Programmer', 4000, 10000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000)
	INTO pekerjaan (id_pekerjaan, jabatan, gaji_min, gaji_max)
	VALUES ('MK_REP', 'Marketing Representative', 4000, 9000)
SELECT * FROM DUAL;

-------------------------------------------------------------------------

CREATE TABLE riwayat_pekerjaan (
	id_pegawai NUMBER(6,0) CONSTRAINT riw_pegawai_nn NOT NULL,
	tanggal_mulai DATE CONSTRAINT riw_tgl_mulai_nn NOT NULL,
	tanggal_selesai DATE CONSTRAINT riw_tgl_selesai_nn NOT NULL,
	id_pekerjaan VARCHAR2(10) CONSTRAINT riw_pekerjaan_nn NOT NULL,
	id_departemen NUMBER(4,0),
	CONSTRAINT riw_id_peg_tgl_mulai_pk PRIMARY KEY (id_pegawai, tanggal_mulai)
)

INSERT ALL
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (200, '17-Sep-1987', '17-Jun-1993', 'AD_ASST', 90)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (101, '28-Oct-1993', '15-Mar-1997', 'AC_MGR', 110)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (200, '01-Jul-1994', '31-Dec-1998', 'AC_ACCOUNT', 90)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (101, '21-Sep-1989', '27-Oct-1993', 'AC_ACCOUNT', 110)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (176, '01-Jan-1999', '31-Dec-1999', 'SA_MAN', 80)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (176, '24-Mar-1998', '31-Dec-1998', 'SA_REP', 80)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (122, '01-Jan-1999', '31-Dec-1999', 'ST_CLERK', 50)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (114, '24-Mar-1998', '31-Dec-1999', 'ST_CLERK', 50)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (102, '13-Jan-1993', '24-Jul-1998', 'IT_PROG', 60)
	INTO riwayat_pekerjaan (id_pegawai, tanggal_mulai, tanggal_selesai, id_pekerjaan, id_departemen)
	VALUES (201, '17-Feb-1996', '19-Dec-1999', 'MK_REP', 20)
SELECT * FROM DUAL;

-----------------------------------------------------------------------------------------------------------------

CREATE TABLE lokasi (
	id_lokasi NUMBER(4,0),
	nama_jalan VARCHAR2(40),
	kode_pos VARCHAR2(12),
	kota VARCHAR2(30) CONSTRAINT kota_nn NOT NULL,
	provinsi VARCHAR2(25),
	id_negara char(2),
	CONSTRAINT id_lokasi_pk PRIMARY KEY (id_lokasi)
);

INSERT ALL
	INTO lokasi (id_lokasi, nama_jalan, kode_pos, kota, provinsi, id_negara)
	VALUES 1800, '460 Bloor St. W.', 'ON M5S 1X8', 'Toronto', 'Ontario', 'CA'
	INTO lokasi (id_lokasi, nama_jalan, kode_pos, kota, provinsi, id_negara)
	VALUES 2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'
	INTO lokasi (id_lokasi, nama_jalan, kode_pos, kota, provinsi, id_negara)
	VALUES 1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'
	INTO lokasi (id_lokasi, nama_jalan, kode_pos, kota, provinsi, id_negara)
	VALUES 1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'
	INTO lokasi (id_lokasi, nama_jalan, kode_pos, kota, provinsi, id_negara)
	VALUES 1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'
SELECT * FROM DUAL;

-------------------------------------------------------------------------------------------------

CREATE TABLE negara (
	id_negara char(2) CONSTRAINT id_negara_nn NOT NULL,
	nama_negara VARCHAR2(40), 
	id_daerah NUMBER,
	CONSTRAINT neg_id_negara_pk PRIMARY KEY (id_negara)
);

INSERT ALL
	INTO negara (id_negara, nama_negara, id_daerah)
	VALUES ('CA', 'Canada', 2)
	INTO negara (id_negara, nama_negara, id_daerah)
	VALUES ('DE', 'Germany', 1)
	INTO negara (id_negara, nama_negara, id_daerah)
	VALUES ('UK', 'United Kingdom', 1s)
	INTO negara (id_negara, nama_negara, id_daerah)
	VALUES ('US', 'United States of America', 2)
SELECT * FROM DUAL;

----------------------------------------------------------------------------------------------

CREATE TABLE daerah (
	id_daerah NUMBER CONSTRAINT id_daerah_nn NOT NULL,
	nama_daerah VARCHAR2(25),
	CONSTRAINT id_daerah_pk PRIMARY KEY (id_daerah)
);

INSERT ALL
	INTO daerah (id_daerah, nama_daerah)
	VALUES (1, 'Europe')
	INTO daerah (id_daerah, nama_daerah)
	VALUES (2, 'Americas')
	INTO daerah (id_daerah, nama_daerah)
	VALUES (3, 'Asia')
	INTO daerah (id_daerah, nama_daerah)
	VALUES (4, 'Middle East and Africa')
SELECT * FROM DUAL;


------------------------------------------------------------------------------------

ALTER TABLE negara ADD CONSTRAINT wil_neg_fk FOREIGN KEY (id_daerah)
REFERENCES daerah (id_daerah);

ALTER TABLE lokasi ADD CONSTRAINT lok_id_fk FOREIGN KEY (id_negara)
REFERENCES negara (id_negara);

ALTER TABLE departemen ADD CONSTRAINT dep_lok_fk FOREIGN KEY (id_lokasi)
REFERENCES lokasi (id_lokasi);

ALTER TABLE pegawai ADD CONSTRAINT peg_dep_fk FOREIGN KEY (id_departemen)
REFERENCES departemen (id_departemen);

ALTER TABLE pegawai ADD CONSTRAINT peg_pekerjaan_fk FOREIGN KEY (id_pekerjaan)
REFERENCES pekerjaan (id_pekerjaan);

ALTER TABLE pegawai ADD CONSTRAINT peg_manager_fk FOREIGN KEY (id_manager)
REFERENCES pegawai (id_pegawai);

ALTER TABLE departemen ADD CONSTRAINT dep_mana_fk FOREIGN KEY (id_manager)
REFERENCES pegawai (id_pegawai) DISABLE;

ALTER TABLE riwayat_pekerjaan ADD CONSTRAINT ripek_dep_fk FOREIGN KEY (id_departemen)
REFERENCES departemen (id_departemen);

ALTER TABLE riwayat_pekerjaan ADD CONSTRAINT repek_peg_fk FOREIGN KEY (id_pegawai)
REFERENCES pegawai (id_pegawai) DISABLE;

ALTER TABLE riwayat_pekerjaan ADD CONSTRAINT ripek_pek_fk FOREIGN KEY (id_pekerjaan)
REFERENCES pekerjaan (id_pekerjaan);
