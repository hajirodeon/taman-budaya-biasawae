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
$filenya = "artikel.php";
$judul = "[INTERAKTIF]. Data Artikel";
$judulku = "$judul  [$adm_session]";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kd = nosql($_REQUEST['kdku']);
$kdku = nosql($_REQUEST['kdku']);
$katkd = nosql($_REQUEST['katkd']);








//jika daftar
if($_POST['btnDF'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}
	
	

//jika simpan
if($_POST['btnSMP'])
	{
	$s = nosql($_POST['s']);
	$kdku = nosql($_POST['kdku']);
	$e_judul = cegah($_POST['e_judul']);
	$e_isi = cegah2($_POST['editor']);


	$namabaru = "$kdku-1.png";

	
	//nek null
	if (empty($e_judul))
		{
		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!!";
		$ke = "$filenya?s=baru&kdku=$kdku";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//jika baru
		if ((empty($s)) OR ($s == "baru"))
			{
			//query
			mysqli_query($koneksi, "INSERT INTO `cp_artikel` (`kd`, `judul`, ".
							"`isi`, `postdate`, `filex`, `jml_dilihat`, ".
							"`jml_komentar`, `jml_suka`) ".
							"VALUES ('$kdku', '$e_judul', ".
							"'$e_isi', '$today', '$namabaru', '', ".
							"'', '');"); 




			//re-direct
			$ke = "$filenya?s=edit&kdku=$kdku";
			xloc($ke);
			exit();
			}
		else 
			{
			//query
			mysqli_query($koneksi, "UPDATE cp_artikel SET judul = '$e_judul', ".
							"isi = '$e_isi', ".
							"filex = '$namabaru', ".
							"postdate = '$today' ".
							"WHERE kd = '$kdku'");

			//re-direct
			$ke = "$filenya?s=edit&kdku=$kdku";
			xloc($ke);
			exit();
			}
		}


	exit();
	}






//jika hapus data
if($_POST['btnHPS'])
	{
	//ambil nilai
	$katkd = nosql($_POST['katkd']);


	//ambil semua
	for ($i=1; $i<=$limit;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM cp_artikel ".
						"WHERE kd = '$kd'");
		}



	//re-direct
	$ke = "$filenya?katkd=$katkd";
	xloc($ke);
	exit();
	}



	




//isi *START
ob_start();


?>



<script type="text/javascript" src="<?php echo $sumber;?>/inc/class/ckeditor/ckeditor.js"></script>



<?php
//js
require("../../inc/js/jumpmenu.js");
require("../../inc/js/swap.js");
require("../../inc/js/checkall.js");




echo '<p>
<a href="'.$filenya.'?s=baru&kdku='.$x.'" class="btn btn-danger">Entri Baru</a>
</p>

<hr>';




//jika edit
//tampilkan form
if (($s == 'baru') OR ($s == 'edit'))
	{
	//query
	$qx = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
						"WHERE kd = '$kdku'");
	$rowx = mysqli_fetch_assoc($qx);
	$e_judul = balikin($rowx['judul']);
	$e_isi = balikin2($rowx['isi']);
	$e_postdate = $rowx['postdate'];

	//pecah titik - titik
	$e_isi2 = pathasli2($e_isi);
	
	
	
	echo '<h2>Entri Baru/Edit</h2>

	';
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
	
	   </form>';
	
	?>
	
	
	<script>  
	$(document).ready(function(){
		
		
		
	       $('#image-holder').load("<?php echo $sumber;?>/adm/cp/i_artikel.php?aksi=lihat1&kd=<?php echo $kd;?>");
	
	
	
	        
	    $('#upload_image').on('change', function(event){
	     event.preventDefault();
	     
			$('#loading').show();
	
	
		
		     $.ajax({
		      url:"i_artikel_upload.php?kd=<?php echo $kd;?>",
		      method:"POST",
		      data:new FormData(this),
		      contentType:false,
		      cache:false,
		      processData:false,
		      success:function(data){
				$('#loading').hide();
		       $('#preview').load("<?php echo $sumber;?>/adm/cp/i_artikel.php?aksi=lihat&kd=<?php echo $kd;?>");
		       	
		      }
		     })
		    });
		    
		    
	});  
	</script>


	<?php	
	echo '<p>
	NB. File Image dengan Resolusi 400 x 400 pixel
	</p>
	
	
	<hr>
	
	
	<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx2">
		
	<p>
	Judul : 
	<br>
	<input name="e_judul" id="e_judul" type="text" value="'.$e_judul.'" size="50" class="btn btn-success">
	</p>
	
	<p>
	Isi : 
	<br>
	<textarea id="editor" name="editor" rows="20" cols="80" style="width: 100%">'.$e_isi2.'</textarea>
	</p>
	<br>
		
	<p>
	<input name="kdku" id="kdku" type="hidden" value="'.$kdku.'">
	<input name="katkd" id="katkd" type="hidden" value="'.$katkd.'">
	<input name="s" type="hidden" value="'.$s.'">
	
	<button name="btnSMP" id="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">SIMPAN</button>
	<button name="btnDF" id="btnDF" type="submit" value="KEMBALI KE DAFTAR" class="btn btn-info">KEMBALI KE DAFTAR >></button>
	</p>
	
	
	</form>';
	
	
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
	}
