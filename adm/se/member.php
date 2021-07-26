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

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/cek/adm.php");
require("../../inc/class/paging.php");
$tpl = LoadTpl("../../template/admin.html");

nocache;

//nilai
$filenya = "member.php";
$judul = "[SENIMAN]. Data Seniman";
$judulku = "[SENIMAN]. $judul";
$judulx = $judul;
$kd = nosql($_REQUEST['kd']);
$s = nosql($_REQUEST['s']);
$kunci = cegah($_REQUEST['kunci']);
$kunci2 = balikin($_REQUEST['kunci']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}



//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika import
if ($_POST['btnIM'])
	{
	//re-direct
	$ke = "$filenya?s=import";
	xloc($ke);
	exit();
	}












//lama
//import sekarang
if ($_POST['btnIMX'])
	{
	$filex_namex2 = strip(strtolower($_FILES['filex_xls']['name']));

	//nek null
	if (empty($filex_namex2))
		{
		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!!";
		$ke = "$filenya?s=import";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//deteksi .xls
		$ext_filex = substr($filex_namex2, -4);

		if ($ext_filex == ".xls")
			{
			//nilai
			$path1 = "../../filebox";
			$path2 = "../../filebox/excel";
			chmod($path1,0777);
			chmod($path2,0777);

			//nama file import, diubah menjadi baru...
			$filex_namex2 = "seniman.xls";

			//mengkopi file
			copy($_FILES['filex_xls']['tmp_name'],"../../filebox/excel/$filex_namex2");

			//chmod
            $path3 = "../../filebox/excel/$filex_namex2";
			chmod($path1,0755);
			chmod($path2,0777);
			chmod($path3,0777);

			//file-nya...
			$uploadfile = $path3;


			//require
			require('../../inc/class/PHPExcel.php');
			require('../../inc/class/PHPExcel/IOFactory.php');


			  // load excel
			  $load = PHPExcel_IOFactory::load($uploadfile);
			  $sheets = $load->getActiveSheet()->toArray(null,true,true,true);
			
			  $i = 1;
			  foreach ($sheets as $sheet) 
			  	{
			    // karena data yang di excel di mulai dari baris ke 2
			    // maka jika $i lebih dari 1 data akan di masukan ke database
			    if ($i > 1) 
			    	{
				      // nama ada di kolom A
				      // sedangkan alamat ada di kolom B
				      $i_xyz = md5("$x$i");
				      $i_no = cegah($sheet['A']);
				      $i_kode = cegah($sheet['B']);
				      $i_status = cegah($sheet['C']);
				      $i_kategori = cegah($sheet['D']);
				      $i_jenis = cegah($sheet['E']);
				      $i_nama = cegah($sheet['F']);
				      $i_pjawab = cegah($sheet['G']);
				      $i_telp = cegah($sheet['H']);
				      $i_masa_berlaku = cegah($sheet['I']);
				      $i_alamat = cegah($sheet['J']);
				      $i_kecamatan = cegah($sheet['K']);
				      $i_kelurahan = cegah($sheet['L']);
				      $i_jml_anggota_l = cegah($sheet['M']);
				      $i_jml_anggota_p = cegah($sheet['N']);
				      $i_total = cegah($sheet['O']);
				      $i_tgl_pendirian = cegah($sheet['P']);
					  $i_akses = balikin($i_kode);
					  $i_passx = md5($i_akses);


					//insert
					mysqli_query($koneksi, "INSERT INTO m_seniman(kd, kode, status, ".
									"kategori_kelompok, jenis_seni, nama_sanggar, ".
									"penanggung_jawab, telp, masa_berlaku, ".
									"alamat, kecamatan, kelurahan, ".
									"jml_anggota_l, jml_anggota_p, total_anggota, ".
									"tgl_pendirian, usernamex, passwordx, postdate) VALUES ".
									"('$i_passx', '$i_kode', '$i_status', ".
									"'$i_kategori', '$i_jenis', '$i_nama', ".
									"'$i_pjawab', '$i_telp', '$i_masa_berlaku', ".
									"'$i_alamat', '$i_kecamatan', '$i_kelurahan', ".
									"'$i_jml_anggota_l', '$i_jml_anggota_p', '$i_total', ".
									"'$i_tgl_pendirian', '$i_akses', '$i_passx', '$today')");
					  
				    }
			
			    $i++;
			  }





			//hapus file, jika telah import
			$path1 = "../../filebox/excel/$filex_namex2";
			chmod($path1,0777);
			unlink ($path1);


			//re-direct
			xloc($filenya);
			exit();
			}
		else
			{
			//salah
			$pesan = "Bukan File .xls . Harap Diperhatikan...!!";
			$ke = "$filenya?s=import";
			pekem($pesan,$ke);
			exit();
			}
		}
	}





