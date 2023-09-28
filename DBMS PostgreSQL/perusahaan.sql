-- Query DDL untuk membuat database 'perusahaan' jika belum ada
-- CREATE DATABASE perusahaan; -- Or make manually in pgAdmin

-- Query DDL untuk menggunakan database 'perusahaan'
-- \c perusahaan;

-- Query DDL untuk membuat tabel 'Karyawan'
CREATE TABLE Karyawan (
    id SERIAL PRIMARY KEY,
    nip VARCHAR(10) NOT NULL,
    nik VARCHAR(20) NOT NULL,
    nama VARCHAR(255) NOT NULL,
    jenis_kelamin VARCHAR(10) NOT NULL,
    tempat_lahir VARCHAR(255),
    telpon VARCHAR(15),
    agama VARCHAR(50),
    status VARCHAR(50),
    alamat TEXT
);

-- Query DDL untuk membuat tabel 'Cuti'
CREATE TABLE Cuti (
    id SERIAL PRIMARY KEY,
    karyawan_id Foreign Key INT,
    tanggal_cuti DATE,
    jumlah INT,
    FOREIGN KEY (karyawan_id) REFERENCES Karyawan(id)
);

-- Query DDL untuk membuat tabel 'Lembur'
CREATE TABLE Lembur (
    id SERIAL PRIMARY KEY,
    karyawan_id INT,
    tanggal_lembur DATE,
    jumlah INT,
    FOREIGN KEY (karyawan_id) REFERENCES Karyawan(id)
);

-- Query DDL untuk membuat tabel 'Penggajian'
CREATE TABLE Penggajian (
    id SERIAL PRIMARY KEY,
    tanggal DATE,
    keterangan VARCHAR(255),
    karyawan_id INT,
    jumlah_gaji DECIMAL(10, 2),
    jumlah_lembur DECIMAL(10, 2),
    potongan DECIMAL(10, 2),
    total_gaji DECIMAL(10, 2),
    FOREIGN KEY (karyawan_id) REFERENCES Karyawan(id)
);

