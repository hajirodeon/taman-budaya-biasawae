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
$filenya = "agenda.php";
$judul = "[MASTER] Agenda";
$judulku = "$judul";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kunci = cegah($_REQUEST['kunci']);
$kd = nosql($_REQUEST['kd']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//nek baru
if ($_POST['btnBR'])
	{
	//nilai
	$ke = "$filenya?s=baru&kd=$x";
	
	
	//re-direct
	xloc($ke);
	exit();
	}



//nek batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}



//jika simpan
if ($_POST['btnSMP'])
	{
	$s = nosql($_POST['s']);
	$page = nosql($_POST['page']);
	$e_kd = nosql($_POST['e_kd']);
	$e_tglmulai = cegah($_POST['e_tglmulai']);
	$e_tglselesai = cegah($_POST['e_tglselesai']);
	$e_waktu = cegah($_POST['e_waktu']);
	$e_judul = cegah($_POST['e_judul']);
	$e_biaya = cegah($_POST['e_biaya']);
	$e_isi = cegah($_POST['e_isi']);
	$e_target = cegah($_POST['e_target']);
	$e_syarat = cegah($_POST['e_syarat']);

	
	
	
	//pecah tanggal
	$tgl2_pecah = balikin($e_tglmulai);
	$tgl2_pecahku = explode("-", $tgl2_pecah);
	$tgl2_tgl = trim($tgl2_pecahku[2]);
	$tgl2_bln = trim($tgl2_pecahku[1]);
	$tgl2_thn = trim($tgl2_pecahku[0]);
	$e_tglmulai = "$tgl2_thn:$tgl2_bln:$tgl2_tgl";
		
	



	//pecah tanggal
	$tgl2_pecah = balikin($e_tglselesai);
	$tgl2_pecahku = explode("-", $tgl2_pecah);
	$tgl2_tgl = trim($tgl2_pecahku[2]);
	$tgl2_bln = trim($tgl2_pecahku[1]);
	$tgl2_thn = trim($tgl2_pecahku[0]);
	$e_tglselesai = "$tgl2_thn:$tgl2_bln:$tgl2_tgl";
		
	
	
	

	
	$namabaru = "$e_kd-1.png";



	//jika baru
	if ($s == "baru")
		{
		//insert
		mysqli_query($koneksi, "INSERT INTO cp_agenda (kd, judul, biaya, ".
						"isi, target, syarat, filex, ".
						"tgl_mulai, tgl_selesai, waktu, postdate) ".
						"VALUES ('$e_kd', '$e_judul', '$e_biaya', ".
						"'$e_isi', '$e_target', '$e_syarat', '$namabaru', ".
						"'$e_tglmulai', '$e_tglselesai', '$e_waktu', '$today');"); 


		//re-direct
		xloc($filenya);
		exit();
		}
		
		
			
			
	//jika update
	if ($s == "edit")
		{
		mysqli_query($koneksi, "UPDATE cp_agenda SET judul = '$e_judul', ".
						"biaya = '$e_biaya', ".
						"isi = '$e_isi', ".
						"target = '$e_target', ".
						"syarat = '$e_syarat', ".
						"tgl_mulai = '$e_tglmulai', ".
						"tgl_selesai = '$e_tglselesai', ".
						"waktu = '$e_waktu', ".
						"filex = '$namabaru', ".
						"postdate = '$today' ".
						"WHERE kd = '$e_kd'");


		//re-direct
		xloc($filenya);
		exit();
		}
	}

	
	
	

//jika hapus
if ($_POST['btnHPS'])
	{
	//ambil nilai
	$jml = nosql($_POST['jml']);
	$ke = $filenya;

	//ambil semua
	for ($i=1; $i<=$jml;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM cp_agenda ".
						"WHERE kd = '$kd'");
		}


	//auto-kembali
	xloc($ke);
	exit();
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



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
//require
require("../../template/js/jumpmenu.js");
require("../../template/js/checkall.js");
require("../../template/js/swap.js");


//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if (($s == "baru") OR ($s == "edit"))
	{
	//edit
	$qx = mysqli_query($koneksi, "SELECT * FROM cp_agenda ".
						"WHERE kd = '$kd'");
	$rowx = mysqli_fetch_assoc($qx);
	$e_kd = nosql($rowx['kd']);
	$e_judul = balikin($rowx['judul']);
	$e_biaya = balikin($rowx['biaya']);
	$e_isi = balikin($rowx['isi']);
	$e_target = balikin($rowx['target']);
	$e_syarat = balikin($rowx['syarat']);
	$e_tglmulai = balikin($rowx['tgl_mulai']);
	$e_tglselesai = balikin($rowx['tgl_selesai']);
	$e_waktu = balikin($rowx['waktu']);
	$e_filex1 = balikin($rowx['filex']);




	//pecah tanggal
	$tgl1_pecah = balikin($e_tglmulai);
	$tgl1_pecahku = explode("-", $tgl1_pecah);
	$tgl1_tgl = trim($tgl1_pecahku[2]);
	$tgl1_bln = trim($tgl1_pecahku[1]);
	$tgl1_thn = trim($tgl1_pecahku[0]);
	$e_tglmulai = "$tgl1_thn-$tgl1_bln-$tgl1_tgl";
	
	




	//pecah tanggal
	$tgl1_pecah = balikin($e_tglselesai);
	$tgl1_pecahku = explode("-", $tgl1_pecah);
	$tgl1_tgl = trim($tgl1_pecahku[2]);
	$tgl1_bln = trim($tgl1_pecahku[1]);
	$tgl1_thn = trim($tgl1_pecahku[0]);
	$e_tglselesai = "$tgl1_thn-$tgl1_bln-$tgl1_tgl";
	




	
	
	//jika edit / baru
	//nek null foto
	if (empty($e_filex1))
		{
		$nil_foto = "$sumber/template/img/bg-black.png";
		}
	else
		{
		$nil_foto = "$sumber/filebox/agenda/$e_kd/$e_filex1";
		}
		
		

	
	echo '<div class="row">

	<div class="col-md-4">
	
	
	<form action="'.$filenya.'" method="post" name="formx2">
	


	<p>
	Tanggal Mulai : 
	<br>


	<input name="e_tglmulai" type="date" size="10" value="'.$e_tglmulai.'" class="btn-success" required>
	</p>
	



	<p>
	Tanggal Selesai : 
	<br>

	<input name="e_tglselesai" type="date" size="10" value="'.$e_tglselesai.'" class="btn-success" required>
	</p>
	




	<p>
	Waktu/Jam : 
	<br>

	<input name="e_waktu" type="text" size="10" value="'.$e_waktu.'" class="btn-success" required>
	</p>
	




	<p>
	Judul : 
	<br>


	<input name="e_judul" type="text" size="30" value="'.$e_judul.'" class="btn-success" required>
	</p>
	


	<p>
	Biaya : 
	<br>


	<input name="e_biaya" type="text" size="10" value="'.$e_biaya.'" class="btn-success" required>
	
	</p>
	
	
	<p>
	Isi Keterangan Acara/Agenda : 
	<br>

	<textarea id="e_isi" name="e_isi" rows="5" cols="80" style="width: 100%" class="btn-success" required>'.$e_isi.'</textarea>
	
	</p>
	
	
	<p>
	Target Penonton / Audiens: 
	<br>


	<input name="e_target" type="text" size="30" value="'.$e_target.'" class="btn-success" required>
	</p>
	
	
	
	
	<p>
	Syarat : 
	<br>

	
	<input name="e_syarat" type="text" size="30" value="'.$e_syarat.'" class="btn-success" required>
	</p>
	
	
	
	
	

	<input name="s" type="hidden" value="'.$s.'">
	<input name="e_kd" type="hidden" value="'.$kd.'">
	<input name="page" type="hidden" value="'.$page.'">


	
	<p>
	<hr>	
	<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
	<input name="btnBTL" type="submit" value="BATAL" class="btn btn-info">
	<hr>
	</p>
	
	
	</form>
	
	
	</div>
	
	<div class="col-md-8">';
	?>
	
	
	
		
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
	<input type="file" name="image_upload" id="image_upload" class="btn btn-success" />
	
	   </form>
	   
	   <hr>';
	
	?>
	
	
	<script>  
	$(document).ready(function(){
		
		
		
	       $('#image-holder').load("<?php echo $sumber;?>/adm/d/i_agenda.php?aksi=lihat1&kd=<?php echo $kd;?>");
	
	
	
	        
	    $('#upload_image').on('change', function(event){
	     event.preventDefault();
	     
			$('#loading').show();
	
	
		
		     $.ajax({
		      url:"i_agenda_upload.php?kd=<?php echo $kd;?>",
		      method:"POST",
		      data:new FormData(this),
		      contentType:false,
		      cache:false,
		      processData:false,
		      success:function(data){
				$('#loading').hide();
		       $('#preview').load("<?php echo $sumber;?>/adm/d/i_agenda.php?aksi=lihat&kd=<?php echo $kd;?>");
		       	
		      }
		     })
		    });
		    
		    
	});  
	</script>


	<?php	
	echo '<p>
	NB. File Image dengan Resolusi 500 x 500 pixel
	</p>
	
	
	
	</div>
	
	</div>';
	}
	
	
else
	{
	//query
	$p = new Pager();
	$start = $p->findStart($limit);
	
	$sqlcount = "SELECT * FROM cp_agenda ".
					"ORDER BY tgl_mulai DESC";
	$sqlresult = $sqlcount;
	
	$count = mysqli_num_rows(mysqli_query($koneksi, $sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysqli_query($koneksi, "$sqlresult LIMIT ".$start.", ".$limit);
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysqli_fetch_array($result);




	
	echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx">
	
	<p>
	<input name="btnBR" type="submit" value="BUAT BARU" class="btn btn-danger">
	<hr>
	</p>
	
	<div class="table-responsive">          
		  <table class="table" border="1">
		    <thead>
				
				<tr bgcolor="'.$warnaheader.'">
				<td width="16">&nbsp;</td>
				<td width="30">&nbsp;</td>
				<td><strong><font color="'.$warnatext.'">FOTO</font></strong></td>
				<td><strong><font color="'.$warnatext.'">TGL.MULAI</font></strong></td>
				<td><strong><font color="'.$warnatext.'">TGL.AKHIR</font></strong></td>
				<td><strong><font color="'.$warnatext.'">WAKTU</font></strong></td>
				<td><strong><font color="'.$warnatext.'">JUDUL</font></strong></td>
				<td><strong><font color="'.$warnatext.'">KETERANGAN</font></strong></td>
				<td><strong><font color="'.$warnatext.'">BIAYA</font></strong></td>
				<td><strong><font color="'.$warnatext.'">TARGET</font></strong></td>
				<td><strong><font color="'.$warnatext.'">SYARAT</font></strong></td>
				<td width="50"><strong><font color="'.$warnatext.'">POSTDATE</font></strong></td>
				</tr>
	
		    </thead>
		    <tbody>';
	
	if ($count != 0)
		{
		do {
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
			$e_kd = nosql($data['kd']);
			$e_tgl_mulai = balikin($data['tgl_mulai']);
			$e_tgl_selesai = balikin($data['tgl_selesai']);
			$e_waktu = balikin($data['waktu']);
			$e_judul = balikin($data['judul']);
			$e_isi = balikin($data['isi']);
			$e_biaya = balikin($data['biaya']);
			$e_target = balikin($data['target']);
			$e_syarat = balikin($data['syarat']);
			$filex1 = balikin($data['filex']);
			$e_postdate = balikin($data['postdate']);

	
			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td>
			<input type="checkbox" name="item'.$nomer.'" value="'.$e_kd.'">
	        </td>
			<td>
			<a href="'.$filenya.'?s=edit&kd='.$e_kd.'"><img src="'.$sumber.'/template/img/edit.gif" width="16" height="16" border="0"></a>
			</td>
			
			<td>
			<p>
			<img src="'.$sumber.'/filebox/agenda/'.$e_kd.'/'.$filex1.'" width="100" height="100">
			</p>

			</td>
			
			<td>'.$e_tgl_mulai.'</td>
			<td>'.$e_tgl_selesai.'</td>
			<td>'.$e_waktu.'</td>
			<td>'.$e_judul.'</td>
			<td>'.$e_isi.'</td>
			<td>'.$e_biaya.'</td>
			<td>'.$e_target.'</td>
			<td>'.$e_syarat.'</td>
			<td>'.$e_postdate.'</td>
	        </tr>';
			}
		while ($data = mysqli_fetch_assoc($result));
		}
	
	
	echo '</tbody>
		  </table>
		  </div>
		  
	<table width="100%" border="0" cellspacing="0" cellpadding="3">
	<tr>
	<td>
	<strong><font color="#FF0000">'.$count.'</font></strong> Data. '.$pagelist.'
	<input name="jml" type="hidden" value="'.$count.'">
	<br>
	<input name="btnALL" type="button" value="SEMUA" onClick="checkAll('.$count.')" class="btn btn-primary">
	<input name="btnBTL" type="reset" value="BATAL" class="btn btn-success">
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