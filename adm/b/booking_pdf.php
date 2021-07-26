<?php
//////////////////////////////////////////////////////////////////////
// Taman Budaya BIASAWAE v1.0                                       //
// Web Informasi Taman Budaya untuk Kesenian                        //
// company profile, akses user seniman, akses user penyewa tempat   //
//////////////////////////////////////////////////////////////////////
// Dikembangkan oleh : Agus Muhajir                                 //
// E-Mail : hajirodeon@gmail.com                                    //
// HP/SMS/WA : 081-829-88-54                                        //
// source code : http://github.com/hajirodeon                       //
//////////////////////////////////////////////////////////////////////



session_start();


//ambil nilai
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/class/paging.php");



nocache;



//nilai
$filenya = "booking_pdf.php"; 
$judulku = $judul; 
$bookkd = nosql($_REQUEST['bookkd']);
$bookkode = nosql($_REQUEST['bookkode']);
$judul = "Rincian Pesan : $bookkode";







require_once("../../inc/class/dompdf/autoload.inc.php");

use Dompdf\Dompdf;
$dompdf = new Dompdf();









//isi *START
ob_start();

?>


  
  <script>
  	$(document).ready(function() {
    $('#table-responsive').dataTable( {
        "scrollX": true
    } );
} );
  </script>
  



<?php
echo '<form action="'.$filenya.'" method="post" name="formx2" id="formx2" enctype="multipart/form-data">';

//detail 
$qyukx = mysqli_query($koneksi, "SELECT * FROM sewa_tempat ".
						"WHERE kd = '$bookkd' ".
						"AND kodebooking = '$bookkode'");
$ryukx = mysqli_fetch_assoc($qyukx);
$tyukx = mysqli_num_rows($qyukx);


//jika ada
if (!empty($tyukx))
	{
	$b_kode = balikin($ryukx['kodebooking']);
	$b_booking_postdate = balikin($ryukx['booking_postdate']);
	$b_tempat_kd = balikin($ryukx['tempat_kd']);
	$b_tempat_nama = balikin($ryukx['tempat_nama']);
	$b_tgl_berangkat = balikin($ryukx['tgl_mulai']);
	$b_tgl_pulang = balikin($ryukx['tgl_selesai']);
	$b_p_nama = balikin($ryukx['penyewa_nama']);
	$b_tujuan = balikin($ryukx['tujuan']);
	$b_jml_peserta = balikin($ryukx['jml_peserta']);


	$warnaheader = "orange";
	$warnatext = "black";

	echo '<h3>RINCIAN PESAN TEMPAT/LOKASI TAMAN BUDAYA BIASAWAE</h3>

		
	<p>
	<div class="table-responsive">
	<table class="table" border="1" cellspacing="0" cellpadding="5" width="100%">
	<thead>
	
	<tr valign="top" bgcolor="'.$warnaheader.'">
	<td align="center"><strong><font color="'.$warnatext.'">NAMA TEMPAT/LOKASI</font></strong></td>
	</tr>
	</thead>
	<tbody>';
	
		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td align="center"><h3>'.$b_tempat_nama.'</h3></td>
		</tr>';
	
	
	echo '</tbody>
	</table>
	</div>
	
	</p>
	
	
	
	
	<p>
	<div class="table-responsive">
	<table class="table" border="1" cellspacing="0" cellpadding="5" width="100%">
	<thead>
	
	<tr valign="top" bgcolor="'.$warnaheader.'">
	<td align="center"><strong><font color="'.$warnatext.'">KODE BOOKING</font></strong></td>
	</tr>
	</thead>
	<tbody>';
	
		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td align="center"><h3>'.$b_kode.'</h3></td>
		</tr>';
	
	
	echo '</tbody>
	</table>
	</div>
	
	</p>


	
	<p>
	Nama Pemesan :
	<br>
	<b>'.$b_p_nama.'</b>
	</p>
	
	
	
	<p>
	Tanggal Mulai :
	<br>
	<b>'.$b_tgl_berangkat.'</b>
	</p>
	
	<p>
	Tanggal Selesai :
	<br>
	<b>'.$b_tgl_pulang.'</b>
	</p>
	
	<p>
	Tujuan :
	<br>
	<b>'.$b_tgl_berangkat.'</b>
	</p>
	
	<p>
	Jumlah Peserta :
	<br>
	<b>'.$b_jml_peserta.'</b>
	</p>';
	}

else
	{
	echo '<font color="red">
	<h3>TIDAK DITEMUKAN...!!</h3>
	</font>';
	}
	
echo '</form>';


//isi
$isi = ob_get_contents();
ob_end_clean();











$dompdf->loadHtml($isi);

// Setting ukuran dan orientasi kertas
$dompdf->setPaper('A4', 'potrait');
// Rendering dari HTML Ke PDF
$dompdf->render();


$pdf = $dompdf->output();

ob_end_clean();

// Melakukan output file Pdf
//$dompdf->stream('raport-$nis-$ku_nama2.pdf');
$dompdf->stream('booking-'.$bookkode.'.pdf');








require("../../inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>