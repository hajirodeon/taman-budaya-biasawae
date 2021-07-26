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
$filenya = "cp_sekapur.php";
$judul = "[SETTING]. Sekapur Sirih";
$judulku = "$judul";




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//simpan
if ($_POST['btnSMP'])
	{
	//ambil nilai
	$e_isi = cegah2($_POST["editor"]);


	//cek
	//perintah SQL
	mysqli_query($koneksi, "UPDATE profil_tulisan SET isi = '$e_isi', ".
					"postdate = '$today' ".
					"WHERE kd = 'f1d588d45382deda7727882f3d1627dc'");


	//auto-kembali
	xloc($filenya);
	exit();
	}
	
	
	
	
	
	
	
	
	


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






//isi *START
ob_start();





?>



<script type="text/javascript" src="<?php echo $sumber;?>/inc/class/ckeditor/ckeditor.js"></script>


<?php
echo '<form action="'.$filenya.'" method="post" name="formx">';


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM profil_tulisan ".
									"WHERE kd = 'f1d588d45382deda7727882f3d1627dc'");
$rku = mysqli_fetch_assoc($qku);
$e_isi = balikin($rku['isi']);

//pecah titik - titik
$e_isi2 = pathasli2($e_isi);



echo '<div class="row">

<div class="col-md-12">


<p>
isi : 
<br>
<textarea id="editor" name="editor" rows="20" cols="80" style="width: 100%">'.$e_isi2.'</textarea>

</p>



<p>
<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
</p>



</div>

</div>



</form>

<hr>';


?>


	
<script type="text/javascript">
//<![CDATA[
var roxyFileman = '<?php echo $sumber;?>/inc/class/ckeditor/plugins/fileman/index.html';
 
$(function(){
CKEDITOR.replace( 'editor',{filebrowserBrowseUrl:roxyFileman,
                     filebrowserImageBrowseUrl:roxyFileman+'?type=image',
                     removeDialogTabs: 'link:upload;image:upload'}); 
});


//]]>
</script>

<?php




//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");

//diskonek
xfree($qbw);
xclose($koneksi);
exit();
?>