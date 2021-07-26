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
$tpl = LoadTpl("template/cp_kirim_artikel.html");



nocache;

//nilai
$filenya = "dok_seni_artikel.php";
$filenya_ke = $sumber;
$judul = "Kirim Naskah Berita/Artikel/Opini";
$judulku = $judul;



//nilai session
$sesiku1 = cegah($_SESSION['sesiku1']);
$sesinama1 = cegah($_SESSION['sesinama1']);





//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}





//jika simpan
if($_POST['btnSMP'])
	{
	$kdku = nosql($_POST['kd']);
	$e_kategori = cegah($_POST['e_kategori']);
	$e_judul = cegah($_POST['e_judul']);
	$e_isi = cegah2($_POST['editor']);


	$namabaru = "$kdku-1.png";

	//query
	mysqli_query($koneksi, "INSERT INTO cp_artikel (kd, seniman_kd, seniman_nama, ".
					"kategori, judul, isi, ".
					"postdate, filex, jml_dilihat, ".
					"jml_komentar, jml_suka) ".
					"VALUES ('$kdku', '$sesiku1', '$sesinama1', ".
					"'$e_kategori', '$e_judul', '$e_isi', ".
					"'$today', '$namabaru', '', ".
					"'', '');"); 




	//re-direct
	$pesan = "Naskah Berita/Artikel/Opini Berhasil Dikirimkan. Verifikasi Naskah Diterima, Akan Ditentukan oleh Admin TBRS Kota Semarang.";
	$ke = "dok_seni.php";
	pekem($pesan,$ke);
	exit();
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////














//isi *START
ob_start();



?>



<script type="text/javascript" src="<?php echo $sumber;?>/inc/class/ckeditor/ckeditor.js"></script>



<?php
//js
require("inc/js/jumpmenu.js");
require("inc/js/swap.js");
require("inc/js/checkall.js");


?> 
 
<br>
<br>
<br>
<br>
<br>
<!-- ======= about ======= -->
<section id="about" class="specials">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Kirim Naskah</h2>
      <p>BERITA/ARTIKEL/OPINI</p>
    </div>



	<?php
	//jika tidak login
	if (empty($sesiku1))
		{
		//re-direct
		$ke = "dok_seni.php";
		xloc($ke);
		exit();
		}
	else
		{
		//bikin sesi kd
		$kd = $x;
		
		?>
		
		<div class="row" data-aos="fade-up" data-aos-delay="100">
	      <div class="col-lg-12 mt-4 mt-lg-0">
	          
				
			  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
			  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
			
					
				
				<script>
				$(document).ready(function() {
				  		
					$.noConflict();
				    
				});
				</script>
				  
		  
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
			
			   </form>';
			
			?>
			
			
			<script>  
			$(document).ready(function(){
				
				
				
			       $('#image-holder').load("<?php echo $sumber;?>/i_dok_seni_artikel.php?aksi=lihat1&kd=<?php echo $kd;?>");
			
			
			
			        
			    $('#upload_image').on('change', function(event){
			     event.preventDefault();
			     
					$('#loading').show();
			
			
				
				     $.ajax({
				      url:"i_dok_seni_artikel_upload.php?kd=<?php echo $kd;?>",
				      method:"POST",
				      data:new FormData(this),
				      contentType:false,
				      cache:false,
				      processData:false,
				      success:function(data){
						$('#loading').hide();
				       $('#preview').load("<?php echo $sumber;?>/i_dok_seni_artikel.php?aksi=lihat&kd=<?php echo $kd;?>");
				       	
				      }
				     })
				    });
				    
				    
			});  
			</script>
		
		
			<?php	
			echo '<p>
			NB. File Image dengan Minimal Resolusi 400 x 400 pixel
			</p>
			
			
			<hr>
			
			
			<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx2">

			<p>
			Kategori :
			<br>
			<select name="e_kategori" id="e_kategori" class="btn btn-warning" required>
			<option value="" selected></option>
			<option value="Berita">Berita</option>
			<option value="Artikel">Artikel</option>
			<option value="Opini">Opini</option>			
			</select>
			</p>
				
			<p>
			Judul : 
			<br>
			<input name="e_judul" id="e_judul" type="text" value="'.$e_judul.'" size="50" class="btn btn-warning" required>
			</p>
			
			<p>
			Isi : 
			<br>
			<textarea id="editor" name="editor" rows="20" cols="80" style="width: 100%" required>'.$e_isi2.'</textarea>
			</p>
			<br>
				
			<p>
			
			<input name="kd" id="kd" type="hidden" value="'.$kd.'">
			<button name="btnSMP" id="btnSMP" type="submit" value="KIRIM NASKAH >>" class="btn btn-danger">KIRIM NASKAH >></button>
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
			
	          
	          
	          
	        </div>
	      </div>
			

		<?php	
		}
	?>
	    
		  
    </div>

  </div>
</section>
<?php




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
