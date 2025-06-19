# Belajar-Fungsi-SQL-Database-Akademik
Repository ini berisi berbagai contoh penggunaan fungsi SQL dalam konteks sistem informasi akademik.

---

## 📌 Fungsi yang Dicontohkan
- Fungsi Agregasi: `SUM`, `MIN`, `MAX`, `AVG`, `COUNT`
- Fungsi Tanggal: `DATEADD`, `DATEDIFF`, `DATEPART`, `DATENAME`, `GETDATE`
- Fungsi Lainnya: `DISTINCT`, `ORDER BY`, `GROUP BY`

---

## 🛠️ Teknologi
- SQL (MySQL/PostgreSQL/SQL Server compatible)

---

## 📋 Contoh Query

### 1. Fungsi Agregasi
```sql
-- Menghitung total SKS semester 1
SELECT SUM(sks) AS 'Total SKS Semester 1'
FROM matakuliah
WHERE semester = '1';
```

### 2. Fungsi Tanggal
```sql
-- Menambahkan 30 hari ke tanggal lahir
SELECT nama_m, DATEADD(day, 30, tgl_lhr_m) AS '30 hari setelah lahir'
FROM mahasiswa
WHERE tpt_lhr_m = 'Bogor';
```

###  3. Fungsi Lainnya
```sql
-- Menampilkan kota unik mahasiswa
SELECT DISTINCT kota_m AS 'Kota alamat mahasiswa'
FROM mahasiswa;
```

---

**luqmanaru**