//jika export
//export
if ($_POST['btnEX'])
	{
	//require
	require('../../inc/class/excel/OLEwriter.php');
	require('../../inc/class/excel/BIFFwriter.php');
	require('../../inc/class/excel/worksheet.php');
	require('../../inc/class/excel/workbook.php');


	//nama file e...
	$i_filename = "seniman.xls";
	$i_judul = "seniman";
	



	//header file
	function HeaderingExcel($i_filename)
		{
		header("Content-type:application/vnd.ms-excel");
		header("Content-Disposition:attachment;filename=$i_filename");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
		header("Pragma: public");
		}

	
	
	
	//bikin...
	HeaderingExcel($i_filename);
	$workbook = new Workbook("-");
	$worksheet1 =& $workbook->add_worksheet($i_judul);
	$worksheet1->write_string(0,0,"NO.");
	$worksheet1->write_string(0,1,"KODE");
	$worksheet1->write_string(0,2,"STATUS");
	$worksheet1->write_string(0,3,"KATEGORI_KELOMPOK");
	$worksheet1->write_string(0,4,"JENIS_SENI_BUDAYA");
	$worksheet1->write_string(0,5,"NAMA_SANGGAR");
	$worksheet1->write_string(0,6,"PENANGGUNG_JAWAB");
	$worksheet1->write_string(0,7,"TELP");
	$worksheet1->write_string(0,8,"MASA_BERLAKU");
	$worksheet1->write_string(0,9,"ALAMAT");
	$worksheet1->write_string(0,10,"KECAMATAN");
	$worksheet1->write_string(0,11,"KELURAHAN");
	$worksheet1->write_string(0,12,"JML_ANGGOTA_LAKI");
	$worksheet1->write_string(0,13,"JML_ANGGOTA_PEREMPUAN");
	$worksheet1->write_string(0,14,"TOTAL_ANGGOTA");
	$worksheet1->write_string(0,15,"TGL_PENDIRIAN");


	//data
	$qdt = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
							"ORDER BY nama_sanggar ASC");
	$rdt = mysqli_fetch_assoc($qdt);

	do
		{
		//nilai
		$dt_nox = $dt_nox + 1;
		$dt_kode = balikin($rdt['kode']);
		$dt_status = balikin($rdt['status']);
		$dt_kategori = balikin($rdt['kategori_kelompok']);
		$dt_jenis = balikin($rdt['jenis_seni']);
		$dt_nama = balikin($rdt['nama_sanggar']);
		$dt_pjawab = balikin($rdt['penanggung_jawab']);
		$dt_telp = balikin($rdt['telp']);
		$dt_masa_berlaku = balikin($rdt['masa_berlaku']);
		$dt_alamat = balikin($rdt['alamat']);
		$dt_kec = balikin($rdt['kecamatan']);
		$dt_kel = balikin($rdt['kelurahan']);
		$dt_jml_l = balikin($rdt['jml_anggota_l']);
		$dt_jml_p = balikin($rdt['jml_anggota_p']);
		$dt_total = balikin($rdt['total_anggota']);
		$dt_tgl_pendirian = balikin($rdt['tgl_pendirian']);
		$dt_postdate = balikin($rdt['postdate']);



		//ciptakan
		$worksheet1->write_string($dt_nox,0,$dt_nox);
		$worksheet1->write_string($dt_nox,1,$dt_kode);
		$worksheet1->write_string($dt_nox,2,$dt_status);
		$worksheet1->write_string($dt_nox,3,$dt_kategori);
		$worksheet1->write_string($dt_nox,4,$dt_jenis);
		$worksheet1->write_string($dt_nox,5,$dt_nama);
		$worksheet1->write_string($dt_nox,6,$dt_pjawab);
		$worksheet1->write_string($dt_nox,7,$dt_telp);
		$worksheet1->write_string($dt_nox,8,$dt_masa_berlaku);
		$worksheet1->write_string($dt_nox,9,$dt_alamat);
		$worksheet1->write_string($dt_nox,10,$dt_kec);
		$worksheet1->write_string($dt_nox,11,$dt_kel);
		$worksheet1->write_string($dt_nox,12,$dt_jml_l);
		$worksheet1->write_string($dt_nox,13,$dt_jml_p);
		$worksheet1->write_string($dt_nox,14,$dt_total);
		$worksheet1->write_string($dt_nox,15,$dt_tgl_pendirian);
		}
	while ($rdt = mysqli_fetch_assoc($qdt));


	//close
	$workbook->close();

	
	
	//re-direct
	xloc($filenya);
	exit();
	}