-- Query DML untuk menginput atau INSERT 50 data dalam tabel Karyawan
INSERT INTO Karyawan (nip, nik, nama, jenis_kelamin, tempat_lahir, telpon, agama, status, alamat)
VALUES
    ('001', '12345', 'John Djie', 'Laki-laki', 'Jakarta', '123-456-7890', 'Islam', 'Kawin', 'Jl. munggur 1'),
    ('002', '54321', 'Jane Doe', 'Perempuan', 'Surabaya', '987-654-3210', 'Kristen', 'Belum Kawin', 'Jl. kaliurang 2'),
    ('003', '67890', 'Bob Smith', 'Laki-laki', 'Bandung', '555-555-5555', 'Buddha', 'Kawin', 'Jl. Cimahi 3'),
    ('004', '98765', 'Alice Smith', 'Perempuan', 'Yogyakarta', '111-222-3333', 'Hindu', 'Belum Kawin', 'Jl. jalan 4'),
    ('005', '24680', 'Eva Johnson', 'Perempuan', 'Semarang', '777-888-9999', 'Kristen', 'Kawin', 'Jl. bebatuan 5'),
    ('006', '13579', 'Siti Rahman', 'Perempuan', 'Medan', '555-123-4567', 'Islam', 'Kawin', 'Jl. Horas 6'),
    ('007', '86420', 'Ahmad Abdullah', 'Laki-laki', 'Makassar', '123-987-6543', 'Islam', 'Belum Kawin', 'Jl. Hasanuddi 17'),
    ('008', '97531', 'Fitria', 'Perempuan', 'Surabaya', '888-777-1111', 'Kristen', 'Kawin', 'Jl. Arwana 38'),
    ('009', '12321', 'David Liem', 'Laki-laki', 'Jakarta', '222-333-4444', 'Buddha', 'Kawin', 'Jl. Flamboyan 9'),
    ('010', '56789', 'Linda Syafitr', 'Perempuan', 'Bandung', '777-333-5555', 'Kristen', 'Belum Kawin', 'Jl. Blimbing 10'),
    ('011', '54321', 'M Rudi', 'Laki-laki', 'Surabaya', '123-987-6543', 'Islam', 'Belum Kawin', 'Jl. Gondogan 11'),
    ('012', '78901', 'Mira Putri', 'Perempuan', 'Bandung', '555-111-2222', 'Hindu', 'Belum Kawin', 'Jl. Banteh 12'),
    ('013', '45678', 'Budi Prapto', 'Laki-laki', 'Semarang', '333-555-7777', 'Kristen', 'Kawin', 'Jl. Merah 13'),
    ('014', '87654', 'Dewi Anjani', 'Perempuan', 'Yogyakarta', '666-888-9999', 'Islam', 'Kawin', 'Jl. Tamsis 14'),
    ('015', '23456', 'Rizky Pratama Putra', 'Laki-laki', 'Papua', '111-222-3333', 'Buddha', 'Belum Kawin', 'Jl. bakti 15'),
    ('016', '98765', 'Susi Anggraini', 'Perempuan', 'Surabaya', '777-999-5555', 'Kristen', 'Kawin', 'Jl. Soto 16'),
    ('017', '54321', 'Baihaqi Rahman', 'Laki-laki', 'Lampung', '123-333-4444', 'Islam', 'Belum Kawin', 'Jl. Begal 17'),
    ('018', '23456', 'Ani Wijaya', 'Perempuan', 'Yogyakarta', '555-777-8888', 'Kristen', 'Kawin', 'Jl. Jakall 18'),
    ('019', '78901', 'Sandy Nugroho', 'Laki-laki', 'Aceh', '111-333-5555', 'Islam', 'Kawin', 'Jl. Bimasakti 19'),
    ('020', '45678', 'Ina Anggi', 'Perempuan', 'Bali', '222-444-6666', 'Hindu', 'Kawin', 'Jl. Jaka 20'),
    ('021', '10101', 'Ahmad Sanjaya', 'Laki-laki', 'Bali', '555-123-4567', 'Hindu', 'Kawin', 'Jl. Jaka 21'),
    ('022', '20202', 'Siti Rahayu', 'Perempuan', 'Magelang', '123-555-9999', 'Kristen', 'Belum Kawin', 'Jl. Magelang 22'),
    ('023', '30303', 'Budi Sutrisno', 'Laki-laki', 'Surakarta', '555-222-4444', 'Islam', 'Kawin', 'Jl. Tridasono 23'),
    ('024', '40404', 'Dewa ari', 'Laki-laki', 'Surakarta', '999-888-7777', 'Islam', 'Kawin', 'Jl. Tridasono 23'),
    ('025', '50505', 'Rizal Prasetyo', 'Laki-laki', 'Medan', '111-666-3333', 'Islam', 'Belum Kawin', 'Jl. Cabi 25'),
    ('026', '60606', 'Linawati', 'Perempuan', 'Bagan Batu', '777-111-5555', 'Kristen', 'Kawin', 'Jl. Batu 26'),
    ('027', '70707', 'M Rahman Rahardi', 'Laki-laki', 'Madura', '222-888-4444', 'Islam', 'Kawin', 'Jl. Takye 28'),
    ('028', '80808', 'Andi Susanto', 'Laki-laki', 'Jakarta', '333-555-9999', 'Islam', 'Belum Kawin', 'Jl. Naif 28'),
    ('029', '90909', 'M Fandy Pratama', 'Laki-laki', 'Jember', '666-111-7777', 'Islam', 'Kawin', 'Jl. Curah 29'),
    ('030', '11112', 'Dina Anggraini', 'Perempuan', 'Balikpapan', '777-999-3333', 'Kristen', 'Kawin', 'Jl. Ketutupan 30'),
    ('031', '13141', 'Budiman Setiawan S', 'Laki-laki', 'Cepu', '444-222-6666', 'Buddha', 'Belum Kawin', 'Jl. Cepa 31'),
    ('032', '15151', 'Mira Indah', 'Perempuan', 'New Delhi', '777-111-3333', 'Islam', 'Kawin', 'Jl. Aca Aca 32'),
    ('033', '17171', 'Budi Santoso', 'Laki-laki', 'Jambi', '333-888-7777', 'Islam', 'Belum Kawin', 'Jl. Olahan 33'),
    ('034', '19191', 'Dewi Setia', 'Perempuan', 'Pekanbaru', '111-555-2222', 'Hindu', 'Kawin', 'Jl. Ocu 34'),
    ('035', '21212', 'Rizky Nugroho', 'Laki-laki', 'Pekanbaru', '444-666-9999', 'Islam', 'Belum Kawin', 'Jl. Kalibata 35'),
    ('036', '23232', 'Susi Susila', 'Perempuan', 'Pekanbaru', '999-555-3333', 'Kristen', 'Kawin', 'Jl. Mojo 36'),
    ('037', '25252', 'Faisal Ramadhan', 'Laki-laki', 'Banjarmasin', '222-111-7777', 'Islam', 'Kawin', 'Jl. Emas 37'),
    ('038', '27272', 'Ani Wijayawiguna', 'Perempuan', 'Banyumas', '777-666-3333', 'Kristen', 'Kawin', 'Jl. Bandar 38'),
    ('039', '29292', 'Sandy Pranoto', 'Laki-laki', 'Banjarnegara', '555-888-2222', 'Islam', 'Kawin', 'Jl. Janti 39'),
    ('040', '31313', 'Dino ', 'Perempuan', 'Ciledup', '222-666-1111', 'Hindu', 'Kawin', 'Jl. Ciealah 40'),
    ('041', '33333', 'Rudi Setiawan', 'Laki-laki', 'Cilacap', '777-333-5555', 'Kristen', 'Kawin', 'Jl. Bankupan 41'),
    ('042', '35353', 'Mira Indah', 'Perempuan', 'Sleman', '555-777-2222', 'Islam', 'Kawin', 'Jl. Meman 42'),
    ('043', '37373', 'Budiman', 'Laki-laki', 'Semedang', '666-111-5555', 'Kristen', 'Belum Kawin', 'Jl. Madang 43'),
    ('044', '39393', 'Dewi Putri', 'Perempuan', 'Ciputat', '888-555-1111', 'Buddha', 'Kawin', 'Jl. Putat 44'),
    ('045', '41414', 'Rizky Putra', 'Laki-laki', 'Surakarta', '777-222-4444', 'Islam', 'Kawin', 'Jl. Kartono 145'),
    ('046', '43434', 'Ahmad Sandi', 'Laki-laki', 'Padang', '555-888-7777', 'Islam', 'Kawin', 'Jl. Panjang 46'),
    ('047', '45454', 'Siti Lestari Putri', 'Perempuan', 'Bandung', '111-333-6666', 'Kristen', 'Belum Kawin', 'Jl. Batikan 47'),
    ('048', '47474', 'Budi Prasetyo Nugroho', 'Laki-laki', 'Madiun', '777-333-1111', 'Islam', 'Belum Kawin', 'Jl. Stadiun Baru 48'),
    ('049', '49494', 'Dewi Rahman', 'Perempuan', 'Blitar', '333-777-8888', 'Kristen', 'Kawin', 'Jl. Banter 49'),
    ('050', '51515', 'Rizal Setia Hati', 'Laki-laki', 'Kediri', '222-555-9999', 'Islam', 'Belum Kawin', 'Jl. Berdiri 50');

