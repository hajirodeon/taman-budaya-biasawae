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
$tpl = LoadTpl("template/cp_depan.html");



nocache;

//nilai
$filenya = "index.php";
$filenyax = "i_index.php";
$filenya_ke = $sumber;
$judul = "TAMAN BUDAYA BIASAWAE";
$judulku = $judul;






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

?>
    <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>TAMAN BUDAYA BIASAWAE</h2>
          <p>PELAYANAN</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="menu-flters">
              <li data-filter="*" class="filter-active">Semua</li>
              <li data-filter=".filter-tempat">Tempat</li>
              <li data-filter=".filter-sewa">Penyewa</li>
              <li data-filter=".filter-sop">S.O.P</li>
            </ul>
          </div>
        </div>

        <div class="row menu-container" data-aos="fade-up" data-aos-delay="200">

			<?php
			//list tempat
			$qku = mysqli_query($koneksi, "SELECT * FROM m_tempat ".
											"ORDER BY nama ASC");
			$rku = mysqli_fetch_assoc($qku);
			
			do
				{
				$ku_kd = balikin($rku['kd']);
				$ku_kode = balikin($rku['kode']);
				$ku_nama = balikin($rku['nama']);
				$ku_ket = balikin($rku['ket']);
				$ku_filex = balikin($rku['filex']);
				
				echo '<div class="col-lg-6 menu-item filter-tempat">
		            <img src="filebox/tempat/'.$ku_kd.'/'.$ku_filex.'" class="menu-img" alt="">
		            <div class="menu-content">
		              <a href="layanan.php?s=tempat&kd='.$ku_kd.'">'.$ku_nama.'</a>
		            </div>
		            <div class="menu-ingredients">
		              '.$ku_ket.'
		            </div>
		          </div>';
				}
			while ($rku = mysqli_fetch_assoc($qku));
			 
			 ?>

          
          <div class="col-lg-6 menu-item filter-sewa">
            <img src="<?php echo $sumber;?>/template/tbrs/assets/img/pemkot-1.png" class="menu-img" alt="">
            <div class="menu-content">
              <a href="penyewa.php">Registrasi dan Login</a>
            </div>
            <div class="menu-ingredients">
              Daftar Menjadi Penyewa Tempat dan Masuk Login
            </div>
          </div>


			<?php
			//list sop
			$qku = mysqli_query($koneksi, "SELECT * FROM m_sop ".
											"ORDER BY nama ASC");
			$rku = mysqli_fetch_assoc($qku);
			
			do
				{
				$ku_kd = balikin($rku['kd']);
				$ku_kode = balikin($rku['kode']);
				$ku_nama = balikin($rku['nama']);
				$ku_ket = balikin($rku['ket']);
				
				echo '<div class="col-lg-6 menu-item filter-sop">
		            <img src="'.$sumber.'/template/tbrs/assets/img/pemkot-1.png" class="menu-img" alt="">
		            <div class="menu-content">
		              <a href="layanan.php?s=sop&kd='.$ku_kd.'">'.$ku_nama.'</a>
		            </div>
		            <div class="menu-ingredients">
		              '.$ku_nama.'
		            </div>
		          </div>';
				}
			while ($rku = mysqli_fetch_assoc($qku));
			 
			 ?>




        </div>

      </div>
    </section><!-- End Menu Section -->



<?php
//isi
$i_polling = ob_get_contents();
ob_end_clean();













//isi *START
ob_start();


//query
$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
								"ORDER BY postdate DESC");
$rku = mysqli_fetch_assoc($qku);	


