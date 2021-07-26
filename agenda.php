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
$tpl = LoadTpl("template/cp_agenda.html");



nocache;

//nilai
$filenya = "agenda.php";
$filenya_ke = $sumber;
$ubln = cegah($_REQUEST['ubln']);
$uthn = cegah($_REQUEST['uthn']);

	
$month = round($ubln);
$year = round($uthn);
$judul = "Agenda : $ubln/$uthn";





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

<section id="about" class="specials">
  <div class="container" data-aos="fade-up">
  	<br>
  	<br>
  	<br>
  	<br>

    <div class="section-title">
      <h2>TBRS Semarang</h2>
      <p>AGENDA</p>
    </div>


	
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
	
	
	
	$x_bulan = $arrbln[$month];
	$x_tahun = $year;
	$filenya_agenda = $filenya;
	
	
	echo '<form action="'.$filenya.'" method="post" name="formx">';
	echo "<select name=\"ublnx\" onChange=\"MM_jumpMenu('self',this,0)\" class=\"btn btn-warning\">";
	echo '<option value="'.$ubln.'" selected>'.$arrbln[$ubln].'</option>';
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
