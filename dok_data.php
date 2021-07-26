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
$tpl = LoadTpl("template/cp_dokumen.html");



nocache;

//nilai
$filenya = "dok_data.php";
$filenya_ke = $sumber;
$judul = "DOKUMENTASI : Serba - Serbi Data";
$judulku = $judul;
$s = cegah($_REQUEST['s']);
$kd = cegah($_REQUEST['kd']);
$kunci = cegah($_REQUEST['kunci']);
$kunci2 = balikin($_REQUEST['kunci']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}





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
 
<br>
<br>
<br>
<br>
<br>
<!-- ======= about ======= -->
<section id="about" class="specials">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Serba - Serbi</h2>
      <p>DATA</p>
    </div>

    <div class="row" data-aos="fade-up" data-aos-delay="100">
      <div class="col-lg-3">
        <ul class="nav nav-tabs flex-column">
          <li class="nav-item">
            <a class="nav-link active show" data-toggle="tab" href="#tab-1">Sanggar/Seniman</a>
          </li>
        </ul>
      </div>
      <div class="col-lg-9 mt-4 mt-lg-0">
        <div class="tab-content">
          <div class="tab-pane active show" id="tab-1">
            <div class="row">
              <div class="col-lg-12 details order-2 order-lg-1">
                <h3>Sanggar/Seniman</h3>
                <p>

					
					<?php				
					//nilai
					$limit = 5;
					$warnaheader = "brown";
					
					
					//jika null
					if (empty($kunci))
						{
						$sqlcount = "SELECT * FROM m_seniman ".
										"ORDER BY nama_sanggar ASC";
						}
						
					else
						{
						$sqlcount = "SELECT * FROM m_seniman ".
										"WHERE nama_sanggar LIKE '%$kunci%' ".
										"OR penanggung_jawab LIKE '%$kunci%' ".
										"OR alamat LIKE '%$kunci%' ".
										"OR kecamatan LIKE '%$kunci%' ".
										"OR kelurahan LIKE '%$kunci%' ".
										"OR telp LIKE '%$kunci%' ".
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
					
					
					
					echo '<form action="'.$filenya.'" method="post" name="formx">
					<p>
					<input name="kunci" type="text" value="'.$kunci2.'" size="20" class="btn btn-warning" placeholder="Kata Kunci...">
					<input name="btnCARI" type="submit" value="CARI" class="btn btn-danger">
					<input name="btnBTL" type="submit" value="RESET" class="btn btn-info">
					</p>
						
					
					<div class="table-responsive">          
					<table class="table" border="1">
					<thead>
					
					<tr valign="top" bgcolor="'.$warnaheader.'">
					<td><strong><font color="'.$warnatext.'">NAMA_SANGGAR</font></strong></td>
					<td><strong><font color="'.$warnatext.'">PENANGGUNG_JAWAB</font></strong></td>
					<td><strong><font color="'.$warnatext.'">ALAMAT</font></strong></td>
					<td><strong><font color="'.$warnatext.'">KELURAHAN</font></strong></td>
					<td><strong><font color="'.$warnatext.'">KECAMATAN</font></strong></td>
					<td><strong><font color="'.$warnatext.'">TELEPON</font></strong></td>
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
							$i_nama = balikin($data['nama_sanggar']);
							$i_pjawab = balikin($data['penanggung_jawab']);
							$i_alamat = balikin($data['alamat']);
							$i_kel = balikin($data['kelurahan']);
							$i_kec = balikin($data['kecamatan']);
							$i_telp = balikin($data['telp']);
					
		
							echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
							echo '<td>'.$i_nama.'</td>
							<td>'.$i_pjawab.'</td>
							<td>'.$i_alamat.'</td>
							<td>'.$i_kel.'</td>
							<td>'.$i_kec.'</td>
							<td>'.$i_telp.'</td>
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
					<br>
				
					<input name="jml" type="hidden" value="'.$count.'">
					<input name="s" type="hidden" value="'.$s.'">
					<input name="kd" type="hidden" value="'.$kdx.'">
					<input name="page" type="hidden" value="'.$page.'">
					</td>
					</tr>
					</table>
					</form>';
					?>
		
                	
                </p>
              </div>

            </div>
          </div>


          <div class="tab-pane" id="tab-3">
            <div class="row">
              <div class="col-lg-12 details order-2 order-lg-1">
                <h3>Seniman</h3>
                <p>
					{data_seniman}
				</p>


              </div>
            </div>
          </div>
        </div>
      </div>
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
