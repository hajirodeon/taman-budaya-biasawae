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
$filenya = "booking.php";
$judul = "[BOOKING] Pemesan";
$judulku = "$judul";
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
		mysqli_query($koneksi, "DELETE FROM sewa_tempat ".
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
//jika null
if (empty($kunci))
	{
	$sqlcount = "SELECT * FROM sewa_tempat ".
					"ORDER BY postdate DESC";
	}
	
else
	{
	$sqlcount = "SELECT * FROM sewa_tempat ".
					"WHERE tempat_nama LIKE '%$kunci%' ".
					"OR kodebooking LIKE '%$kunci%' ".
					"OR booking_postdate LIKE '%$kunci%' ".
					"ORDER BY postdate DESC";
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



echo '<form action="'.$filenya.'" method="post" name="formx">
<p>
<input name="kunci" type="text" value="'.$kunci2.'" size="20" class="btn btn-success" placeholder="Kata Kunci...">
<input name="btnCARI" type="submit" value="CARI" class="btn btn-danger">
<input name="btnBTL" type="submit" value="RESET" class="btn btn-info">
</p>



<div class="table-responsive">          
<table class="table" border="1">
<thead>

<tr valign="top" bgcolor="'.$warnaheader.'">
<td width="20">&nbsp;</td>
<td><strong><font color="'.$warnatext.'">POSTDATE</font></strong></td>
<td><strong><font color="'.$warnatext.'">TEMPAT/LOKASI</font></strong></td>
<td><strong><font color="'.$warnatext.'">KODE_BOOKING</font></strong></td>
<td><strong><font color="'.$warnatext.'">TGLMULAI</font></strong></td>
<td><strong><font color="'.$warnatext.'">TGLSELESAI</font></strong></td>
<td><strong><font color="'.$warnatext.'">PENYEWA</font></strong></td>
<td><strong><font color="'.$warnatext.'">TUJUAN</font></strong></td>
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
		$i_postdate = balikin($data['postdate']);
		$i_tempat_kd = balikin($data['tempat_kd']);
		$i_tempat = balikin($data['tempat_nama']);
		$i_kodebooking = balikin($data['kodebooking']);
		$i_tgl_mulai = balikin($data['tgl_mulai']);
		$i_tgl_selesai = balikin($data['tgl_selesai']);
		$i_p_kd = balikin($data['penyewa_kd']);
		$i_p_nama = balikin($data['penyewa_nama']);
		$i_tujuan = balikin($data['tujuan']);

		
		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td>
		<input type="checkbox" name="item'.$nomer.'" value="'.$i_kd.'">
        </td>
		<td>'.$i_postdate.'</td>
		<td>'.$i_tempat.'</td>
		<td>
		'.$i_kodebooking.'
		<br>
		
		<a href="booking_pdf.php?bookkd='.$i_kd.'&bookkode='.$i_kodebooking.'" class="btn btn-danger" target="_blank">LIHAT PDF >></a>
		</td>
		
		<td>'.$i_tgl_mulai.'</td>
		<td>'.$i_tgl_selesai.'</td>
		<td>
		'.$i_p_nama.'
		<br>';

		//detail
		$qyuk = mysqli_query($koneksi, "SELECT * FROM m_penyewa ".
											"WHERE kd = '$i_p_kd'");
		$ryuk = mysqli_fetch_assoc($qyuk);
		$yuk_nama = balikin($ryuk['nama']);
		$yuk_alamat = balikin($ryuk['alamat']);
		$yuk_kelamin = balikin($ryuk['kelamin']);
		$yuk_noid = balikin($ryuk['no_id']);
		$yuk_telp = balikin($ryuk['telp']);
		$yuk_email = balikin($ryuk['email']);
		
							
		echo '<p>
		Alamat :
		<br>
		'.$yuk_alamat.'
		</p>
		
		<p>
		Jenis Kelamin :
		<br>
		'.$yuk_kelamin.'
		</p>
		
		<p>
		Nomor KTP :
		<br>
		'.$yuk_noid.'
		</p>
		
		<p>
		Nomor Telepon :
		<br>
		'.$yuk_telp.'
		</p>
		
		<p>
		E-Mail :
		<br>
		'.$yuk_email.'
		</p>
            
				
		
		
		</td>
		<td>'.$i_tujuan.'</td>
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
<input name="btnBTL" type="reset" value="BATAL" class="btn btn-success">
<input name="btnHPS" type="submit" value="HAPUS" class="btn btn-danger">
</td>
</tr>
</table>
</form>';


//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");


//null-kan
xclose($koneksi);
exit();
?>