-- Query DML untuk menginput INSERT  50 data dalam tabel Cuti
INSERT INTO Cuti (karyawan_id, tanggal_cuti, jumlah)
VALUES
    (1, '2023-01-02', 5),
    (2, '2023-01-05', 3),
    (3, '2023-01-10', 4),
    (4, '2023-01-12', 2),
    (5, '2023-01-15', 6),
    (6, '2023-01-20', 3),
    (7, '2023-01-25', 4),
    (8, '2023-02-02', 2),
    (9, '2023-02-05', 5),
    (10, '2023-02-10', 3),
    (11, '2023-02-15', 4),
    (12, '2023-02-20', 2),
    (13, '2023-02-25', 5),
    (14, '2023-03-02', 3),
    (15, '2023-03-05', 4),
    (16, '2023-03-10', 2),
    (17, '2023-03-15', 5),
    (18, '2023-03-20', 3),
    (19, '2023-03-25', 4),
    (20, '2023-04-02', 2),
    (21, '2023-04-05', 5),
    (22, '2023-04-10', 3),
    (23, '2023-04-15', 4),
    (24, '2023-04-20', 2),
    (25, '2023-04-25', 5),
    (26, '2023-05-02', 3),
    (27, '2023-05-05', 4),
    (28, '2023-05-10', 2),
    (29, '2023-05-15', 5),
    (30, '2023-05-20', 3),
    (31, '2023-05-25', 4),
    (32, '2023-06-02', 2),
    (33, '2023-06-05', 5),
    (34, '2023-06-10', 3),
    (35, '2023-06-15', 4),
    (36, '2023-06-20', 2),
    (37, '2023-06-25', 5),
    (38, '2023-07-02', 3),
    (39, '2023-07-05', 4),
    (40, '2023-07-10', 2),
    (41, '2023-07-15', 5),
    (42, '2023-07-20', 3),
    (43, '2023-07-25', 4),
    (44, '2023-08-02', 2),
    (45, '2023-08-05', 5),
    (46, '2023-08-10', 3),
    (47, '2023-08-15', 4),
    (48, '2023-08-20', 2),
    (49, '2023-08-25', 5),
    (50, '2023-09-02', 3);

