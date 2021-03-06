<section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Daftar Booking</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li class="active">Tanggal Yang Sudah Terbooking</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- real wedding listing -->

  <section id="real-wedding-listing" class="real-wedding-listing">
  <div class="row">
    <div class="col-lg-6">
      <form action="" method="post" class="form-inline">
        <div class="form-control">
          <input type="text" class=" datepicker" name="tgl_filter" placeholder="Cari Tahun" autocomplete="off">
          <button type="submit" name="caritgl" class="btn btn-dark">Cari</button>
        </div>
      </form>
      <?php 
        if(isset($_POST['caritgl'])){         
      ?>
    </div>
  </div>
  <div class="table-responsive" style="padding:20px">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <th>ID Booking</th>
                    <th>Tanggal</th>
                    <th>Nama Item</th>
                    <th>Nama Lengkap</th>
                    <th>Alamat</th>
                    <th>Nomor Hp</th>
                    <th>Email</th>
                    <th>Keterangan</th>                  
                </tr>
            </thead>
            <tbody>
                <?php
                    require '../pdo/Booking.php';
                    $booking = new Booking();
                    $tgl=$_POST['tgl_filter'];
                    $tampil = $booking->read_booking_2($tgl);
                    if($tgl==""){
                      echo "<script>alert('Harap Masukkan Tahun Yang ingin Anda Lihat')</script>";
                    }else
                    while($data = $tampil->fetch(PDO::FETCH_OBJ)){                     
                ?>
                <tr>
                    <td><?= $data->id_boking ?></td>
                    <td><?= date('d-m-Y',strtotime($data->tanggal))?></td>
                    <td><?= $data->nama_item ?></td>
                    <td><?= $data->nama_lengkap ?></td>
                    <td><?= $data->alamat ?></td>
                    <td><?= $data->no_hp ?></td>
                    <td><?= $data->email ?></td>
                    <td><?= $data->keterangan_item ?></td>
                </tr>
                <?php }
                }
               ?>
                
            </tbody>
        </table>
    </div>
  </section>
<!-- daftar_boking end -->