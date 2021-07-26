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




require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
	
nocache;




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//lihat gambar
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'lihat1'))
	{
	//ambil nilai
	$kd = nosql($_GET['kd']);
	

	$fileku = "filebox/artikel/$kd/$kd-1.png";
	
	if (file_exists($fileku))
		{
		$nil_foto = "$sumber/$fileku";			
		}
	else
		{
		$nil_foto = "$sumber/template/img/bg-black.png";
		}


	echo '<img src="'.$nil_foto.'" height="100">';
	}
	
	
	

?>