-- Query DML untuk menginput INSERT 50 data dalam tabel Lembur
INSERT INTO Lembur (karyawan_id, tanggal_lembur, jumlah)
VALUES
    (1, '2023-01-02', 3),
    (2, '2023-01-05', 4),
    (3, '2023-01-10', 5),
    (4, '2023-01-12', 2),
    (5, '2023-01-15', 6),
    (6, '2023-01-20', 3),
    (7, '2023-01-25', 4),
    (8, '2023-02-02', 2),
    (9, '2023-02-05', 5),
    (10, '2023-02-10', 3),
    (11, '2023-02-15', 4),
    (12, '2023-02-20', 2),
    (13, '2023-02-25', 5),
    (14, '2023-03-02', 3),
    (15, '2023-03-05', 4),
    (16, '2023-03-10', 2),
    (17, '2023-03-15', 5),
    (18, '2023-03-20', 3),
    (19, '2023-03-25', 4),
    (20, '2023-04-02', 2),
    (21, '2023-04-05', 5),
    (22, '2023-04-10', 3),
    (23, '2023-04-15', 4),
    (24, '2023-04-20', 2),
    (25, '2023-04-25', 5),
    (26, '2023-05-02', 3),
    (27, '2023-05-05', 4),
    (28, '2023-05-10', 2),
    (29, '2023-05-15', 5),
    (30, '2023-05-20', 3),
    (31, '2023-05-25', 4),
    (32, '2023-06-02', 2),
    (33, '2023-06-05', 5),
    (34, '2023-06-10', 3),
    (35, '2023-06-15', 4),
    (36, '2023-06-20', 2),
    (37, '2023-06-25', 5),
    (38, '2023-07-02', 3),
    (39, '2023-07-05', 4),
    (40, '2023-07-10', 2),
    (41, '2023-07-15', 5),
    (42, '2023-07-20', 3),
    (43, '2023-07-25', 4),
    (44, '2023-08-02', 2),
    (45, '2023-08-05', 5),
    (46, '2023-08-10', 3),
    (47, '2023-08-15', 4),
    (48, '2023-08-20', 2),
    (49, '2023-08-25', 5),
    (50, '2023-09-02', 3);

