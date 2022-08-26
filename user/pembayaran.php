<?php 
include "header.php";
include('../koneksi.php');


?>


<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Pembayaran</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="index.php">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Pembayaran</p>
        </div>
    </div>
</div>
<div class="container">
    <h2>Konfirmasi Pembayaran</h2>
    <p>Kirim bukti pembayaran</p>
    <div class="alert alert-info">Total Tagihan Anda <strong>Rp <?php echo number_format($detpem['jumlah_pembelian']) ?></strong> </div>

    <form action="" enctype="multipart/form-data" method="post">
        <div class="form-group">
            <label>Nama Penyetor</label>
            <input type="text" name="nama" placeholder="Masukan nama lengkap" class="form-control">
        </div>
        <div class="form-group">
            <label>Bank</label>
            <input type="text" name="bank" placeholder="Mandiri / BRI / dan lain-lain" class="form-control">
        </div>
        <div class="form-group">
            <label>Jumlah</label>
            <input type="number" name="jumlah" placeholder="jangan gunakan tanda pemisah seperti tanda .(titik) atau pun ,(koma)" min="1" class="form-control">
        </div>
        <div class="form-group">
            <label>Foto Bukti</label>
            <input type="file" name="bukti" class="form-control">
            <p class="text-danger">- foto bukti harus jelas dan formatnya JPG
                <br>- jika yang dikirimkan foto bukti palsu pesanan akan gagal
            </p>
        </div>
<a href="pesanan_pembeli.php">kirim</a>
    </form>
</div>


<?php
include 'footer.php'
?>