do
	{
	//nilai
	$ku_kd = balikin($rku['kd']);
	$ku_judul = balikin($rku['judul']);
	$ku_postdate = balikin($rku['postdate']);
	$ku_filex = balikin($rku['filex']);
	
	$nil_foto = "$sumber/filebox/artikel/$ku_kd/$ku_filex";
			
			
	?>

          <div class="testimonial-item">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              <?php echo $ku_judul;?>  
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              <br>
              <a href="artikel.php?artkd=<?php echo $ku_kd;?>">SELENGKAPNYA...</a>
            </p>
            <img src="<?php echo $nil_foto;?>" class="testimonial-img" alt="">
            <h3>ADMIN</h3>
            <h4><?php echo $ku_postdate;?></h4>
          </div>


	<?php
	}
while ($rku = mysqli_fetch_assoc($qku));


//isi
$i_siswa = ob_get_contents();
ob_end_clean();












//isi *START
ob_start();


//ambil delapan seniman saja, random
$qku = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
								"ORDER BY RAND() LIMIT 0,8");
$rku = mysqli_fetch_assoc($qku);	


do
	{
	//nilai
	$ku_kd = balikin($rku['kd']);
	$ku_nama = balikin($rku['nama_sanggar']);
	$ku_kategori = balikin($rku['kategori_kelompok']);
	$ku_jenis = balikin($rku['jenis_seni']);
	
	
	//jika ada foto
	$fileku = "filebox/profil/$ku_kd/$ku_kd-1.png";
	if (file_exists($fileku))
		{
		$fotoku = $fileku;			
		}
	else
		{
		$fotoku = "template/tbrs/assets/img/pemkot-1.png";
		}
	?>

          <div class="col-lg-3 col-md-6">
            <div class="member" data-aos="zoom-out" data-aos-delay="100">
              <img src="<?php echo $fotoku;?>" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4><?php echo $ku_nama;?></h4>
                  <span><?php echo $ku_kategori;?></span>
                </div>
                <div class="social">
                	<?php echo $ku_jenis;?>
                </div>
              </div>
            </div>
          </div>
	<?php
	}
while ($rku = mysqli_fetch_assoc($qku));
?>


<?php
//isi
$i_pegawai = ob_get_contents();
ob_end_clean();
















//isi *START
ob_start();


require("i_slideshow2.php");



//isi
$i_slideshow = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();


