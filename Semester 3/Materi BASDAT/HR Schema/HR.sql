CREATE TABLE adalah perintah yang digunakan untuk membuat sebuah table di database mysql.
ALTER TABLE adalah perintah di database MySQL untuk merubah struktur table baik itu merubah nama table, merubah nama kolom, merubah tipe data, dan lain-lain.
CREATE INDEX  adalah perintah di mysql unutuk membuat sebuah objek dalam sistem database yang dapat mempercepat proses pencarian (query) data. 
CONSTRAINT adalah perintah untuk membuat batasan atau aturan yang ada pada table.
==============================================================================================================================================================
CREATE TABLE  "DAERAH" 
   (	"DAERAH_ID" NUMBER CONSTRAINT "DAERAH_ID_NN" NOT NULL ENABLE, 
	"DAERAH_NAMA" VARCHAR2(25), 
	 CONSTRAINT "DAE_ID_PK" PRIMARY KEY ("DAERAH_ID")
  USING INDEX  ENABLE
   )
   /
======================================================================
CREATE TABLE  "NEGARA" 
   (	"NEGARA_ID" CHAR(2) CONSTRAINT "NEGARA_ID_NN" NOT NULL ENABLE, 
	"NEGARA_NAMA" VARCHAR2(40), 
	"DAERAH_ID" NUMBER, 
	 CONSTRAINT "NEGARA_N_ID_PK" PRIMARY KEY ("NEGARA_ID")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "NEGARA" ADD CONSTRAINT "NEG_DAE_FK" FOREIGN KEY ("DAERAH_ID")
	  REFERENCES  "DAERAH" ("DAERAH_ID") ENABLE
/ 
==========================================================================
CREATE TABLE  "LOKASI" 
   (	"LOKASI_ID" NUMBER(4,0), 
	"JALAN_ALAMAT" VARCHAR2(40), 
	"POS_KODE" VARCHAR2(12), 
	"KOTA" VARCHAR2(30) CONSTRAINT "LOK_KOTA_NN" NOT NULL ENABLE, 
	"STATUS_PROVINSI" VARCHAR2(25), 
	"NEGARA_ID" CHAR(2), 
	 CONSTRAINT "LOK_ID_PK" PRIMARY KEY ("LOKASI_ID")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "LOKASI" ADD CONSTRAINT "LOK_C_ID_FK" FOREIGN KEY ("NEGARA_ID")
	  REFERENCES  "NEGARA" ("NEGARA_ID") ENABLE
/
CREATE INDEX  "LOK_KOTA_IX" ON  "LOKASI" ("KOTA")
/
CREATE INDEX  "LOK_NEGARA_IX" ON  "LOKASI" ("NEGARA_ID")
/
CREATE INDEX  "LOK_STATUS_PROVINSI_IX" ON  "LOKASI" ("STATUS_PROVINSI")
/
===============================================================================
CREATE TABLE  "DEPARTEMEN" 
   (	"DEPARTEMEN_ID" NUMBER(4,0), 
	"DEPARTEMEN_NAMA" VARCHAR2(30) CONSTRAINT "DEPT_NAMA_NN" NOT NULL ENABLE, 
	"MANAJER_ID" NUMBER(6,0), 
	"LOKASI_ID" NUMBER(4,0), 
	 CONSTRAINT "DEPT_ID_PK" PRIMARY KEY ("DEPARTEMEN_ID")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "DEPARTEMEN" ADD CONSTRAINT "DEPT_LOK_FK" FOREIGN KEY ("LOKASI_ID")
	  REFERENCES  "LOKASI" ("LOKASI_ID") ENABLE
/
ALTER TABLE  "DEPARTEMEN" ADD CONSTRAINT "DEPT_MJR_FK" FOREIGN KEY ("MANAJER_ID")
	  REFERENCES  "KARYAWAN" ("KARYAWAN_ID") ENABLE
/
CREATE INDEX  "DEPT_LOKASI_IX" ON  "DEPARTEMEN" ("LOKASI_ID")
/
==================================================================================
CREATE TABLE  "PERKERJAAN_RIWAYAT" 
   (	"KARYAWAN_ID" NUMBER(6,0) CONSTRAINT "PERIW_KARYAWAN_NN" NOT NULL ENABLE, 
	"AWAL_TANGGAL" DATE CONSTRAINT "PERIW_AWAL_TANGGAL_NN" NOT NULL ENABLE, 
	"AKHIR_TANGGAL" DATE CONSTRAINT "PERIW_AKHIR_TANGGGAL_NN" NOT NULL ENABLE, 
	"PEKERJAAN_ID" VARCHAR2(10) CONSTRAINT "PERIW_PEKERJAAN_NN" NOT NULL ENABLE, 
	"DEPARTEMEN_ID" NUMBER(4,0), 
	 CONSTRAINT "PERIW_TANGGAL_JARAKWAKTU" CHECK (end_date > start_date) ENABLE, 
	 CONSTRAINT "PERIW_KAR_ID_AW_TANGGAL_PK" PRIMARY KEY ("KARYAWAN_ID", "AWAL_TANGGAL")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "PEKERJAAN_RIWAYAT" ADD CONSTRAINT "PERIW_DEPT_FK" FOREIGN KEY ("DEPARTEMEN_ID")
	  REFERENCES  "DEPARTEMEN" ("DEPARTEMEN_ID") ENABLE
/
ALTER TABLE  "PEKERJAAN_RIWAYAT" ADD CONSTRAINT "PERIW_KAR_FK" FOREIGN KEY ("KARYAWAN_ID")
	  REFERENCES  "KARYAWAN" ("KARYAWAN_ID") DISABLE
/
ALTER TABLE  "PEKERJAAN_RIWAYAT" ADD CONSTRAINT "PERIW_PEKERJAAN_FK" FOREIGN KEY ("PEKERJAAN_ID")
	  REFERENCES  "PEKERJAAN" ("PEKERJAAN_ID") ENABLE
/
CREATE INDEX  "PERIW_DEPARTEMEN_IX" ON  "PEKERJAAN_RIWAYAT" ("DEPARTEMEN_ID")
/
==============================================================================================
CREATE TABLE  "PEKERJAAN" 
   (	"PEKERJAAN_ID" VARCHAR2(10), 
	"PEKERJAAN_JUDUL" VARCHAR2(35) CONSTRAINT "PEKERJAAN_JUDUL_NN" NOT NULL ENABLE, 
	"MINIMUM_GAJI" NUMBER(6,0), 
	"MAKSIMUM_GAJI" NUMBER(6,0), 
	 CONSTRAINT "PEKERJAAN_ID_PK" PRIMARY KEY ("PEKERJAAN_ID")
  USING INDEX  ENABLE
   )
/
==============================================================================================
CREATE TABLE  "KARYAWAN" 
   (	"KARYAWAN_ID" NUMBER(6,0), 
	"AWAL_NAMA" VARCHAR2(20), 
	"AKHIR_NAMA" VARCHAR2(25) CONSTRAINT "KAR_AWAL_NAMA_NN" NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(25) CONSTRAINT "KAR_EMAIL_NN" NOT NULL ENABLE, 
	"PONSEL_NOMOR" VARCHAR2(20), 
	"REKRUT_TANGGAL" DATE CONSTRAINT "KAR_REKRUT_TANGGAL_NN" NOT NULL ENABLE, 
	"PEKERJAAN_ID" VARCHAR2(10) CONSTRAINT "KAR_PEKERJAAN_NN" NOT NULL ENABLE, 
	"GAJI" NUMBER(8,2), 
	"KOMISI_PERSEN" NUMBER(2,2), 
	"MANAJER_ID" NUMBER(6,0), 
	"DEPARTEMENT_ID" NUMBER(4,0), 
	"BONUS" VARCHAR2(5), 
	 CONSTRAINT "KAR_GAJI_MINIMUM" CHECK (gaji > 0) ENABLE, 
	 CONSTRAINT "KAR_ID_PK" PRIMARY KEY ("KARYAWAN_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "KAR_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "KARYAWAN" ADD CONSTRAINT "KAR_DEPT_FK" FOREIGN KEY ("DEPARTEMEN_ID")
	  REFERENCES  "DEPARTEMEN" ("DEPARTEMEN_ID") ENABLE
/
ALTER TABLE  "KARYAWAN" ADD CONSTRAINT "KAR_PEKERJAAN_FK" FOREIGN KEY ("PEKERJAAN_ID")
	  REFERENCES  "JPEKERJAAN" ("PEKERJAAN_ID") ENABLE
/
ALTER TABLE  "KARYAWAN" ADD CONSTRAINT "KAR_MANAJER_FK" FOREIGN KEY ("MANAJER_ID")
	  REFERENCES  "KARYAWAN" ("KARYAWAN_ID") ENABLE
/
CREATE INDEX  "KAR_DEPARTEMEN_IX" ON  "KARYAWAN" ("DEPARTEMEN_ID")
/
CREATE INDEX  "KAR_PEKERJAAN_IX" ON  "KARYAWAN" ("PEKERJAAN_ID")
/
CREATE INDEX  "KAR_MANAJER_IX" ON  "KARYAWAN" ("MANAJER_ID")
/
CREATE INDEX  "KAR_NAMA_IX" ON  "KARYAWAN" ("AKHIR_NAMA", "AWAL_NAMA")
/
===========================================================================================
