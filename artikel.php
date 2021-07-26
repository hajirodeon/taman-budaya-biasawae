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
$tpl = LoadTpl("template/cp_artikel.html");



nocache;

//nilai
$artkd = nosql($_REQUEST['artkd']);
$filenya = "artikel.php?artkd=$artkd";
$filenyax = "i_index.php";
$filenya_ke = $sumber;






//update
mysqli_query($koneksi, "UPDATE cp_artikel SET jml_dilihat = jml_dilihat + 1 ".
				"WHERE kd = '$artkd'");

		

//rincian
$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
						"WHERE kd = '$artkd'");
$rku = mysqli_fetch_assoc($qku);
$ku_judul = balikin($rku['judul']);
$ku_kategori = balikin($rku['kategori']);
$ku_seniman = balikin($rku['seniman_nama']);
$ku_isi = balikin($rku['isi']);
$ku_filex = balikin($rku['filex']);
$ku_jml_dilihat = nosql($rku['jml_dilihat']);
$ku_jml_suka = nosql($rku['jml_suka']);
$ku_jml_komentar = nosql($rku['jml_komentar']);
$ku_postdate = balikin($rku['postdate']);
$judul = $ku_judul;
$judulku = $judul;
$ku_filex2 = "$sumber/filebox/artikel/$artkd/$ku_filex";
$ku_filex21 = "filebox/artikel/$artkd/$ku_filex";










//detail artikel ////////////////////////////////////////////////////////////////////////////////////////
ob_start();




	
    echo '<section id="about" class="specials">
      <div class="container" data-aos="fade-up">
      	<br>
      	<br>
      	<br>
      	<br>

        <div class="section-title">
          <h2>BERITA/ARTIKEL/OPINI</h2>
          <p>'.$ku_judul.'</p>
        </div>


          <div class="row event-item">
            <div class="col-lg-4">
              <img src="filebox/artikel/'.$artkd.'/'.$ku_filex.'" class="img-fluid" alt="">
            </div>
            <div class="col-lg-8 pt-4 pt-lg-0 content">
              <p class="font-italic">
				[Postdate : <b>'.$ku_postdate.'</b>]. [Kategori : <b>'.$ku_kategori.'</b>].
				<br>
				 [Kontributor : <b>'.$ku_seniman.'</b>].
				<hr>
				
				'.$ku_isi.'
              </p>
            </div>
          </div>		


      
		</div>
    </section>';








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