?>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
table.calendar		{ border-left:1px solid #999; }
tr.calendar-row	{  }
td.calendar-day	{ min-height:80px; font-size:11px; position:relative; } * html div.calendar-day { height:80px; }
td.calendar-day:hover	{ background:yellow; }
td.calendar-day-np	{ background:#eee; min-height:80px; } * html div.calendar-day-np { height:80px; }
td.calendar-day-head { background:orange; font-weight:bold; text-align:center; width:120px; padding:5px; border-bottom:1px solid #999; border-top:1px solid #999; border-right:1px solid #999; }
div.day-number		{ background:#999; padding:5px; color:#fff; font-weight:bold; float:right; margin:-5px -5px 0 0; width:20px; text-align:center; }
/* shared */
td.calendar-day, td.calendar-day-np { width:120px; padding:5px; border-bottom:1px solid #999; border-right:1px solid #999; }

</style>

	


<?php

//require
require("template/js/jumpmenu.js");
require("template/js/checkall.js");
require("template/js/swap.js");



$month = round($bulan);
$year = round($tahun);



$x_bulan = $arrbln[$month];
$x_tahun = $year;
$filenya_agenda = "agenda.php";
$ubln = $bulan;
$uthn = $tahun;



echo '<form action="agenda.php" method="post" name="formx">';
echo "<select name=\"ublnx\" onChange=\"MM_jumpMenu('self',this,0)\" class=\"btn btn-warning\">";
echo '<option value="'.$ubln.'" selected>'.$arrbln1[$ubln].'</option>';
for ($i=1;$i<=12;$i++)
	{
	$ibln = $i;

	echo '<option value="'.$filenya_agenda.'?ubln='.$ibln.'&uthn='.$uthn.'">'.$arrbln[$ibln].'</option>';
	}

echo '</select>';


echo "<select name=\"uthnx\" onChange=\"MM_jumpMenu('self',this,0)\" class=\"btn btn-warning\">";
echo '<option value="'.$uthn.'" selected>'.$uthn.'</option>';

for ($i=$tahun-2;$i<=$tahun-1;$i++)
	{
	$ithn = $i;

	echo '<option value="'.$filenya_agenda.'?ubln='.$ubln.'&uthn='.$ithn.'">'.$ithn.'</option>';
	}


echo '</select>
</form>';


/* draw table */
$calendar = '<table cellpadding="0" cellspacing="0" class="calendar" width="100%">';

/* table headings */
$headings = array('Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu');
$calendar.= '<tr class="calendar-row"><td class="calendar-day-head">'.implode('</td><td class="calendar-day-head">',$headings).'</td></tr>';

/* days and weeks vars now ... */
$running_day = date('w',mktime(0,0,0,$month,1,$year));
$days_in_month = date('t',mktime(0,0,0,$month,1,$year));
$days_in_this_week = 1;
$day_counter = 0;
$dates_array = array();

/* row for week one */
$calendar.= '<tr class="calendar-row">';

/* print "blank" days until the first of the current week */
for($x = 0; $x < $running_day; $x++):
	$calendar.= '<td class="calendar-day-np"> </td>';
	$days_in_this_week++;
endfor;

/* keep going with days.... */
for($list_day = 1; $list_day <= $days_in_month; $list_day++):
	$calendar.= '<td class="calendar-day" valign="top">';

		/* add in the day number */
		$calendar.= '<div class="day-number">'.$list_day.'</div>';

		/** QUERY THE DATABASE FOR AN ENTRY FOR THIS DAY !!  IF MATCHES FOUND, PRINT THEM !! **/
		$calendar.= str_repeat('<p> </p>',2);
		
		
		
		//cek event
		/*
		$qku = mysqli_query($koneksi, "SELECT * FROM cp_agenda ".
								"WHERE round(DATE_FORMAT(tgl_mulai, '%d')) = '$list_day' ".
								"AND round(DATE_FORMAT(tgl_mulai, '%m')) = '$month' ".
								"AND round(DATE_FORMAT(tgl_mulai, '%Y')) = '$year' ".
								"ORDER BY tgl_mulai ASC");
		$rku = mysqli_fetch_assoc($qku);
		$tku = mysqli_num_rows($qku);
		 */ 
		 
		$qku = mysqli_query($koneksi, "SELECT * FROM cp_agenda ".
								"WHERE round(DATE_FORMAT(tgl_mulai, '%d')) = '$list_day' ".
								"AND round(DATE_FORMAT(tgl_mulai, '%m')) = '$month' ".
								"AND round(DATE_FORMAT(tgl_mulai, '%Y')) = '$year' ".
								"ORDER BY tgl_mulai ASC, ".
								"waktu ASC");
		$rku = mysqli_fetch_assoc($qku);
		$tku = mysqli_num_rows($qku);

		
		//jika ada agenda
		if (!empty($tku))
			{
			ob_start();
			
				//list
				do
					{
					$ku_tgl_mulai = balikin($rku['tgl_mulai']);
					$ku_tgl_selesai = balikin($rku['tgl_selesai']);
					$ku_judul = balikin($rku['judul']);
					$ku_waktu = balikin($rku['waktu']);
					$ku_biaya = balikin($rku['biaya']);
					$ku_isi = balikin($rku['isi']);
					$ku_target = balikin($rku['target']);
					$ku_syarat = balikin($rku['syarat']);
						
			
			
					echo "<b>$ku_judul</b>
					<br>
					<br>";
					}
				while ($rku = mysqli_fetch_assoc($qku));
				
				
			//isi
			$ku_tandax = ob_get_contents();
			ob_end_clean();


			
			$ku_tanda = "<a id=\"tglx$list_day\" title=\"Lihat Agenda : $list_day/$month/$year\">$ku_tandax</a>";		
			}
		else
			{
			$ku_tanda = "";			
			}
						
						
		$xtglku = "$ku_tanda";		
		
		
		
	$calendar.= '<font color="red">'.$xtglku.'</font> <br><br><br><br><br></td>';
	if($running_day == 6):
		$calendar.= '</tr>';
		if(($day_counter+1) != $days_in_month):
			$calendar.= '<tr class="calendar-row">';
		endif;
		$running_day = -1;
		$days_in_this_week = 0;
	endif;
	$days_in_this_week++; $running_day++; $day_counter++;
endfor;

/* finish the rest of the days in the week */
if($days_in_this_week < 8):
	for($x = 1; $x <= (8 - $days_in_this_week); $x++):
		$calendar.= '<td class="calendar-day-np"> </td>';
	endfor;
endif;

/* final row */
$calendar.= '</tr>';

/* end the table */
$calendar.= '</table>';

/* all done, return result */
//return $calendar;



echo $calendar;
//bikin kalender event /////////////////////////////////////////////////////////////////////////////////
?>







<?php	
//isi
$i_kalender = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_footer.php");

//isi
$i_footer = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM profil_tulisan ".
									"WHERE kd = 'f1d588d45382deda7727882f3d1627dc'");
$rku = mysqli_fetch_assoc($qku);
$e_isi = balikin($rku['isi']);

//pecah titik - titik
$e_isi2 = pathasli2($e_isi);


echo $e_isi2;


//isi
$pro_sekapur = ob_get_contents();
ob_end_clean();














//isi *START
ob_start();


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM profil_tulisan ".
									"WHERE kd = 'a32e634b035c4774c126631106208666'");
$rku = mysqli_fetch_assoc($qku);
$e_isi = balikin($rku['isi']);

//pecah titik - titik
$e_isi2 = pathasli2($e_isi);


echo $e_isi2;


//isi
$pro_sejarah = ob_get_contents();
ob_end_clean();



















//isi *START
ob_start();


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM profil_tulisan ".
									"WHERE kd = '72c1cb4c637d2cf9916205c82025a9ac'");
$rku = mysqli_fetch_assoc($qku);
$e_isi = balikin($rku['isi']);

//pecah titik - titik
$e_isi2 = pathasli2($e_isi);


echo $e_isi2;


//isi
$pro_perkantoran = ob_get_contents();
ob_end_clean();













//isi *START
ob_start();


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM profil_tulisan ".
									"WHERE kd = '50dd990e17bf2039704c832616f92d3b'");
$rku = mysqli_fetch_assoc($qku);
$e_isi = balikin($rku['isi']);

//pecah titik - titik
$e_isi2 = pathasli2($e_isi);


echo $e_isi2;


//isi
$pro_fungsi = ob_get_contents();
ob_end_clean();













//isi *START
ob_start();


//detail
$qku = mysqli_query($koneksi, "SELECT * FROM profil_tulisan ".
									"WHERE kd = '05d9dd97734eefd5a793061c7b252d1a'");
$rku = mysqli_fetch_assoc($qku);
$e_isi = balikin($rku['isi']);

//pecah titik - titik
$e_isi2 = pathasli2($e_isi);


echo $e_isi2;


//isi
$pro_visi = ob_get_contents();
ob_end_clean();













//isi *START
ob_start();


?>
<style type="text/css">

#myModal, #myModal2 {
	z-index: 9999;
	}