//nek batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}





//jika cari
if ($_POST['btnCARI'])
	{
	//nilai
	$kunci = cegah($_POST['kunci']);


	//re-direct
	$ke = "$filenya?kunci=$kunci";
	xloc($ke);
	exit();
	}




//nek entri baru
if ($_POST['btnBARU'])
	{
	//re-direct
	$ke = "$filenya?s=baru&kd=$x";
	xloc($ke);
	exit();
	}










//nek member : reset
if ($s == "reset")
	{ 
	//nilai
	$nilku = rand(1,5);
	
	//pass baru
	$passbarux = md5($nilku);
	
	
	//update
	mysqli_query($koneksi, "UPDATE m_seniman SET passwordx = '$passbarux' ".
					"WHERE kd = '$kd'"); 
	
	//re-direct
	$pesan = "Password Baru : $nilku";
	pekem($pesan,$filenya);
	exit();
	}










//jika simpan
if ($_POST['btnSMP'])
	{
	$s = nosql($_POST['s']);
	$kd = nosql($_POST['kd']);
	$page = nosql($_POST['page']);
	$e_kode = cegah($_POST['e_kode']);
	$e_status = cegah($_POST['e_status']);
	$e_kategori = cegah($_POST['e_kategori']);
	$e_jenis = cegah($_POST['e_jenis']);
	$e_nama = cegah($_POST['e_nama']);
	$e_pjawab = cegah($_POST['e_pjawab']);
	$e_telp = cegah($_POST['e_telp']);
	$e_masa_berlaku = cegah($_POST['e_masa_berlaku']);
	$e_alamat = cegah($_POST['e_alamat']);
	$e_kec = cegah($_POST['e_kec']);
	$e_kel = cegah($_POST['e_kel']);
	$e_jml_l = cegah($_POST['e_jml_l']);
	$e_jml_p = cegah($_POST['e_jml_p']);
	$e_total = cegah($_POST['e_total']);
	$e_tgl_pendirian = cegah($_POST['e_tgl_pendirin']);




	$namabaru = "$kd-1.jpg";



	//nek null
	if ((empty($e_kode)) OR (empty($e_nama)) OR (empty($e_masa_berlaku)))
		{
		//re-direct
		$pesan = "Belum Ditulis. Harap Diulangi...!!";
		$ke = "$filenya?s=$s&kd=$kd";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//set akses 
		$aksesnya = $e_kode;
		$passx = md5($aksesnya);
		
		
		
		//jika update
		if ($s == "edit")
			{
			mysqli_query($koneksi, "UPDATE m_seniman SET kode = '$e_kode', ".
							"status = '$e_status', ".
							"kategori_jelompok = '$e_kategori', ".
							"jenis_seni = '$e_jenis', ".
							"nama_sanggar = '$e_nama', ".
							"penanggung_jawab = '$e_pjawab', ".
							"telp = '$e_telp', ".
							"masa_berlaku = '$e_masa_berlaku', ".
							"alamat = '$e_alamat', ".
							"kecamatan = '$e_kec', ".
							"kelurahan = '$e_kel', ".
							"jml_anggota_l = '$e_jml_l', ".
							"jml_anggota_p = '$e_jml_p', ".
							"total_anggota = '$e_total', ".
							"tgl_pendirian = '$e_tgl_pendirian', ".
							"usernamex = '$aksesnya', ".
							"passwordx = '$passx' ".
							"WHERE kd = '$kd'");



			//update
			mysqli_query($koneksi, "UPDATE m_seniman SET filex1 = '$namabaru', ".
							"postdate = '$today' ".
							"WHERE kd = '$kd'");

			//re-direct
			xloc($filenya);
			exit();
			}



		//jika baru
		if ($s == "baru")
			{
			//cek
			$qcc = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
									"WHERE kode = '$e_kode'");
			$rcc = mysqli_fetch_assoc($qcc);
			$tcc = mysqli_num_rows($qcc);

			//nek ada
			if ($tcc != 0)
				{
				//re-direct
				$pesan = "Sudah Ada. Silahkan Ganti Yang Lain...!!";
				$ke = "$filenya?s=baru&kd=$kd";
				pekem($pesan,$ke);
				exit();
				}
			else
				{
				//insert
				mysqli_query($koneksi, "INSERT INTO m_seniman(kd, kode, status, ".
								"kategori_kelompok, jenis_seni, nama_sanggar, ".
								"penanggung_jawab, telp, masa_berlaku, ".
								"alamat, kecamatan, kelurahan, ".
								"jml_anggota_l, jml_anggota_p, total_anggota, ".
								"tgl_pendirian, usernamex, passwordx, postdate) VALUES ".
								"('$kd', '$e_kode', '$e_status', ".
								"'$e_kategori', '$e_jenis', '$e_nama', ".
								"'$e_pjawab', '$e_telp', '$e_masa_berlaku', ".
								"'$e_alamat', '$e_kec', '$e_kel', ".
								"'$e_jml_l', '$e_jml_p', '$e_total', ".
								"'$e_tgl_pendirian', '$aksesnya', '$passx', '$today')");


								
				//update
				mysqli_query($koneksi, "UPDATE m_seniman SET filex1 = '$namabaru', ".
								"postdate = '$today' ".
								"WHERE kd = '$kd'");
											

				//re-direct
				xloc($filenya);
				exit();
				}
			}
		}
	}




