<?php include "header.php";
    session_start();
      if(!isset($_SESSION['login_user'])) {
        header("location: ../index.php");
      }else{
?>



  <!-- Menu -->    
      <div class="container">
        <div class="judul text-center mt-5">
          <h3 class="font-weight-bold">MENDOANSKUAD PHOTOGRAFY</h3>
          <h5>LARANGAN, BREBES, JAWA TENGAH, 52262
          <br>Buka Jam <strong>08:00 - 23:00</strong></h5>
        </div>

        <div class="row mb-5 mt-5 ">
          <div class="col-md-6 d-flex justify-content-end">
            <div class="card bg-dark text-white border-light">
              <img src="../images/background/2.jpg" class="card-img" alt="Lihat Daftar Menu">
              <div class="card-img-overlay mt-5 text-center">
               <a href="menu_pembeli.php" class="btn btn-primary">LIHAT DAFTAR PAKET</a>
              </div>
            </div>
          </div>

          <div class="col-md-6 d-flex justify-content-start">
            <div class="card bg-dark text-white border-light">
              <img src="../images/background/2.jpg" class="card-img" alt="Lihat Pesanan">
              <div class="card-img-overlay mt-5 text-center">
               <a href="pesanan_pembeli.php" class="btn btn-primary">LIHAT PESANAN</a>
              </div>
            </div>
          </div>
        </div>
      </div>
  <!-- Akhir Menu -->


<?php include "footer.php";
} ?>