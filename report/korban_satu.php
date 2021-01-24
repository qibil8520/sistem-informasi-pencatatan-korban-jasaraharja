<!DOCTYPE html>
<html>
    <head>
        <title>Cetak Data KORBAN</title>
        <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>  
    <body onload="print()">
        <!--Menampilkan data detail arsip-->
        <?php
        include '../config/koneksi.php';
        $sql = "SELECT * FROM korban WHERE id_kecelakaan='" . $_GET ['id'] . "'";
        //proses query ke database
        $query = mysqli_query($koneksi, $sql) or die("SQL Detail error");
        //Merubaha data hasil query kedalam bentuk array
        $data = mysqli_fetch_array($query);
        ?>   

        <div class="container">
            <div class='row'>
                <div class="col-sm-12">
                    <!--dalam tabel--->
                    <div class="text-center">
                    <h2>SISTEM INFOMASI PENGOLAHAN DATA KORBAN LAKALANTAS PT JASA RAHARJA</h2>
                        <h4>Jalan Cokroaminoto No. 33, Kisaran <br> Kisaran Barat, Kabupaten Asahan, Sumatera Utara, 21211</h4>
                        <hr>
                        <h3>DATA KORBAN</h3>
                        <table class="table table-bordered table-striped table-hover"> 
                            <tbody>
								
                            <tr>
                            <td width="200">Nama</td> <td><?= $data['nama'] ?></td>
                            </tr>
                            <tr>
                                <td>alamat</td> <td><?= $data['alamat'] ?></td>
                            </tr>
                            <tr>
                                <td>Tempat/tgl lahir</td> <td><?= $data['tmpt_lhr'] ?><?= $data['tgl_lhr'] ?></td>
                            </tr>
                            <tr>
                                <td>Cacar</td> <td><?= $data['cacat'] ?></td>
                            </tr>
                            <tr>
                                <td>Meninggal</td> <td><?= $data['meninggal'] ?></td>
                            </tr>
                            <tr>
                                <td>id kecelakaan</td> <td><?= $data['id_kecelakaan'] ?></td>
                            </tr>
                            </tbody>
                            <tfoot> 
                                <tr>
                                    <td colspan="2" class="text-right">
                                        Kisaran  <?= date("d-m-Y") ?>
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