//jika hapus
if ($_POST['btnHPS'])
	{
	//ambil nilai
	$jml = nosql($_POST['jml']);
	$page = nosql($_POST['page']);
	$ke = "$filenya?page=$page";

	//ambil semua
	for ($i=1; $i<=$jml;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM m_seniman ".
						"WHERE kd = '$kd'");
		}

	//auto-kembali
	xloc($filenya);
	exit();
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi *START
ob_start();


//require
require("../../template/js/jumpmenu.js");
require("../../template/js/checkall.js");
require("../../template/js/swap.js");
?>


  
  <script>
  	$(document).ready(function() {
    $('#table-responsive').dataTable( {
        "scrollX": true
    } );
} );
  </script>
  
<?php
//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika import
if ($s == "import")
	{
	?>
	<div class="row">

	<div class="col-md-12">
		
	<?php
	echo '<form action="'.$filenya.'" method="post" enctype="multipart/form-data" name="formxx2">
	<p>
		<input name="filex_xls" type="file" size="30" class="btn btn-warning">
	</p>

	<p>
		<input name="btnBTL" type="submit" value="BATAL" class="btn btn-info">
		<input name="btnIMX" type="submit" value="IMPORT >>" class="btn btn-danger">
	</p>
	
	
	</form>';	
	?>
		


	</div>
	
	</div>


	<?php
	}