else 
	{
	//query
	$p = new Pager();
	$start = $p->findStart($limit);

	$sqlcount = "SELECT * FROM cp_artikel ".
					"ORDER BY postdate DESC";
	$sqlresult = $sqlcount;

	$count = mysqli_num_rows(mysqli_query($koneksi, $sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysqli_query($koneksi, "$sqlresult LIMIT ".$start.", ".$limit);
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysqli_fetch_array($result);
	

	if ($count != 0)
		{
		?>
		
		
		  
		  <script>
		  	$(document).ready(function() {
		    $('#table-responsive').dataTable( {
		        "scrollX": true
		    } );
		} );
		  </script>

		<?php			
		//view data
		echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx3">
		
		
		<div class="table-responsive">
		<table class="table" border="1">
	    <thead>

		<tr bgcolor="'.$warnaheader.'">
		<td width="1">&nbsp;</td>
		<td width="1">&nbsp;</td>
		<td width="50"><strong><font color="'.$warnatext.'">POSTDATE</font></strong></td>
		<td width="150"><strong><font color="'.$warnatext.'">FOTO</font></strong></td>
		<td><strong><font color="'.$warnatext.'">JUDUL</font></strong></td>
		</tr>
		
		
	    </thead>
	    <tbody>';


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

			//nilai
			$nomer = $nomer + 1;
			$i_kd = nosql($data['kd']);
			$i_judul = balikin($data['judul']);
			$i_isi = balikin($data['isi']);
			$i_postdate = $data['postdate'];
			$i_filex = balikin($data['filex']);
			
			$nil_foto = "$sumber/filebox/artikel/$i_kd/$i_filex";
			
			



			//pecah titik - titik
			$i_isi2 = pathasli2($i_isi);




			$namabaru = "$i_kd-1.png";


			//query
			mysqli_query($koneksi, "UPDATE cp_artikel SET filex = '$namabaru' ".
							"WHERE kd = '$i_kd'");


			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td><input name="kd'.$nomer.'" type="hidden" value="'.$i_kd.'">
			<input type="checkbox" name="item'.$nomer.'" value="'.$i_kd.'">
    		</td>
			<td>
			<a href="'.$filenya.'?s=edit&kdku='.$i_kd.'" title="EDIT..."><img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0"></a>
			</td>
			<td>'.$i_postdate.'</td>
			<td>
			<img src="'.$nil_foto.'" height="100">
			</td>
			<td>'.$i_judul.'</td>
    		</tr>';
			}
		while ($data = mysqli_fetch_assoc($result));

		echo '</tbody>
			  </table>
			  </div>

		<table width="100%" border="0" cellspacing="0" cellpadding="3">
		<tr>
		<td width="300">
		<input name="jml" type="hidden" value="'.$limit.'">
		<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
		<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
		<input name="btnALL" type="button" value="SEMUA" onClick="checkAll('.$limit.')" class="btn btn-success">
		<input name="btnBTL" type="reset" value="BATAL" class="btn btn-info">
		<input name="btnHPS" type="submit" value="HAPUS" class="btn btn-danger">
		</td>
		<td align="right"><strong><font color="#FF0000">'.$count.'</font></strong> Data. '.$pagelist.'</td>
		</tr>
		</table>
		
		
		</form>';
		}
	else
		{
		echo '<p>
		<font color="red">
		<strong>TIDAK ADA DATA.</strong>
		</font>
		</p>';
		}
	}




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");



//diskonek
xclose($koneksi);
exit();
?>