-- Query DML untuk menginput INSERT 50 data dalam tabel Penggajian
INSERT INTO Penggajian (tanggal, keterangan, karyawan_id, jumlah_gaji, jumlah_lembur, potongan, total_gaji)
VALUES
    ('2023-09-01', 'Gaji Bulan September', 1, 5000000, 1500000, 500000, 6000000),
    ('2023-09-01', 'Gaji Bulan September', 2, 5500000, 1200000, 600000, 6100000),
    ('2023-09-01', 'Gaji Bulan September', 3, 6000000, 2000000, 700000, 7300000),
    ('2023-09-01', 'Gaji Bulan September', 4, 4800000, 1000000, 400000, 5400000),
    ('2023-09-01', 'Gaji Bulan September', 5, 7000000, 1800000, 800000, 8000000),
    ('2023-09-01', 'Gaji Bulan September', 6, 5200000, 1300000, 600000, 5900000),
    ('2023-09-01', 'Gaji Bulan September', 7, 5800000, 1500000, 700000, 6600000),
    ('2023-09-01', 'Gaji Bulan September', 8, 6200000, 1700000, 800000, 7100000),
    ('2023-09-01', 'Gaji Bulan September', 9, 5000000, 1200000, 400000, 5800000),
    ('2023-09-01', 'Gaji Bulan September', 10, 6700000, 1600000, 700000, 7600000),
    ('2023-09-01', 'Gaji Bulan September', 11, 5300000, 1400000, 600000, 6100000),
    ('2023-09-01', 'Gaji Bulan September', 12, 6000000, 1800000, 700000, 7100000),
    ('2023-09-01', 'Gaji Bulan September', 13, 6400000, 1900000, 800000, 7500000),
    ('2023-09-01', 'Gaji Bulan September', 14, 4900000, 1100000, 400000, 5600000),
    ('2023-09-01', 'Gaji Bulan September', 15, 6900000, 2000000, 900000, 8000000),
    ('2023-09-01', 'Gaji Bulan September', 16, 5100000, 1300000, 600000, 5800000),
    ('2023-09-01', 'Gaji Bulan September', 17, 5600000, 1500000, 700000, 6400000),
    ('2023-09-01', 'Gaji Bulan September', 18, 6200000, 1700000, 800000, 7100000),
    ('2023-09-01', 'Gaji Bulan September', 19, 4800000, 1000000, 400000, 5400000),
    ('2023-09-01', 'Gaji Bulan September', 20, 7000000, 1800000, 900000, 7900000),
    ('2023-09-01', 'Gaji Bulan September', 21, 5400000, 1400000, 600000, 6200000),
    ('2023-09-01', 'Gaji Bulan September', 22, 5800000, 1600000, 700000, 6700000),
    ('2023-09-01', 'Gaji Bulan September', 23, 6200000, 1700000, 800000, 7100000),
    ('2023-09-01', 'Gaji Bulan September', 24, 5000000, 1200000, 400000, 5800000),
    ('2023-09-01', 'Gaji Bulan September', 25, 6800000, 1900000, 900000, 7800000),
    ('2023-09-01', 'Gaji Bulan September', 26, 5500000, 1500000, 600000, 6400000),
    ('2023-09-01', 'Gaji Bulan September', 27, 5900000, 1600000, 700000, 6700000),
    ('2023-09-01', 'Gaji Bulan September', 28, 6400000, 1700000, 800000, 7600000),
    ('2023-09-01', 'Gaji Bulan September', 29, 4900000, 1100000, 400000, 5600000),
    ('2023-09-01', 'Gaji Bulan September', 30, 7000000, 1900000, 900000, 8000000),
    ('2023-09-01', 'Gaji Bulan September', 31, 5300000, 1400000, 600000, 6300000),
    ('2023-09-01', 'Gaji Bulan September', 32, 5800000, 1600000, 700000, 6500000),
    ('2023-09-01', 'Gaji Bulan September', 33, 6200000, 1700000, 800000, 7300000),
    ('2023-09-01', 'Gaji Bulan September', 34, 5000000, 1200000, 400000, 5800000),
    ('2023-09-01', 'Gaji Bulan September', 35, 6800000, 1900000, 900000, 7800000),
    ('2023-09-01', 'Gaji Bulan September', 36, 5500000, 1500000, 600000, 6400000),
    ('2023-09-01', 'Gaji Bulan September', 37, 5900000, 1600000, 700000, 6600000),
    ('2023-09-01', 'Gaji Bulan September', 38, 6400000, 1700000, 800000, 7500000),
    ('2023-09-01', 'Gaji Bulan September', 39, 4900000, 1100000, 400000, 5600000),
    ('2023-09-01', 'Gaji Bulan September', 40, 7000000, 1900000, 900000, 8000000),
    ('2023-09-01', 'Gaji Bulan September', 41, 5200000, 1300000, 600000, 5900000),
    ('2023-09-01', 'Gaji Bulan September', 42, 5800000, 1500000, 700000, 6600000),
    ('2023-09-01', 'Gaji Bulan September', 43, 6200000, 1700000, 800000, 7100000),
    ('2023-09-01', 'Gaji Bulan September', 44, 4800000, 1000000, 400000, 5400000),
    ('2023-09-01', 'Gaji Bulan September', 45, 7000000, 1800000, 900000, 7900000),
    ('2023-09-01', 'Gaji Bulan September', 46, 5100000, 1300000, 600000, 5900000),
    ('2023-09-01', 'Gaji Bulan September', 47, 5600000, 1500000, 700000, 6600000),
    ('2023-09-01', 'Gaji Bulan September', 48, 6200000, 1700000, 800000, 7100000),
    ('2023-09-01', 'Gaji Bulan September', 49, 4800000, 1000000, 400000, 5400000),
    ('2023-09-01', 'Gaji Bulan September', 50, 7000000, 1800000, 900000, 7900000);

