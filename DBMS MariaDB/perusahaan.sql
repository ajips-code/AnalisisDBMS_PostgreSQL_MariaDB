-- Membuat database 'perusahaan'
CREATE DATABASE perusahaan;

-- Menggunakan database 'perusahaan'
USE perusahaan;

-- Membuat tabel 'Karyawan'
CREATE TABLE Karyawan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nip VARCHAR(10) NOT NULL,
    nik VARCHAR(20) NOT NULL,
    nama VARCHAR(255) NOT NULL,
    jenis_kelamin ENUM('Laki-laki', 'Perempuan') NOT NULL,
    tempat_lahir VARCHAR(255),
    telpon VARCHAR(15),
    agama VARCHAR(50),
    status VARCHAR(50),
    alamat TEXT
);

-- Membuat tabel 'Cuti'
CREATE TABLE Cuti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    karyawan_id INT,
    tanggal_cuti DATE,
    jumlah INT,
    FOREIGN KEY (karyawan_id) REFERENCES Karyawan(id)
);

-- Membuat tabel 'Lembur'
CREATE TABLE Lembur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    karyawan_id INT,
    tanggal_lembur DATE,
    jumlah INT,
    FOREIGN KEY (karyawan_id) REFERENCES Karyawan(id)
);

-- Membuat tabel 'Penggajian'
CREATE TABLE Penggajian (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tanggal DATE,
    keterangan VARCHAR(255),
    karyawan_id INT,
    jumlah_gaji DECIMAL(10, 2),
    jumlah_lembur DECIMAL(10, 2),
    potongan DECIMAL(10, 2),
    total_gaji DECIMAL(10, 2),
    FOREIGN KEY (karyawan_id) REFERENCES Karyawan(id)
);
