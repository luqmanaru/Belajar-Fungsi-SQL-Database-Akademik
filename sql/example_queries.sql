-- 1. Fungsi Agregasi
-- SUM: Menghitung total SKS semester 1
SELECT SUM(sks) AS 'Total SKS Semester 1'
FROM matakuliah
WHERE semester = '1';

-- MIN: Mencari SKS terkecil semester 2
SELECT MIN(sks) AS 'SKS terkecil semester 2'
FROM matakuliah
WHERE semester = '2';

-- MAX: Mencari SKS terbesar semester 1
SELECT MAX(sks) AS 'SKS terbesar semester 1'
FROM matakuliah
WHERE semester = '1';

-- AVG: Menghitung rata-rata SKS semester 2
SELECT AVG(sks) AS 'SKS rata-rata semester 2'
FROM matakuliah
WHERE semester = '2';

-- COUNT: Menghitung jumlah mahasiswa
SELECT COUNT(nim) AS 'Jumlah seluruh mahasiswa'
FROM mahasiswa;

-- COUNT dengan kondisi: Menghitung mahasiswa wanita
SELECT COUNT(nim) AS 'Jumlah mahasiswa wanita'
FROM mahasiswa
WHERE j_kelamin = 'Wanita';

-- 2. Fungsi Tanggal
-- DATEADD: Menambahkan 30 hari ke tanggal lahir
SELECT nama_m, tgl_lhr_m, 
       DATEADD(day, 30, tgl_lhr_m) AS '30 hari setelah lahir'
FROM mahasiswa
WHERE tpt_lhr_m = 'Bogor';

-- DATEADD: Menambahkan 5 bulan ke tanggal lahir
SELECT nama_m, tgl_lhr_m, 
       DATEADD(month, 5, tgl_lhr_m) AS '5 bulan setelah lahir'
FROM mahasiswa
WHERE tpt_lhr_m = 'Jakarta';

-- DATEADD: Menambahkan 5 tahun ke tanggal lahir
SELECT nama_m, tgl_lhr_m, 
       DATEADD(year, 5, tgl_lhr_m) AS '5 tahun setelah lahir'
FROM mahasiswa
WHERE tpt_lhr_m IN ('Jakarta', 'Bekasi');

-- DATEDIFF: Menghitung selisih bulan dari tanggal lahir
SELECT nama_m, tgl_lhr_m, GETDATE() AS 'Tanggal sekarang',
       DATEDIFF(month, tgl_lhr_m, GETDATE()) AS 'Jumlah bulan'
FROM mahasiswa
WHERE tpt_lhr_m = 'Jakarta';

-- DATEPART: Mengambil bagian tanggal (hari, bulan, tahun)
SELECT nama_m, tgl_lhr_m, 
       DATEPART(day, tgl_lhr_m) AS 'Tanggal lahir',
       DATEPART(month, tgl_lhr_m) AS 'Bulan lahir',
       DATEPART(year, tgl_lhr_m) AS 'Tahun lahir'
FROM mahasiswa
WHERE tpt_lhr_m = 'Bogor';

-- DATENAME: Mendapatkan nama bulan
SELECT nama_m, tgl_lhr_m, 
       DATENAME(month, tgl_lhr_m) AS 'Nama bulan lahir'
FROM mahasiswa
WHERE tpt_lhr_m = 'Jakarta';

-- 3. Fungsi Lainnya
-- GETDATE: Mendapatkan tanggal sekarang
SELECT GETDATE() AS 'Tanggal hari ini',
       DATEADD(day, 15, GETDATE()) AS '15 hari dari sekarang';

-- DISTINCT: Menampilkan kota unik mahasiswa
SELECT DISTINCT kota_m AS 'Kota alamat mahasiswa'
FROM mahasiswa;

-- ORDER BY: Mengurutkan data
SELECT m.nim, m.nama_m, j.nama_jur, j.jenjang
FROM mahasiswa m
INNER JOIN jurusan j ON m.kode_jur = j.kode_jur
WHERE j.nama_jur != 'Teknik Komputer'
ORDER BY m.nama_m DESC;

-- GROUP BY: Mengelompokkan data
SELECT j.nama_jur AS 'Jurusan', COUNT(m.nim) AS 'Jumlah mahasiswa'
FROM mahasiswa m
INNER JOIN jurusan j ON m.kode_jur = j.kode_jur
GROUP BY j.nama_jur
ORDER BY j.nama_jur;
