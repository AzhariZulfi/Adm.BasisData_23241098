-- Nama : Muhammad Azhari Zulfiansyah
-- NIM : 23241098
-- Kelas : C

-- melihat database yang ada
show databases;

-- melihat database
use mysql;

-- melihat tabel dalam database mysql
show tables;

-- mendeskripsikan sebuah table yang dipilih, cnth : tabel "user"
describe user;

-- melihat isi tabel user khusus untuk kolom host, user, dan password
select host, user, password from user;