-- Query DML untuk mengedit atau UPDATE data dalam tabel Karyawan
UPDATE "Karyawan" SET alamat = 'Jl. Mawar 123' WHERE id = 1; -- Mengganti alamat Karyawan dengan ID 1
UPDATE "Karyawan" SET status = 'Kawin' WHERE nip = '12345'; -- Mengganti status Karyawan dengan NIP '12345'
UPDATE "Karyawan" SET telpon = '555-555-5555' WHERE nik = '1234567890'; -- Mengganti nomor telepon Karyawan dengan NIK '1234567890'

-- Query DML untuk mengedit atau UPDATE data dalam tabel Cuti
UPDATE "Cuti" SET jumlah = 5 WHERE karyawan_id = 2 AND tanggal_cuti = '2023-01-15'; -- Mengganti jumlah cuti Karyawan dengan ID 2 pada tanggal tertentu
UPDATE "Cuti" SET tanggal_cuti = '2023-02-20' WHERE karyawan_id = 3; -- Mengganti tanggal cuti Karyawan dengan ID 3
UPDATE "Cuti" SET jumlah = 7 WHERE karyawan_id = (SELECT id FROM Karyawan WHERE nip = '98765'); -- Mengganti jumlah cuti Karyawan dengan NIP '98765'

-- Query DML untuk mengedit atau UPDATE data dalam tabel Lembur
UPDATE "Lembur" SET jumlah = 4 WHERE karyawan_id = 5 AND tanggal_lembur = '2023-01-10'; -- Mengganti jumlah lembur Karyawan dengan ID 5 pada tanggal tertentu
UPDATE "Lembur" SET tanggal_lembur = '2023-02-15' WHERE karyawan_id = 7; -- Mengganti tanggal lembur Karyawan dengan ID 7
UPDATE "Lembur" SET jumlah = 3 WHERE karyawan_id = (SELECT id FROM Karyawan WHERE nik = '1234567890'); -- Mengganti jumlah lembur Karyawan dengan NIK '1234567890'

