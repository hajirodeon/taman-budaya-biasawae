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




require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
	
nocache;




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//lihat gambar
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'lihat'))
	{
	//ambil nilai
	$kd = nosql($_GET['kd']);
	
	//edit
	$qx = mysql_query("SELECT * FROM m_orang ".
						"WHERE kd = '$kd'");
	$rowx = mysql_fetch_assoc($qx);
	$e_filex1 = balikin($rowx['filex1']);



	//jika edit / baru
	//nek null foto
	if (empty($e_filex1))
		{
		$nil_foto = "$sumber/template/img/bg-black.png";
		}
	else
		{
		$nil_foto = "$sumber/filebox/pegawai/$kd/$e_filex1";
		}
		

	echo '<img src="'.$nil_foto.'" height="200">';
	}
	
	
	

?>