<?php include "header.php";
    session_start();
      if(!isset($_SESSION['login_user'])) {
        header("location: ../index.php");
      }else{
?>



  <!-- Menu -->
      <div class="container">
        <div class="row">
        <a href="tambah_menu.php" class="btn btn-success mt-3">TAMBAH DAFTAR PAKET</a>
        <?php        
                    include('../koneksi.php');
     
          $id_kategori = $_GET['id_kategori'];
          $kategori = mysqli_query($koneksi, "SELECT * FROM kategori_menu WHERE id_kategori = $id_kategori");
          $kat = mysqli_fetch_assoc($kategori);
          ?>
        <h3 class="mt-3 ml-5">MENU <?php echo $kat['kategori_name'] ?></h3>
        </div>

        <div class="row">
          <?php 
          $query = mysqli_query($koneksi, "SELECT * FROM produk WHERE kategori_menu = $id_kategori");
          $result = mysqli_fetch_all($query, MYSQLI_ASSOC);

          ?>

          <?php foreach($result as $result) : ?>

          <div class="col-md-4 mt-4">
            <div class="card brder-dark">
              <img src="../upload/<?php echo $result['gambar'] ?>" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title font-weight-bold"><?php echo $result['nama_menu'] ?></h5>
               <label class="card-text harga"><strong>Rp.</strong> <?php echo number_format($result['harga']); ?></label><br>
               <p><?php echo $result['stok'] ?></p>
                <a href="edit_menu.php?id_menu=<?php echo $result['id_menu']  ?>" class="btn btn-success btn-sm btn-block">EDIT</a>

                <a href="hapus_menu.php?id_menu=<?php echo $result['id_menu']  ?>" class="btn btn-danger btn-sm btn-block text-light">HAPUS</a>
              </div>
            </div>
          </div>
              <?php endforeach; ?>
            </div>
          </div>

          
  <!-- Akhir Menu -->
<div class="text-right mr-5">
  
  <a href="daftar_menu.php" class="btn btn-danger text-right">Kembali</a>
</div>
 
<?php include "footer.php";
 } ?>