-- Query DML untuk mengedit atau UPDATE data dalam tabel Penggajian
UPDATE "Penggajian" SET jumlah_gaji = 7500000 WHERE karyawan_id = 10 AND tanggal = '2023-01-05'; -- Mengganti jumlah gaji Karyawan dengan ID 10 pada tanggal tertentu
UPDATE "Penggajian" SET keterangan = 'Gaji Bulan Februari (Revisi)' WHERE id = 15; -- Mengganti keterangan Penggajian dengan ID 15
UPDATE "Penggajian" SET potongan = 1000000 WHERE karyawan_id = (SELECT id FROM Karyawan WHERE nip = '54321'); -- Mengganti jumlah potongan Penggajian Karyawan dengan NIP '54321'

-- Query DML untuk mencetak atau SELECT data dalam tabel Karyawan, Cuti, Lembur dan Penggajian
SELECT * FROM Karyawan;
SELECT * FROM Cuti;
SELECT * FROM Lembur;
SELECT * FROM Penggajian;
SELECT * FROM Karyawan WHERE nama = 'John Djie'; -- Select Data Karyawan dengan Nama Tertentu
SELECT * FROM Cuti WHERE karyawan_id = 1; -- Select Data Cuti untuk Karyawan Tertentu
SELECT * FROM Lembur WHERE jumlah > 5; -- Select Data Lembur dengan Jumlah Lembur Lebih dari 5 Jam
SELECT * FROM Penggajian WHERE EXTRACT(MONTH FROM tanggal) = 9; -- Select Data Penggajian pada Bulan Tertentu
SELECT * FROM Karyawan WHERE status = 'Belum Kawin'; -- Select Data Karyawan yang Belum Menikah
SELECT * FROM Karyawan WHERE agama = 'Islam'; -- Select Data Karyawan yang Agamanya Islam
SELECT * FROM Penggajian WHERE total_gaji > 5000; -- Select Data Penggajian dengan Total Gaji di Atas 5000
SELECT * FROM Lembur WHERE karyawan_id = 3; -- Select Data Lembur yang Dilakukan oleh Karyawan Tertentu
SELECT * FROM Cuti WHERE tanggal_cuti = '2023-09-15'; -- Select Data Cuti yang Diambil pada Tanggal Tertentu
SELECT * FROM Penggajian WHERE keterangan = 'Bonus'; -- Select Data Penggajian yang Memiliki Keterangan "Bonus"

-- Query DML untuk menghapus atau DELETE data dalam tabel Karyawan, Cuti, Lembur dan Penggajian
DELETE FROM Karyawan WHERE nama="Fitria"; -- Menghapus Karyawan dengan ID Tertentu
DELETE FROM Cuti WHERE karyawan_id = 1; -- Menghapus Cuti untuk Karyawan Tertentu:
DELETE FROM Lembur WHERE jumlah < 3; -- Menghapus Data Lembur dengan Jumlah Lembur Kurang dari 3 Jam:
DELETE FROM Penggajian WHERE total_gaji < 2000; -- Menghapus Data Penggajian dengan Total Gaji di Bawah 2000


-- Query Operator Penghubung AND dan OR 
SELECT * FROM Karyawan WHERE jenis_kelamin = 'Laki-laki' AND status = 'Kawin'; --Mengambil semua data Karyawan yang memiliki jenis kelamin "Laki-laki" dan status "Kawin"
SELECT * FROM Karyawan WHERE jenis_kelamin = 'Laki-laki' OR status = 'Kawin'; -- SELECT * FROM Karyawan WHERE jenis_kelamin = 'Laki-laki' OR status = 'Kawin';

-- Qeury Perhitungan MAX, MIN, SUM, dan COUNT
SELECT MAX(jumlah_gaji) FROM Penggajian; -- Mengambil Gaji tertinggi dari tabel Penggajian
SELECT MIN(jumlah_gaji) FROM Penggajian; -- Mengambil Gaji terendah dari tabel Penggajian
SELECT SUM(jumlah_gaji) FROM Penggajian; -- Menghitung total gaji dari semua entri Penggajian
SELECT COUNT(*) FROM Karyawan; -- Menghitung jumlah total entri dalam tabel Karyawan
SELECT COUNT(*) FROM Karyawan WHERE status = 'Belum Kawin'; -- Menghitung jumlah karyawan yang memiliki status "Belum Kawin"