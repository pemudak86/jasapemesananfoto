<?php include "header.php";
    session_start();
      if(!isset($_SESSION['login_user'])) {
        header("location: ../index.php");
      }else{
?>



  <!-- Menu -->
      <div class="container">
        <a href="tambah_kategori.php" class="btn btn-success mt-3">TAMBAH KATEGORI MENU</a>
        <div class="row">

          <?php 

          include('../koneksi.php');

          $query = mysqli_query($koneksi, 'SELECT * FROM kategori_menu');
          $result = mysqli_fetch_all($query, MYSQLI_ASSOC);
            

          ?>

          <?php foreach($result as $result) : ?>

          <div class="col-md-4 mt-4">
            <div class="card brder-dark">
              <img src="../upload/<?php echo $result['gambar'] ?>" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title font-weight-bold"><?php echo $result['kategori_name'] ?></h5>
              
                <a href="edit_menu.php?id_menu=<?php echo $result['id_kategori']  ?>" class="btn btn-success btn-sm btn-block">EDIT</a>

                <a href="hapus_menu.php?id_menu=<?php echo $result['id_kategori']  ?>" class="btn btn-danger btn-sm btn-block text-light">HAPUS</a>
                <br><br>
                <a href="daftar_paket.php?id_kategori=<?php echo $result['id_kategori'] ?>" class="btn btn-primary btn-sm btn-block text-light">Lihat Detail Menu</a>
              </div>
            </div>
          </div>
              <?php endforeach; ?>
            </div>
          </div>

          
  <!-- Akhir Menu -->

 
<?php include "footer.php";
 } ?>