//jika edit / baru
else if (($s == "baru") OR ($s == "edit"))
	{
	$kdx = nosql($_REQUEST['kd']);

	$qx = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
						"WHERE kd = '$kdx'");
	$rowx = mysqli_fetch_assoc($qx);
	$e_kode = balikin($rowx['kode']);
	$e_status = balikin($rowx['status']);
	$e_kategori = balikin($rowx['kategori_kelompok']);
	$e_jenis = balikin($rowx['jenis_seni']);
	$e_nama = balikin($rowx['nama_sanggar']);
	$e_pjawab = balikin($rowx['penanggung_jawab']);
	$e_telp = balikin($rowx['telp']);
	$e_masa_berlaku = balikin($rowx['masa_berlaku']);
	$e_alamat = balikin($rowx['alamat']);
	$e_kec = balikin($rowx['kecamatan']);
	$e_kel = balikin($rowx['kelurahan']);
	$e_jml_l = balikin($rowx['jml_anggota_l']);
	$e_jml_p = balikin($rowx['jml_anggota_p']);
	$e_total = balikin($rowx['total_anggota']);
	$e_tgl_pendirian = balikin($rowx['tgl_pendirian']);

	
	$e_filex1 = balikin($rowx['filex1']);


	$namabaru = "$kdx-1.jpg";



	//update
	mysqli_query($koneksi, "UPDATE m_seniman SET filex1 = '$namabaru', ".
					"postdate = '$today' ".
					"WHERE kd = '$kdx'");




	//jika edit / baru
	//nek null foto
	if (empty($e_filex1))
		{
		$nil_foto = "$sumber/template/img/bg-black.png";
		}
	else
		{
		$nil_foto = "$sumber/filebox/seniman/$kd/$e_filex1";
		}
		
			?>
	
	
	
	<div class="row">

	<div class="col-md-6">
		
	<?php
	echo '<form action="'.$filenya.'" method="post" name="formx2">
	
	
	<p>
	Kode/Username : 
	<br>
	<input name="e_kode" type="text" value="'.$e_kode.'" size="10" class="btn-warning">
	</p>
	

	<p>
	Status : 
	<br>
	<input name="e_status" type="text" value="'.$e_status.'" size="20" class="btn-warning">
	</p>
	
	<p>
	Kategori Kelompok : 
	<br>
	<input name="e_kategori" type="text" value="'.$e_kategori.'" size="20" class="btn-warning">
	</p>


	<p>
	Jenis Seni Budaya : 
	<br>
	<input name="e_jenis" type="text" value="'.$e_jenis.'" size="15" class="btn-warning">
	</p>
	
	
	<p>
	Nama Sanggar : 
	<br>
	<input name="e_nama" type="text" value="'.$e_nama.'" size="20" class="btn-warning">
	</p>
	

	<p>
	Penanggung Jawab : 
	<br>
	<input name="e_pjawab" type="text" value="'.$e_pjawab.'" size="20" class="btn-warning">
	</p>
	
	
	<p>
	Telepon : 
	<br>
	<input name="e_telp" type="text" value="'.$e_telp.'" size="20" class="btn-warning">
	</p>

	<p>
	Masa Berlaku : 
	<br>
	<input name="e_masa_berlaku" type="text" value="'.$e_masa_berlaku.'" size="15" class="btn-warning">
	</p>
		
		
	<p>
	Alamat : 
	<br>
	<input name="e_alamat" type="text" value="'.$e_alamat.'" size="20" class="btn-warning">
	</p>
	

	<p>
	Kecamatan : 
	<br>
	<input name="e_kec" type="text" value="'.$e_kec.'" size="20" class="btn-warning">
	</p>
	
	<p>
	Kelurahan : 
	<br>
	<input name="e_kel" type="text" value="'.$e_kel.'" size="20" class="btn-warning">
	</p>
	
	
	<p>
	Jumlah Anggota Laki-Laki : 
	<br>
	<input name="e_jml_l" type="text" value="'.$e_jml_l.'" size="5" class="btn-warning">
	</p>
	
	
	
	<p>
	Jumlah Anggota Perempuan : 
	<br>
	<input name="e_jml_p" type="text" value="'.$e_jml_p.'" size="5" class="btn-warning">
	</p>
	

	<p>
	Total Anggota : 
	<br>
	<input name="e_total" type="text" value="'.$e_total.'" size="5" class="btn-warning">
	</p>
	
	
	<p>
	Tanggal Pendirian : 
	<br>
	<input name="e_tgl_pendirian" type="text" value="'.$e_tgl_pendirian.'" size="15" class="btn-warning">
	</p>
	


	<p>
	<input name="jml" type="hidden" value="'.$count.'">
	<input name="s" type="hidden" value="'.$s.'">
	<input name="kd" type="hidden" value="'.$kdx.'">
	<input name="page" type="hidden" value="'.$page.'">
	
	<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
	<input name="btnBTL" type="submit" value="BATAL" class="btn btn-info">
	</p>
	
	
	</form>';



	?>
		
	
	
	</div>
	
	<div class="col-md-6">
	

	
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  


	<style type="text/css">
	.thumb-image{
	 float:left;
	 width:150px;
	 height:150px;
	 position:relative;
	 padding:5px;
	}
	</style>
	
	
	
	
		<table border="0" cellspacing="0" cellpadding="3">
		<tr valign="top">
		<td width="100">
			<div id="image-holder"></div>
		</td>
		

		</tr>
		</table>
	
	<script>
	$(document).ready(function() {
		
		
	        $("#image_upload").on('change', function() {
	          //Get count of selected files
	          var countFiles = $(this)[0].files.length;
	          var imgPath = $(this)[0].value;
	          var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
	          var image_holder = $("#image-holder");
	          image_holder.empty();
	          if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
	            if (typeof(FileReader) != "undefined") {
	              //loop for each file selected for uploaded.
	              for (var i = 0; i < countFiles; i++) 
	              {
	                var reader = new FileReader();
	                reader.onload = function(e) {
	                  $("<img />", {
	                    "src": e.target.result,
	                    "class": "thumb-image"
	                  }).appendTo(image_holder);
	                }
	                image_holder.show();
	                reader.readAsDataURL($(this)[0].files[i]);
	              }
	              
	
		    
	            } else {
	              alert("This browser does not support FileReader.");
	            }
	          } else {
	            alert("Pls select only images");
	          }
	        });
	        
	        


	        
	        
	        
	      });
	</script>

	<?php
	echo '<div id="loading" style="display:none">
	<img src="'.$sumber.'/template/img/progress-bar.gif" width="100" height="16">
	</div>
	
	
   <form method="post" id="upload_image" enctype="multipart/form-data">
	<input type="file" name="image_upload" id="image_upload" class="btn btn-warning" />

   </form>
   
   <hr>';
	
	?>
	
	
	<script>  
	$(document).ready(function(){
		
		
		
	       $('#image-holder').load("<?php echo $sumber;?>/adm/se/i_member.php?aksi=lihat&kd=<?php echo $kd;?>");

	
	
	        
	    $('#upload_image').on('change', function(event){
	     event.preventDefault();
	     
			$('#loading').show();
	
	
		
		     $.ajax({
		      url:"<?php echo $sumber;?>/adm/se/i_member_upload.php?kd=<?php echo $kd;?>",
		      method:"POST",
		      data:new FormData(this),
		      contentType:false,
		      cache:false,
		      processData:false,
		      success:function(data){
				$('#loading').hide();
		       $('#preview').load("<?php echo $sumber;?>/adm/se/i_member.php?aksi=lihat&kd=<?php echo $kd;?>");
		       	
		      }
		     })
		    });
		    
		    
	});  
	</script>




	</div>
	
	</div>


	<?php
	}
	



















