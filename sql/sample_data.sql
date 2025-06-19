-- Data Jurusan
INSERT INTO jurusan (kode_jur, nama_jur, jenjang) VALUES 
('TI', 'Teknik Informatika', 'S1'),
('SI', 'Sistem Informasi', 'S1'),
('TK', 'Teknik Komputer', 'D3');

-- Data Mahasiswa
INSERT INTO mahasiswa (nim, nama_m, tpt_lhr_m, tgl_lhr_m, j_kelamin, alm_m, kota_m, agama_m, telepon_m, kode_jur) VALUES 
('101031001', 'Dewi Nurbaini', 'Bekasi', '1987-10-12', 'Wanita', 'Jl. Dahlia I Blok BC 2/3', 'Bekasi Utara', 'Islam', '021-8791290', 'TI'),
('101031002', 'Deni Hermawan', 'Jakarta', '1980-01-17', 'Pria', 'Jl. Melati Raya No.3', 'Cikarang', 'Islam', '021-8911122', 'SI'),
('101031003', 'Rini Hapsari', 'Bogor', '1981-08-18', 'Wanita', 'Jl. Cikarang Baru No.2', 'Cikarang', 'Islam', '021-8998877', 'TI');

-- Data Matakuliah
INSERT INTO matakuliah (kdmk, nama_mk, sks, semester) VALUES 
('MPK131201', 'Pancasila', 2, '1'),
('MKK231203', 'Matematika Diskrit I', 3, '1'),
('SIK332101', 'Basis Data', 3, '3'),
('TIK432202', 'Pemrograman Web', 4, '4');

-- Data Nilai
INSERT INTO nilai (nim, kdmk, smt, nilai_absen, nilai_tugas, nilai_uts, nilai_uas) VALUES 
('101031001', 'MPK131201', '1', 12, 78, 89, 55),
('101031001', 'MKK231203', '1', 15, 85, 75, 80),
('101031002', 'SIK332101', '3', 10, 80, 70, 75),
('101031003', 'TIK432202', '4', 18, 90, 85, 88);
