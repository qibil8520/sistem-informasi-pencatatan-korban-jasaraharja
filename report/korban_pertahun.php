<!DOCTYPE html>
<html>
    <head>
        <title>Cetak Data Asuransi Perbulan</title>
        <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body onload="print()">
        <!--Menampilkan data detail arsip-->
        <?php
        include '../config/koneksi.php';
        
        $ambilthn=$_POST['tahun'];
        
        ?>

        <div class="container">
            <div class='row'>
                <div class="col-sm-12">
                    <!--dalam tabel--->
                    <div class="text-center">
                        <h2>SISTEM INFOMASI PENGOLAHAN DATA KORBAN LAKALANTAS PT JASA RAHARJA</h2>
                        <h4>Jalan Cokroaminoto No. 33, Kisaran <br> Kisaran Barat, Kabupaten Asahan, Sumatera Utara, 21211</h4>
                        <hr>
                    
                        <table class="table table-bordered table-striped table-hover">
                        <tbody>
                <thead>
								<tr>
                   <th>No.</th><th>Nama</th><th>Alamat</th><th>Tempat Tanggal lahir</th><th>Cacat</th><th>Meninggal</th><th>nomor kecelakaan</th>
                </tr>
								</thead>
							<tbody>
                            <!--ambil data dari database, dan tampilkan kedalam tabel-->
                            <?php
                            //buat sql untuk tampilan data, gunakan kata kunci select
                            $sql = "SELECT * FROM korban ,  kecelakaan where korban.`id_kecelakaan` = kecelakaan.`id` and substr(tgl_kecelakaan,1,4)='$ambilthn'";
                            $query = mysqli_query($koneksi, $sql) or die("SQL Anda Salah");
                            //Baca hasil query dari databse, gunakan perulangan untuk
                            //Menampilkan data lebh dari satu. disini akan digunakan
                            //while dan fungdi mysqli_fecth_array
                            //Membuat variabel untuk menampilkan nomor urut
                            $nomor = 0;
                            //Melakukan perulangan u/menampilkan data
                            while ($data = mysqli_fetch_array($query)) {
                                $nomor++; //Penambahan satu untuk nilai var nomor
                                ?>
                                <tr>
                                  <td><?= $nomor ?></td>
                                  <td><?= $data['nama'] ?></td>
                                    <td><?= $data['alamat'] ?></td>
                                    <td><?= $data['tmpt_lhr']?> <p></p> <?= $data['tgl_lhr'] ?>   </td>
                                    <td><?= $data['cacat'] ?></td>
                                    <td><?= $data['meninggal'] ?></td>
                                    <td><?= $data['id_kecelakaan'] ?></td>
                                </tr>
                                <!--Tutup Perulangan data-->
                            <?php } ?>
							</tbody>
                        </tbody>

                            <tfoot>
                              <tr>
                                <td colspan="8" class="text-right">
                                        Kisaran,  &nbsp <?= date("d-m-Y") ?>
                                        <br><br><br><br>
                                        <u>Kabag Hukum, S.Hum<strong></u><br>
                                        NIP.102871291416712
									             </td>
								</tr>
							</tfoot>
                        </table>
                    </div>
                </div>
            </div>
    </body>
</html>
