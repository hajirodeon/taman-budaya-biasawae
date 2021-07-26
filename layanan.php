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
$tpl = LoadTpl("template/cp_layanan.html");



nocache;

//nilai
$filenya = "layanan.php";
$filenya_ke = $sumber;
$s = cegah($_REQUEST['s']);
$kd = cegah($_REQUEST['kd']);





//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}






/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////














//isi *START
ob_start();


//jika tempat 
if ($s == "tempat")
	{
	$judul = "PELAYANAN : Tempat";
	$judulku = $judul;
	
	
	//query
	$qku = mysqli_query($koneksi, "SELECT * FROM m_tempat ".
									"WHERE kd = '$kd'");
	$rku = mysqli_fetch_assoc($qku);
	$ku_kd = balikin($rku['kd']);
	$ku_kode = balikin($rku['kode']);
	$ku_nama = balikin($rku['nama']);
	$ku_ket = balikin($rku['ket']);
	$ku_filex = balikin($rku['filex']);
	
	
	
	//echo "<h1>$ku_nama</h1>";
	
    echo '<section id="about" class="specials">
      <div class="container" data-aos="fade-up">
      	<br>
      	<br>
      	<br>
      	<br>

        <div class="section-title">
          <h2>PELAYANAN</h2>
          <p>Tempat</p>
        </div>


          <div class="row event-item">
            <div class="col-lg-6">
              <img src="filebox/tempat/'.$ku_kd.'/'.$ku_filex.'" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 content">
              <h3>'.$ku_nama.'</h3>
              <p class="font-italic">
				'.$ku_ket.'
              </p>
            </div>
          </div>		


      
		</div>
    </section>';
    
	}













//jika sop 
if ($s == "sop")
	{
	//query
	$qku = mysqli_query($koneksi, "SELECT * FROM m_sop ".
									"WHERE kd = '$kd'");
	$rku = mysqli_fetch_assoc($qku);
	$ku_kd = balikin($rku['kd']);
	$ku_kode = balikin($rku['kode']);
	$ku_nama = balikin($rku['nama']);
	$ku_ket = balikin($rku['ket']);

	
	$judul = "PELAYANAN S.O.P : $ku_nama";
	$judulku = $judul;
	
	
	
	//echo "<h1>$ku_nama</h1>";
	
    echo '<section id="about" class="specials">
      <div class="container" data-aos="fade-up">
      	<br>
      	<br>
      	<br>
      	<br>

        <div class="section-title">
          <h2>PELAYANAN</h2>
          <p>S.O.P</p>
        </div>


          <div class="row event-item">
            <div class="col-lg-3">
              <img src="template/tbrs/assets/img/pemkot-1.png" class="img-fluid" alt="">
            </div>
            <div class="col-lg-9 pt-4 pt-lg-0 content">
              <h3>'.$ku_nama.'</h3>
              <p class="font-italic">
				'.$ku_ket.'
              </p>
            </div>
          </div>		


      
		</div>
    </section>';
    
	}












//jika kesenian 
if ($s == "kesenian")
	{
	$judul = "PELAYANAN : Kesenian";
	$judulku = $judul;
	
	
	//query
	$qku = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
									"WHERE jenis_seni = '$kd' ".
									"ORDER BY nama_sanggar ASC");
	$rku = mysqli_fetch_assoc($qku);
	
	
	
    echo '<section id="about" class="specials">
      <div class="container" data-aos="fade-up">
      	<br>
      	<br>
      	<br>
      	<br>

        <div class="section-title">
          <h2>PELAYANAN</h2>
          <p>KESENIAN</p>
        </div>';

	
		
		do
			{
			$ku_no = $ku_no + 1;
			$ku_kd = balikin($rku['kd']);
			$ku_kategori = balikin($rku['kategori_kelompok']);
			$ku_nama = balikin($rku['nama_sanggar']);
			$ku_pjawab = balikin($rku['penanggung_jawab']);
			$ku_jml_anggota = balikin($rku['total_anggota']);
			
			
			echo '<p>
			'.$ku_no.'. '.$ku_nama.'
			<br>
			[Nama Sanggar : '.$ku_nama.']. 
			[Kategori Kelompok : '.$ku_kategori.']. 
			<br>
			[Penanggung Jawab : '.$ku_pjawab.'].
			[Jumlah Anggota : '.$ku_jml_anggota.']
			
			</p>';
			
			
			}
		while ($rku = mysqli_fetch_assoc($qku));
		


      echo '</div>
    </section>';
	}











/*
//jika lokasi 
if ($s == "lokasi")
	{
	//query
	$qku = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
									"WHERE kecamatan = '$kd' ".
									"ORDER BY nama_sanggar ASC");
	$rku = mysqli_fetch_assoc($qku);
	
	
	
    echo '<section id="about" class="specials">
      <div class="container" data-aos="fade-up">
      	<br>
      	<br>
      	<br>
      	<br>

        <div class="section-title">
          <h2>PELAYANAN</h2>
          <p>LOKASI</p>
        </div>';

	
		
		do
			{
			$ku_no = $ku_no + 1;
			$ku_kd = balikin($rku['kd']);
			$ku_kategori = balikin($rku['kategori_kelompok']);
			$ku_nama = balikin($rku['nama_sanggar']);
			$ku_pjawab = balikin($rku['penanggung_jawab']);
			$ku_jml_anggota = balikin($rku['total_anggota']);
			$ku_alamat = balikin($rku['alamat']);
			$ku_kelurahan = balikin($rku['kelurahan']);
			$ku_kecamatan = balikin($rku['kecamatan']);
			
			
			echo '<p>
			'.$ku_no.'. '.$ku_nama.'
			<br> 
			[Nama Sanggar : '.$ku_nama.']. 
			[Kategori Kelompok : '.$ku_kategori.'].
			<br>
			[Penanggung Jawab : '.$ku_pjawab.'].
			[Jumlah Anggota : '.$ku_jml_anggota.']. 
			
			<i>Alamat : '.$ku_alamat.', '.$ku_kelurahan.', '.$ku_kecamatan.'</i>
			
			</p>';
			
			
			}
		while ($rku = mysqli_fetch_assoc($qku));
		


      echo '</div>
    </section>';
	}
*/






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
