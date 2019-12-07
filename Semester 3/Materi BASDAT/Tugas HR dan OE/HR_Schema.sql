CREATE TABLE daerah (
	id_daerah INT (11) UNSIGNED NOT NULL,
	nama_daerah VARCHAR(25),
	PRIMARY KEY (id_daerah)
	);

CREATE TABLE negara (
	id_negara  CHAR(2) NOT NULL,
	nama_negara  VARCHAR(40),
	id_negara  INT (11) UNSIGNED NOT NULL,
	PRIMARY KEY (id_negara)
);


CREATE TABLE lokasi (
	id_lokasi INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
	alamat_jalan VARCHAR(40),
	kode_pos VARCHAR(12),
	kota VARCHAR(30) NOT NULL,
	status_provinsi VARCHAR(25),
	id_negara CHAR(2) NOT NULL,
	PRIMARY KEY (id_lokasi)
	);

CREATE TABLE departemen (
	id_departemen INT (11) UNSIGNED NOT NULL,
	nama_departemen VARCHAR(30) NOT NULL,
	id_manajer INT (11) UNSIGNED,
	id_lokasi INT (11) UNSIGNED,
	PRIMARY KEY (id_departemen)
	);

CREATE TABLE pekerjaan (
	id_pekerjaan VARCHAR(10) NOT NULL,
	judul_pekerjaan VARCHAR(35) NOT NULL,
	gaji_minimum DECIMAL(8, 0) UNSIGNED,
	gaji_maksimum DECIMAL(8, 0) UNSIGNED,
	PRIMARY KEY (id_pekerjaan)
	);

CREATE TABLE karyawan(
	id_karyawan INT (11) UNSIGNED NOT NULL,
	nama_pertama VARCHAR(20),
	nama_terakhir VARCHAR(25) NOT NULL,
	email VARCHAR(25) NOT NULL,
	nomor_ponsel VARCHAR(20),
	tanggal_rekrut DATE NOT NULL,
	id_pekerjaan VARCHAR(10) NOT NULL,
	gaji DECIMAL(8, 2) NOT NULL,
	persen_komisi DECIMAL(2, 2),
	id_manajer INT (11) UNSIGNED,
	id_departemen INT (11) UNSIGNED,
	PRIMARY KEY (id_karyawan)
	);

CREATE TABLE riwayat_pekerjaan (
	id_pekerjaan INT (11) UNSIGNED NOT NULL,
	tanggal_mulai DATE NOT NULL,
	tanggal_akhir DATE NOT NULL,
	id_pekerjaan VARCHAR(10) NOT NULL,
	id_departemen INT (11) UNSIGNED NOT NULL
	);

ALTER TABLE riwayat_pekerjaan ADD UNIQUE INDEX (
	id_karyawan,
	tanggal_mulai
	);


CREATE VIEW melihat_detail_karyawan
AS
SELECT e.id_karyawan,
	e.id_pekerjaan,
	e.id_manajer,
	e.id_departemen,
	d.id_lokasi,
	l.id_negara,
	e.nama_pertama,
	e.nama_terakhir,
	e.gaji,
	e.persen_komisi,
	d.nama_departemen,
	j.judul_pekerjaan,
	l.kota,
	l.status_provinsi,
	c.nama_negara,
	r.nama_wilayah
FROM karyawan e,
	departemen d,
	pekerjaan j,
	lokasi l,
	negara c,
	wilayah r
	
WHERE e.id_karyawan = d.id_karyawan
	AND d.id_lokasi = l.id_lokasi
	AND l.id_negara = c.id_negara
	AND c.id_wilayah = r.id_wilayah
	AND j.id_pekerjaan = e.id_pekerjaan;

ALTER TABLE negara ADD FOREIGN KEY (id_wilayah) REFERENCES wilayah(id_wilayah);    
ALTER TABLE lokasi ADD FOREIGN KEY (id_negara) REFERENCES negara(id_negara);
ALTER TABLE departemen ADD FOREIGN KEY (id_lokasi) REFERENCES lokasi(id_lokasi);
ALTER TABLE karyawan ADD FOREIGN KEY (id_pekerjaan) REFERENCES pekerjaan(id_pekerjaan);
ALTER TABLE karyawan ADD FOREIGN KEY (id_departemen) REFERENCES departemen(id_departemen);
ALTER TABLE karyawan ADD FOREIGN KEY (id_manajer) REFERENCES karyawan(id_karyawan);
ALTER TABLE departemen ADD FOREIGN KEY (id_manajer) REFERENCES karyawan (id_karyawan);
ALTER TABLE riwayat_pekerjaan ADD FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan);
ALTER TABLE riwayat_pekerjaan ADD FOREIGN KEY (id_pekerjaan) REFERENCES pekerjaan(id_pekerjaan);
ALTER TABLE riwayat_pekerjaan ADD FOREIGN KEY (id_departemen) REFERENCES departemen(id_departemen);
