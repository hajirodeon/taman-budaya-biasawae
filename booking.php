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
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
require("inc/class/paging.php");
$tpl = LoadTpl("template/cp_booking.html");



nocache;



//nilai
$filenya = "booking.php";
$judul = "Pesan Tempat/Lokasi"; 
$judulku = $judul; 
$tmpkd = nosql($_REQUEST['tmpkd']);









//isi *START
ob_start();

require("template/js/jumpmenu.js");
require("template/js/number.js");

?>


  
  <script>
  	$(document).ready(function() {
    $('#table-responsive').dataTable( {
        "scrollX": true
    } );
} );
  </script>
  



<?php
	//query
	$qku = mysqli_query($koneksi, "SELECT * FROM m_tempat ".
									"WHERE kd = '$tmpkd'");
	$rku = mysqli_fetch_assoc($qku);
	$ku_kd = balikin($rku['kd']);
	$ku_kode = balikin($rku['kode']);
	$ku_nama = balikin($rku['nama']);
	$ku_kapasitas = balikin($rku['kapasitas']);
	$ku_ket = balikin($rku['ket']);
	$ku_filex = balikin($rku['filex']);



	$e_tglmulai = "$tahun-$bulan-$tanggal";
	$e_tglselesai = "$tahun-$bulan-$tanggal";
	


	
	
    echo '<section id="about" class="specials">
      <div class="container" data-aos="fade-up">
      	<br>
      	<br>
      	<br>
      	<br>

        <div class="section-title">
          <h2>PESAN</h2>
          <p>Tempat/Lokasi</p>
        </div>


          <div class="row event-item">
            <div class="col-lg-6">
              <img src="filebox/tempat/'.$ku_kd.'/'.$ku_filex.'" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 content">
              <h3>'.$ku_nama.'</h3>
              
              <p class="font-italic">
				Kapasitas : <b>'.$ku_kapasitas.'</b> Orang
              </p>
              
              <p class="font-italic">
				'.$ku_ket.'
              </p>
              <br>
              
			  
			  
			  	<div id="ihasilnya">
			  	
					<form id="formx2">
								
					<p>
					Tanggal Mulai :
					<br>
					<input name="c_tglmulai" id="c_tglmulai" type="date" size="10" value="'.$e_tglmulai.'" class="btn-warning" required>
					</p>
	
								
					<p>
					Tanggal Selesai :
					<br>
					<input name="c_tglselesai" id="c_tglselesai" type="date" size="10" value="'.$e_tglselesai.'" class="btn-warning" required>
					</p>
	
					
					<p>
					Tujuan :
					<br>
					<input name="c_tujuan" id="c_tujuan" type="text" value="" class="btn btn-block btn-warning" required>
					</p>
					
					
					<p>
					Jumlah Peserta :
					<br>
					<input name="c_jml_peserta" id="c_jml_peserta" type="text" size="5" value="" class="btn btn-warning"  required> Orang
					</p>
					
				  
				  
				  	<p>
					<input name="tmpkd" id="tmpkd" type="hidden" value="'.$tmpkd.'">
					<input name="btnKRM" id="btnKRM" type="submit" value="PESAN SEKARANG >>" class="btn btn-danger">
					</p>
					
					</form>
					
				</div>
		
            </div>
          </div>		


      
		</div>
    </section>';



//isi
$isi = ob_get_contents();
ob_end_clean();




























//isi *START
ob_start();

require("i_footer.php");

//isi
$i_footer = ob_get_contents();
ob_end_clean();

















require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>