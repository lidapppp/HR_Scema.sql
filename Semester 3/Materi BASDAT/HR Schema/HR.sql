CREATE TABLE adalah perintah yang digunakan untuk membuat sebuah table di database mysql.
ALTER TABLE adalah perintah di database mysql untuk merubah struktur table baik itu merubah nama table, merubah nama kolom, merubah tipe data, dan lain-lain.
CONSTRAINT adalah perintah untuk membuat batasan atau aturan yang ada pada table.
==============================================================================================================================================================
CREATE TABLE pegawai (
	id_pegawai NUMBER(6),
	nama_depan VARCHAR2(20),
	nama_belakang VARCHAR2(20) CONSTRAINT peg_nama_blk_nn NOT NULL,
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
);
========================================================================
CREATE TABLE departemen (
	id_departemen NUMBER(4),
	nama_departemen VARCHAR2(30) CONSTRAINT dep_nama_depart_nn NOT NULL,
	id_manager NUMBER(6),
	id_lokasi NUMBER(4),
	CONSTRAINT id_depat_pk PRIMARY KEY (id_departemen)	
);
=========================================================================
CREATE TABLE pekerjaan (
	id_pekerjaan VARCHAR2(10),
	jabatan VARCHAR2(35) CONSTRAINT jabatan_nn NOT NULL,
	gaji_min NUMBER(6),
	gaji_max NUMBER(6),
	CONSTRAINT id_pekerjaan_pk PRIMARY KEY (id_pekerjaan)
);
=========================================================================
CREATE TABLE riwayat_pekerjaan (
	id_pegawai NUMBER(6) CONSTRAINT riw_pegawai_nn NOT NULL,
	tanggal_mulai DATE CONSTRAINT riw_tgl_mulai_nn NOT NULL,
	tanggal_selesai DATE CONSTRAINT riw_tgl_selesai_nn NOT NULL,
	id_pekerjaan VARCHAR2(10) CONSTRAINT riw_pekerjaan_nn NOT NULL,
	id_departemen NUMBER(4),
	CONSTRAINT riw_id_peg_tgl_mulai_pk PRIMARY KEY (id_pegawai, tanggal_mulai)
);
========================================================================
CREATE TABLE lokasi (
	id_lokasi NUMBER(4),
	nama_jalan VARCHAR2(40),
	kode_pos VARCHAR2(12),
	kota VARCHAR2(30) CONSTRAINT kota_nn NOT NULL,
	provinsi VARCHAR2(25),
	id_negara char(2),
	CONSTRAINT id_lokasi_pk PRIMARY KEY (id_lokasi)
);
========================================================================
CREATE TABLE negara (
	id_negara char(2) CONSTRAINT id_negara_nn NOT NULL,
	nama_negara VARCHAR2(40), 
	id_daerah NUMBER,
	CONSTRAINT neg_id_negara_pk PRIMARY KEY (id_negara)
);
========================================================================
CREATE TABLE daerah (
	id_daerah NUMBER CONSTRAINT id_daerah_nn NOT NULL,
	nama_daerah VARCHAR2(25),
	CONSTRAINT id_daerah_pk PRIMARY KEY (id_daerah)
);
=========================================================================
ALTER TABLE negara ADD CONSTRAINT dae_neg_fk FOREIGN KEY (id_daerah)
REFERENCES daerah (id_daerah);
=========================================================================
ALTER TABLE lokasi ADD CONSTRAINT lok_id_fk FOREIGN KEY (id_negara)
REFERENCES negara (id_negara);
=========================================================================
ALTER TABLE departemen ADD CONSTRAINT dep_lok_fk FOREIGN KEY (id_lokasi)
REFERENCES lokasi (id_lokasi);
=========================================================================
ALTER TABLE pegawai ADD CONSTRAINT peg_dep_fk FOREIGN KEY (id_departemen)
REFERENCES departemen (id_departemen);
=========================================================================
ALTER TABLE pegawai ADD CONSTRAINT peg_pekerjaan_fk FOREIGN KEY (id_pekerjaan)
REFERENCES pekerjaan (id_pekerjaan);
=========================================================================
ALTER TABLE pegawai ADD CONSTRAINT peg_manager_fk FOREIGN KEY (id_manager)
REFERENCES pegawai (id_pegawai);
=========================================================================
ALTER TABLE departemen ADD CONSTRAINT dep_mana_fk FOREIGN KEY (id_manager)
REFERENCES pegawai (id_pegawai) DISABLE;
=========================================================================
ALTER TABLE riwayat_pekerjaan ADD CONSTRAINT ripek_dep_fk FOREIGN KEY (id_departemen)
REFERENCES departemen (id_departemen);
=========================================================================
ALTER TABLE riwayat_pekerjaan ADD CONSTRAINT repek_peg_fk FOREIGN KEY (id_pegawai)
REFERENCES pegawai (id_pegawai) DISABLE;
=========================================================================
ALTER TABLE riwayat_pekerjaan ADD CONSTRAINT ripek_pek_fk FOREIGN KEY (id_pekerjaan)
REFERENCES pekerjaan (id_pekerjaan);
=========================================================================
