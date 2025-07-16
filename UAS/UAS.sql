-- Nama			: Muhammad Azhari Zulfiansyah
-- NIM			: 23241098
-- Prodi/Smt	: PTI/4 C

use pti_mart2;

-- Soal 1
-- Munculkan kode pelanggan, nama produk, qty, harga dan total dari semua produk yang pernah ditransaksikan
-- namun output yang diminta adalah total harga minimal 200k dan diurutkan berdasarkan yang terkecil
select tp.kode_pelanggan, mp.nama_produk, tp.qty, (tp.harga*tp.qty) as total_harga
from ms_produk_dqlab as mp join tr_penjualan_dqlab as tp
on tp.kode_produk = mp.kode_produk
where (tp.harga * tp.qty >= 200000)
order by total_harga asc;

-- Soal 2
-- Tampilkan nama produk, kategori, dan harga dari semua produk yang tidak pernah terjual
select mp.nama_produk, mp.kategori_produk, mp.harga
from ms_produk_dqlab as mp left join tr_penjualan_dqlab as tp
on mp.kode_produk = tp.kode_produk
where tp.nama_produk is null;

-- Soal 3
-- Munculkan kode pelanggan, nama pelanggan, alamat, dan nilai transaksi dari pelanggan yang paling tinggi nilai transaksinya
select mp.kode_pelanggan, mp.nama_pelanggan, mp.alamat, max(tp.harga*tp.qty) as nilai_transaksi
from ms_pelanggan_dqlab as mp join tr_penjualan_dqlab as tp
on mp.kode_pelanggan = tp.kode_pelanggan
order by nilai_transaksi desc;