//jika ketahui map terakhir
else if ($s == "mapnya")
	{
	?>
	<div class="row">

	<div class="col-md-12">
		

	<?php
	//ketahui
	$kdx = nosql($_REQUEST['kd']);

	//orang
	$qx = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
						"WHERE kd = '$kdx'");
	$rowx = mysqli_fetch_assoc($qx);
	$e_nip = balikin($rowx['nip']);
	$e_nama = balikin($rowx['nama']);
	$e_jabatan = balikin($rowx['jabatan']);


	//detail peta
	$qx = mysqli_query($koneksi, "SELECT * FROM orang_lokasi ".
						"WHERE orang_kd = '$kdx'");
	$rowx = mysqli_fetch_assoc($qx);
	$e_status = balikin($rowx['status']);
	$e_latx = balikin($rowx['lat_x']);
	$e_laty = balikin($rowx['lat_y']);
	$e_alamat = balikin($rowx['alamat']);


    $latitude = $e_latx;
    $longitude = $e_laty;

	$lat = $e_latx;
	$long = $e_laty; 

		
	
	echo "<a href='$filenya' class='btn btn-danger'>LIHAT DAFTAR LAINNYA</a>
	<hr>
	<p>
	[$e_nip. $e_nama]. [$e_jabatan].
	</p>
	
	<p>
	<hr>
	KOORDINAT : <b>[$latitude]. [$longitude].</b>
	<br>
	
	<i>$e_alamat</i> 
	<hr>
	</p>
	
	<p>
	STATUS : <b>PRESENSI $e_status</b>
	</p>"; 
	?>


		
		<style>
		  #map {
		    height: 100%;
		  }
		</style>
		
		  <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false&&callback=initMap&key=<?php echo $keyku;?>"></script>
		
		
		
		
		
		<style>
		 #map-canvas {
		        width: 100%;
		        height: 400px;
		        margin: 0px;
		        padding: 0px
		      }
		    </style>
		    <script>
		var map;
		function initialize() {
		        var myLatLng = {lat: <?php echo $latitude;?>, lng: <?php echo $longitude;?>};
		
		        var map = new google.maps.Map(document.getElementById('map-canvas'), {
		          zoom: 16,
		          center: myLatLng
		        });
		
		        var marker = new google.maps.Marker({
		          position: myLatLng,
		          map: map,
		          title: '<?php echo $ku_nama;?>'
		        });
		
		}
		
		google.maps.event.addDomListener(window, 'load', initialize);
		
		    </script>
		    <div id="map-canvas"></div>
		


	</div>
	
	</div>


	<?php
	}














