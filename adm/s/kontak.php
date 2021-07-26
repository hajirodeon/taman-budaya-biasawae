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
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/admin.html");


nocache;

//nilai
$filenya = "kontak.php";
$judul = "[SETTING]. Kontak";
$judulku = "$judul";




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//simpan
if ($_POST['btnSMP'])
	{
	//ambil nilai
	$e_alamat = cegah($_POST["e_alamat"]);
	$e_telp = cegah($_POST["e_telp"]);
	$e_fax = cegah($_POST["e_fax"]);
	$e_email = cegah($_POST["e_email"]);
	$e_web = cegah($_POST["e_web"]);
	$e_fb = cegah($_POST["e_fb"]);
	$e_twitter = cegah($_POST["e_twitter"]);
	$e_youtube = cegah($_POST["e_youtube"]);
	$e_instagram = cegah($_POST["e_instagram"]);
	$e_wa = cegah($_POST["e_wa"]);


	$namabaru = "logo.jpg";


	//cek
	//perintah SQL
	mysqli_query($koneksi, "UPDATE cp_profil SET alamat = '$e_alamat', ".
					"telp = '$e_telp', ".
					"fax = '$e_fax', ".
					"email = '$e_email', ".
					"web = '$e_web', ".
					"fb = '$e_fb', ".
					"twitter = '$e_twitter', ".
					"youtube = '$e_youtube', ".
					"instagram = '$e_instagram', ".
					"wa = '$e_wa', ".
					"postdate = '$today'");


	//auto-kembali
	xloc($filenya);
	exit();
	}
	
	
	
	
	
	
	
	
	


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






//isi *START
ob_start();






     	
echo '<form action="'.$filenya.'" method="post" name="formx">';


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM cp_profil");
$rku = mysqli_fetch_assoc($qku);
$ku_web = balikin($rku['web']);
$ku_email = balikin($rku['email']);
$ku_alamat = balikin($rku['alamat']);
$ku_alamat2 = balikin($rku['alamat_googlemap']);
$ku_telp = balikin($rku['telp']);
$ku_fax = balikin($rku['fax']);
$ku_fb = balikin($rku['fb']);
$ku_twitter = balikin($rku['twitter']);
$ku_youtube = balikin($rku['youtube']);
$ku_wa = balikin($rku['wa']);
$ku_instagram = balikin($rku['instagram']);
$latitude = balikin($rku['x_lat']);
$longitude = balikin($rku['x_long']);

echo '<div class="row">

<div class="col-md-6">


<p>
Alamat : 
<br>
<input name="e_alamat" type="text" size="30" value="'.$ku_alamat.'" class="btn btn-success" required>
</p>

<p>
Telepon : 
<br>
<input name="e_telp" type="text" size="20" value="'.$ku_telp.'" class="btn btn-success" required>
</p>


<p>
Fax : 
<br>
<input name="e_fax" type="text" size="20" value="'.$ku_fax.'" class="btn btn-success" required>
</p>


<p>
WEB : 
<br>
<input name="e_web" type="text" size="30" value="'.$ku_web.'" class="btn btn-success" required>
</p>

<p>
E-Mail : 
<br>
<input name="e_email" type="text" size="30" value="'.$ku_email.'" class="btn btn-success" required>
</p>



</div>

<div class="col-md-6">



<p>
FB : 
<br>
<input name="e_fb" type="text" size="30" value="'.$ku_fb.'" class="btn btn-success" required>
</p>


<p>
Twitter : 
<br>
<input name="e_twitter" type="text" size="30" value="'.$ku_twitter.'" class="btn btn-success" required>
</p>


<p>
Youtube : 
<br>
<input name="e_youtube" type="text" size="30" value="'.$ku_youtube.'" class="btn btn-success" required>
</p>

<p>
WA : 
<br>
<input name="e_wa" type="text" size="30" value="'.$ku_wa.'" class="btn btn-success" required>
</p>


<p>
Instagram : 
<br>
<input name="e_instagram" type="text" size="30" value="'.$ku_instagram.'" class="btn btn-success" required>
</p>


</div>

</div>


<p>
<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
</p>
</form>

<hr>



';






//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");

//diskonek
xfree($qbw);
xclose($koneksi);
exit();
?>