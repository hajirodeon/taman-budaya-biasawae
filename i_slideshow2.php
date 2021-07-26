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




//slideshow
$qyuk2 = mysqli_query($koneksi, "SELECT * FROM cp_m_slideshow ".
						"ORDER BY RAND()");
$ryuk2 = mysqli_fetch_assoc($qyuk2);

do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_filex = balikin($ryuk2['filex']);
	$yuk2_urlnya = balikin($ryuk2['urlnya']);
	$yuk2_nama = balikin($ryuk2['nama']);
	$yuk2_isi = balikin($ryuk2['isi']);
	$yuk2_postdate = balikin($ryuk2['postdate']);


	echo '<div class="row event-item">
            <div class="col-lg-12">
              <img src="'.$sumber.'/filebox/slideshow/'.$yuk2_kd.'/'.$yuk2_filex.'" class="img-fluid" alt="">
            </div>
          </div>';

	
	}
while ($ryuk2 = mysqli_fetch_assoc($qyuk2));
?>