</style>

	
<link rel="stylesheet" href="../../template/css/bootstrap-side-modals.css">



<script type="text/javascript">
$(document).ready(function () {
  		$(".modal-dialog").css("width", "90%");
  		
  		
  		<?php 
  		//nilai sesi
  		$sesiya = $_SESSION['sesibukuya'];
  		
  		//jika ada
  		if (!empty($sesiya))
			{
			?>
	        $("#myModal").modal('hide');
	        <?php
			}
		else
			{
			?>
	        $("#myModal").modal('show');
			<?php
			}
		?>
});
</script>
  
  

<div class="modal fade right" id="myModal"  tabindex="-1" role="dialog" aria-labelledby="myModal">
<div class="modal-dialog modal-dialog-right modal-l" style="max-width: 100%;" role="document">
<div class="modal-content">
<div class="modal-header btn-warning">
<h5 class="modal-title">Silahkan Isi Buku Tamu</h5>
<button type="button" class="btn-danger close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">


        	
			<div id="ihasilnya">
	            <form id="formx2" role="form" class="php-email-form">
	              <div class="form-row">
	                <div class="col-md-6 form-group">
	                  <input type="text" name="e_nama" class="form-control btn-warning" id="e_nama" placeholder="Nama" data-rule="minlen:4" data-msg="Tuliskan nama minimal 4 huruf" required>
	                  <div class="validate"></div>
	                </div>
	                <div class="col-md-6 form-group">
	                  <input type="email" class="form-control btn-warning" name="e_email" id="e_email" placeholder="Email" data-rule="email" data-msg="Masukkan alamat email dengan benar" required>
	                  <div class="validate"></div>
	                </div>
	              </div>
	              
	              
	              <div class="form-row">
	                <div class="col-md-6 form-group">
	                  <input type="text" name="e_alamat" class="form-control btn-warning" id="e_alamat" placeholder="Kelurahan, Kecamatan, Kota" data-rule="minlen:4" data-msg="Tuliskan Alamat minimal 4 huruf" required>
	                  <div class="validate"></div>
	                </div>
	                <div class="col-md-6 form-group">
	                  <input type="text" class="form-control btn-warning" name="e_telp" id="e_telp" placeholder="Telepon" data-rule="minlen:4" data-msg="Masukkan nomor telepon dengan benar" required>
	                  <div class="validate"></div>
	                </div>
	              </div>
	              
	              

	              <div class="form-group">
	                <input type="text" class="form-control btn-warning" name="e_subjek" id="e_subjek" data-rule="minlen:4" data-msg="Tulis Subjek minimal 4 hutuf" placeholder="Topik/Subjek" required>
	                <div class="validate"></div>
	              </div>
	              <div class="form-group">
	                <textarea class="form-control btn-warning" name="e_isi" id="e_isi" rows="3" data-rule="required" data-msg="Isi Saran/Masukan/Komentar" placeholder="Isi Saran/Masukan/Komentar" required></textarea>
	                <div class="validate"></div>
	              </div>
	              <div class="text-center"><button type="submit" class="btn-block btn-danger" id="btnKRM">KIRIM PESAN >></button></div>
	            </form>
	
	
				
			
			</div>


</div>

</div>
</div>
</div>










<script>
$(document).ready(function(){
  		
<?php
for($list_day = 1; $list_day <= $days_in_month; $list_day++):
?>

  		$('#tglx<?php echo $list_day;?>').click(function() {
		     

		     $.ajax({
	             type: 'GET', 
		         url: 'i_index.php?aksi=agendalihat', 
		         data: 'tglku=<?php echo $list_day;?>&blnku=<?php echo $month;?>&thnku=<?php echo $year;?>', 
		         success: function(response) {
					$("#modal-judul").html("Tanggal : <?php echo $list_day;?>/<?php echo $month;?>/<?php echo $year;?>");
					$("#modal-isi").html(response);
					$("#myModal2").modal('show');
		            }
		       });

           
           
           
		    });
		 


<?php
	$days_in_this_week++; $running_day++; $day_counter++;
endfor;
?>

 
		




  
});
</script>









<div class="modal fade" id="myModal2" style="z-index:9999999;"  role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div id="modal-judul" class="modal-header btn-danger">Judul...</div>
            <div id="modal-isi" class="modal-body btn-warning">
                isi...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>






<?php
//isi
$isi = ob_get_contents();
ob_end_clean();











require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