else
	{
	//jika null
	if (empty($kunci))
		{
		$sqlcount = "SELECT * FROM m_seniman ".
						"ORDER BY nama_sanggar ASC";
		}
		
	else
		{
		$sqlcount = "SELECT * FROM m_seniman ".
						"WHERE kode LIKE '%$kunci%' ".
						"OR nama_sanggar LIKE '%$kunci%' ".
						"OR status LIKE '%$kunci%' ".
						"OR kategori_kelompok LIKE '%$kunci%' ".
						"OR jenis_seni LIKE '%$kunci%' ".
						"OR penanggung_jawab LIKE '%$kunci%' ".
						"OR telp LIKE '%$kunci%' ".
						"OR masa_berlaku LIKE '%$kunci%' ".
						"OR alamat LIKE '%$kunci%' ".
						"OR kecamatan LIKE '%$kunci%' ".
						"OR kelurahan LIKE '%$kunci%' ".
						"OR jml_anggota_l LIKE '%$kunci%' ".
						"OR jml_anggota_p LIKE '%$kunci%' ".
						"OR total_anggota LIKE '%$kunci%' ".
						"OR tgl_pendirian LIKE '%$kunci%' ".
						"ORDER BY nama_sanggar ASC";
		}
		

	
	//query
	$p = new Pager();
	$start = $p->findStart($limit);
	
	$sqlresult = $sqlcount;
	
	$count = mysqli_num_rows(mysqli_query($koneksi, $sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysqli_query($koneksi, "$sqlresult LIMIT ".$start.", ".$limit);
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysqli_fetch_array($result);
	
	
	
	echo '<form action="'.$filenya.'" method="post" name="formxx">
	<p>
	<input name="btnBARU" type="submit" value="ENTRI BARU" class="btn btn-danger">
	<input name="btnIM" type="submit" value="IMPORT" class="btn btn-primary">
	<input name="btnEX" type="submit" value="EXPORT" class="btn btn-success">
	</p>
	<br>
	
	</form>



	<form action="'.$filenya.'" method="post" name="formx">
	<p>
	<input name="kunci" type="text" value="'.$kunci2.'" size="20" class="btn btn-warning" placeholder="Kata Kunci...">
	<input name="btnCARI" type="submit" value="CARI" class="btn btn-danger">
	<input name="btnBTL" type="submit" value="RESET" class="btn btn-info">
	</p>
		
	
	<div class="table-responsive">          
	<table class="table" border="1">
	<thead>
	
	<tr valign="top" bgcolor="'.$warnaheader.'">
	<td width="20">&nbsp;</td>
	<td width="20">&nbsp;</td>
	<td width="150"><strong><font color="'.$warnatext.'">IMAGE</font></strong></td>
	<td><strong><font color="'.$warnatext.'">KODE/USERNAME</font></strong></td>
	<td><strong><font color="'.$warnatext.'">NAMA SANGGAR</font></strong></td>
	<td><strong><font color="'.$warnatext.'">PENANGGUNG JAWAB</font></strong></td>
	<td><strong><font color="'.$warnatext.'">STATUS</font></strong></td>
	<td><strong><font color="'.$warnatext.'">KATEGORI KELOMPOK</font></strong></td>
	<td><strong><font color="'.$warnatext.'">JENIS SENI BUDAYA</font></strong></td>
	<td><strong><font color="'.$warnatext.'">TELP</font></strong></td>
	<td><strong><font color="'.$warnatext.'">MASA BERLAKU</font></strong></td>
	<td><strong><font color="'.$warnatext.'">ALAMAT</font></strong></td>
	<td><strong><font color="'.$warnatext.'">KECAMATAN</font></strong></td>
	<td><strong><font color="'.$warnatext.'">KELURAHAN</font></strong></td>
	<td><strong><font color="'.$warnatext.'">JML ANGGOTA LAKI</font></strong></td>
	<td><strong><font color="'.$warnatext.'">JML ANGGOTA PEREMPUAN</font></strong></td>
	<td><strong><font color="'.$warnatext.'">TOTAL ANGGOTA</font></strong></td>
	<td><strong><font color="'.$warnatext.'">TANGGAL PENDIRIAN</font></strong></td>
	
	</tr>
	</thead>
	<tbody>';
	
	if ($count != 0)
		{
		do 
			{
			if ($warna_set ==0)
				{
				$warna = $warna01;
				$warna_set = 1;
				}
			else
				{
				$warna = $warna02;
				$warna_set = 0;
				}
	
			$nomer = $nomer + 1;
			$i_kd = nosql($data['kd']);
			$i_kode = balikin($data['kode']);
			$i_usernamex = balikin($data['usernamex']);
			$i_status = balikin($data['status']);
			$i_kategori = balikin($data['kategori_kelompok']);
			$i_jenis = balikin($data['jenis_seni']);
			$i_nama = balikin($data['nama_sanggar']);
			$i_pjawab = balikin($data['penanggung_jawab']);
			$i_telp = balikin($data['telp']);
			$i_masa_berlaku = balikin($data['masa_berlaku']);
			$i_alamat = balikin($data['alamat']);
			$i_kec = balikin($data['kecamatan']);
			$i_kel = balikin($data['kelurahan']);
			$i_jml_l = balikin($data['jml_anggota_l']);
			$i_jml_p = balikin($data['jml_anggota_p']);
			$i_total = balikin($data['total_anggota']);
			$i_tgl_pendirian = balikin($data['tgl_pendirian']);
			$i_postdate = balikin($data['postdate']);
			$i_filex1 = balikin($data['filex1']);
	
	
			$nil_foto1 = "$sumber/filebox/seniman/$i_kd/$i_filex1";

			
			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td>
			<input type="checkbox" name="item'.$nomer.'" value="'.$i_kd.'">
	        </td>
			<td>
			<a href="'.$filenya.'?s=edit&page='.$page.'&kd='.$i_kd.'"><img src="'.$sumber.'/template/img/edit.gif" width="16" height="16" border="0"></a>
			</td>
			<td>
			
			<img src="'.$nil_foto1.'" width="150">
			
			</td>
			<td>
			'.$i_kode.'
			
			
			<hr>
			<a href="'.$filenya.'?s=reset&kd='.$i_kd.'" class="btn btn-primary">RESET PASSWORD >></a>
			
			</td>
			<td>'.$i_nama.'</td>
			<td>'.$i_pjawab.'</td>
			<td>'.$i_status.'</td>
			<td>'.$i_kategori.'</td>
			<td>'.$i_jenis.'</td>
			<td>'.$i_telp.'</td>
			<td>'.$i_masa_berlaku.'</td>
			<td>'.$i_alamat.'</td>
			<td>'.$i_kec.'</td>
			<td>'.$i_kel.'</td>
			<td>'.$i_jml_l.'</td>
			<td>'.$i_jml_p.'</td>
			<td>'.$i_nama.'</td>
			<td>'.$i_total.'</td>
			<td>'.$i_tgl_pendirian.'</td>
	        </tr>';
			}
		while ($data = mysqli_fetch_assoc($result));
		}
	
	
	echo '</tbody>
	  </table>
	  </div>
	
	
	<table width="500" border="0" cellspacing="0" cellpadding="3">
	<tr>
	<td>
	<strong><font color="#FF0000">'.$count.'</font></strong> Data. '.$pagelist.'
	<br>

	<input name="jml" type="hidden" value="'.$count.'">
	<input name="s" type="hidden" value="'.$s.'">
	<input name="kd" type="hidden" value="'.$kdx.'">
	<input name="page" type="hidden" value="'.$page.'">
	
	<input name="btnALL" type="button" value="SEMUA" onClick="checkAll('.$count.')" class="btn btn-primary">
	<input name="btnBTL" type="reset" value="BATAL" class="btn btn-warning">
	<input name="btnHPS" type="submit" value="HAPUS" class="btn btn-danger">
	</td>
	</tr>
	</table>
	</form>';
	}








//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");


//null-kan
xclose($koneksi);
exit();
?>