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
$filenya = "dok_seni.php";
$filenya_ke = $sumber;
$judul = "DOKUMENTASI : Serba - Serbi Seni Budaya";
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
      <h2>Serba - Serbi</h2>
      <p>SENI BUDAYA</p>
    </div>



	<?php
	//nilai session
	$sesiku1 = cegah($_SESSION['sesiku1']);
	$sesinama1 = cegah($_SESSION['sesinama1']);
	
	//jika tidak login
	if (empty($sesiku1))
		{
		?>

	    <div class="row" data-aos="fade-up" data-aos-delay="100">
	      <div class="col-lg-3">
	        <ul class="nav nav-tabs flex-column">
	          <li class="nav-item">
	            <a class="nav-link active show" data-toggle="tab" href="#tab-1">Berita</a>
	          </li>
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-2">Artikel</a>
	          </li>
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-3">Opini</a>
	          </li>
	          
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-4">Galeri Foto</a>
	          </li>
	          
	          
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-5">Login Seniman</a>
	          </li>
	          
	        </ul>
	      </div>
	      <div class="col-lg-9 mt-4 mt-lg-0">
	        <div class="tab-content">
	          <div class="tab-pane active show" id="tab-1">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Berita</h3>
	                <p>
	
						<?php
						//query
						$limit = 100;
						$warnaheader = "orange";
						$warnatext = "brown";
						$p = new Pager();
						$start = $p->findStart($limit);
					
						$sqlcount = "SELECT * FROM cp_artikel ".
										"WHERE kategori = 'Berita' ".
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
								$i_seniman = balikin($data['seniman_nama']);
								$i_kategori = balikin($data['kategori']);
								$i_judul = balikin($data['judul']);
								$i_isi = balikin($data['isi']);
								$i_postdate = $data['postdate'];
								$i_filex = balikin($data['filex']);
								
								$nil_foto = "$sumber/filebox/artikel/$i_kd/$i_filex";
								
								
					
					
					
								//pecah titik - titik
								$i_isi2 = pathasli2($i_isi);
					
					
					

					
								echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
								echo '<td width="100">
								<img src="'.$nil_foto.'" height="100">
								</td>
								<td>
								<font color="orange"><h2>'.$i_judul.'</h2></font>
								['.$i_postdate.']. [Kategori : '.$i_kategori.']. 
								<br>
								[Kontributor : '.$i_seniman.']. [<a href="artikel.php?artkd='.$i_kd.'" target="_blank">SELENGKAPNYA...</a>]
								</td>
					    		</tr>';
								}
							while ($data = mysqli_fetch_assoc($result));
					
							echo '</tbody>
								  </table>
								  </div>
					
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
							<td>
							<input name="jml" type="hidden" value="'.$limit.'">
							<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
							<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
							</td>
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

						?>
	                	
	                </p>
	              </div>
	
	            </div>
	          </div>
	
	
	          <div class="tab-pane" id="tab-2">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Artikel</h3>
	                <p>
						<?php
						//query
						$limit = 100;
						$warnaheader = "orange";
						$warnatext = "brown";
						$p = new Pager();
						$start = $p->findStart($limit);
					
						$sqlcount = "SELECT * FROM cp_artikel ".
										"WHERE kategori = 'Artikel' ".
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
								$i_seniman = balikin($data['seniman_nama']);
								$i_kategori = balikin($data['kategori']);
								$i_judul = balikin($data['judul']);
								$i_isi = balikin($data['isi']);
								$i_postdate = $data['postdate'];
								$i_filex = balikin($data['filex']);
								
								$nil_foto = "$sumber/filebox/artikel/$i_kd/$i_filex";
								
								
					
					
					
								//pecah titik - titik
								$i_isi2 = pathasli2($i_isi);
					
					
					

					
								echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
								echo '<td width="100">
								<img src="'.$nil_foto.'" height="100">
								</td>
								<td>
								<font color="orange"><h2>'.$i_judul.'</h2></font>
								['.$i_postdate.']. [Kategori : '.$i_kategori.']. 
								<br>
								[Kontributor : '.$i_seniman.']. [<a href="artikel.php?artkd='.$i_kd.'" target="_blank">SELENGKAPNYA...</a>]
								</td>
					    		</tr>';
								}
							while ($data = mysqli_fetch_assoc($result));
					
							echo '</tbody>
								  </table>
								  </div>
					
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
							<td>
							<input name="jml" type="hidden" value="'.$limit.'">
							<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
							<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
							</td>
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

						?>

					</p>
	
	
	              </div>
	            </div>
	          </div>
	          
	          <div class="tab-pane" id="tab-3">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Opini</h3>
	                <p>
						<?php
						//query
						$limit = 100;
						$warnaheader = "orange";
						$warnatext = "brown";
						$p = new Pager();
						$start = $p->findStart($limit);
					
						$sqlcount = "SELECT * FROM cp_artikel ".
										"WHERE kategori = 'Opini' ".
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
								$i_seniman = balikin($data['seniman_nama']);
								$i_kategori = balikin($data['kategori']);
								$i_judul = balikin($data['judul']);
								$i_isi = balikin($data['isi']);
								$i_postdate = $data['postdate'];
								$i_filex = balikin($data['filex']);
								
								$nil_foto = "$sumber/filebox/artikel/$i_kd/$i_filex";
								
								
					
					
					
								//pecah titik - titik
								$i_isi2 = pathasli2($i_isi);
					
					
					

					
								echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
								echo '<td width="100">
								<img src="'.$nil_foto.'" height="100">
								</td>
								<td>
								<font color="orange"><h2>'.$i_judul.'</h2></font>
								['.$i_postdate.']. [Kategori : '.$i_kategori.']. 
								<br>
								[Kontributor : '.$i_seniman.']. [<a href="artikel.php?artkd='.$i_kd.'" target="_blank">SELENGKAPNYA...</a>]
								</td>
					    		</tr>';
								}
							while ($data = mysqli_fetch_assoc($result));
					
							echo '</tbody>
								  </table>
								  </div>
					
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
							<td>
							<input name="jml" type="hidden" value="'.$limit.'">
							<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
							<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
							</td>
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

						?>

					</p>
	
	
	              </div>
	            </div>
	          </div>
	                    
	
	
	          <div class="tab-pane" id="tab-4">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Galeri Foto</h3>
	                <p>

						<?php
						//query
						$limit = 100;
						$warnaheader = "orange";
						$warnatext = "brown";
						$p = new Pager();
						$start = $p->findStart($limit);
					
						$sqlcount = "SELECT * FROM cp_foto_seniman ".
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
								$i_seniman = balikin($data['seniman_nama']);
								$i_nama = balikin($data['nama']);
								$i_ket = balikin($data['ket']);
								$i_postdate = $data['postdate'];
								$i_filex = balikin($data['filex']);
								
								$nil_foto = "$sumber/filebox/foto/$i_kd/$i_filex";
								
					


					
								echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
								echo '<td width="300">
								<img src="'.$nil_foto.'" height="300">
								</td>
								<td>
								'.$i_nama.'
								<br>
								<i>'.$i_ket.'</i>
								<br>
								[Postdate : <b>'.$i_postdate.'</b>]. 
								<br>
								[Oleh : <b>'.$i_seniman.'</b>].
								</td>
					    		</tr>';
								}
							while ($data = mysqli_fetch_assoc($result));
					
							echo '</tbody>
								  </table>
								  </div>
					
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
							<td>
							<input name="jml" type="hidden" value="'.$limit.'">
							<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
							<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
							</td>
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

						?>

					</p>
	
	
	              </div>
	            </div>
	          </div>
	                              
	
	
	          <div class="tab-pane" id="tab-5">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Login Seniman</h3>
	                <p>
						
								<div id="ihasil1"></div>
									
									<form name="formx21" id="formx21">
									<p>
									Username : 
									<br>
									<input name="iuser" id="iuser" value="" type="text" class="btn btn-warning" required>
									</p>
									
									<p>
									Password :
									<br>
									<input name="ipass" id="ipass" value="" type="password" class="btn btn-warning" required>
									</p>
									
									<p>
									<input type="submit" name="btnKRM1" id="btnKRM1" value="KIRIM >" class="btn btn-danger">
									</p>
									
									
									</form>
					    	    </div>
			
								
								
			
					</p>
	
	
	              </div>
	            </div>
	          </div>
	                    
	
	
	          
	        </div>
	      </div>
	      
      <?php
		}
	else
		{
		?>
		
		<div class="row" data-aos="fade-up" data-aos-delay="100">
	      <div class="col-lg-3">
	      	
	      	<div style="background-color: orange" align="center">
	      		<br>
	      		
	      		<?php
	      		$fileku = "filebox/profil/$sesiku1/$sesiku1-1.png";
	
				if (file_exists($fileku))
					{
					$nil_foto = "$sumber/$fileku";			
					}
				else
					{
					$nil_foto = "$sumber/img/logo.png";
					}
					
					
				?>
				      		
		      	<img src="<?php echo $nil_foto;?>" width="200px" height="200px" /> 
		      	<br>
		      	<br>
		      </div>
	      	
	        <ul class="nav nav-tabs flex-column">
	          <li class="nav-item">
	            <a class="nav-link active show" data-toggle="tab" href="#tab-1">Profil Diri</a>
	          </li>
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-2">Ganti Foto Diri</a>
	          </li>
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-3">Ganti Password</a>
	          </li>
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-4">Artikel</a>
	          </li>
	          
	          
	          <li class="nav-item">
	            <a class="nav-link" data-toggle="tab" href="#tab-5">Galeri Foto</a>
	          </li>

	        </ul>
	      </div>
	      <div class="col-lg-9 mt-4 mt-lg-0">
	        <div class="tab-content">
	          <div class="tab-pane active show" id="tab-1">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Profil Diri</h3>
	                <p>
	
							<?php
							//detail
							$qyuk = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
																"WHERE kd = '$sesiku1'");
							$ryuk = mysqli_fetch_assoc($qyuk);
							$kd = $sesiku1;
							$yuk_status = balikin($ryuk['status']);
							$yuk_kategori = balikin($ryuk['kategori_kelompok']);
							$yuk_jenis = balikin($ryuk['jenis_seni']);
							$yuk_sanggar = balikin($ryuk['nama_sanggar']);
							$yuk_pjawab = balikin($ryuk['penanggung_jawab']);
							$yuk_telp = balikin($ryuk['telp']);
							$yuk_masa_berlaku = balikin($ryuk['masa_berlaku']);
							$yuk_alamat = balikin($ryuk['alamat']);
							$yuk_kec = balikin($ryuk['kecamatan']);
							$yuk_kel = balikin($ryuk['kelurahan']);
							$yuk_jml_anggota_l = balikin($ryuk['jml_anggota_l']);
							$yuk_jml_anggota_p = balikin($ryuk['jml_anggota_p']);
							$yuk_total = balikin($ryuk['total_anggota']);
							$yuk_tgl_pendirian = balikin($ryuk['tgl_pendirian']);
							
							?>		
					            <form id="formx2" role="form" class="php-email-form">
					              <div class="form-row">
					                <div class="col-md-6 form-group">
					                 Status : 
					                 <br>
					                 <b><?php echo $yuk_status;?></b>
					                 
					                </div>
					                <div class="col-md-6 form-group">
					                  Kategori Kelompok :
					                  <br>
					                  <b><?php echo $yuk_kategori;?></b>
					                </div>


					                <div class="col-md-6 form-group">
					                  Jenis Seni :
					                  <br>
					                  <b><?php echo $yuk_jenis;?></b>

					                </div>
					                <div class="col-md-6 form-group">
					                  Nama Sanggar :
					                  <br>
					                  <b><?php echo $yuk_sanggar;?></b>
					                </div>

					              
				
					              <div class="col-md-6 form-group">
					                Penanggung Jawab :
					                <br>
					                <b><?php echo $yuk_pjawab;?></b>
					              </div>
					              
					              <div class="col-md-6 form-group">
					                Telepon :
					                <br>
					                <b><?php echo $yuk_telp;?></b>
					              </div>
					              
					              
					              <div class="col-md-6 form-group">
					                Masa Berlaku :
					                <br>
					                <b><?php echo $yuk_masa_berlaku;?></b>
					              </div>
					              
					              <div class="col-md-6 form-group">
					                Alamat :
					                <br>
					                <b><?php echo $yuk_alamat;?></b>
					              </div>
					              
					              <div class="col-md-6 form-group">
					                Kecamatan :
					                <br>
					                <b><?php echo $yuk_kec;?></b>
					              </div>
					              <div class="col-md-6 form-group">
					                Kelurahan :
					                <br>
					                <b><?php echo $yuk_kel;?></b>
					              </div>
					              
					              <div class="col-md-6 form-group">
					                Total Anggota :
					                <br>
					                <b><?php echo $yuk_total;?></b>
					              </div>
					              
					              <div class="col-md-6 form-group">
					                Jumlah Anggota Laki - Laki :
					                <br>
					                <b><?php echo $yuk_jml_anggota_l;?></b>
					              </div>
					              
					              <div class="col-md-6 form-group">
					                Jumlah Anggota Perempuan :
					                <br>
					                <b><?php echo $yuk_jml_anggota_p;?></b>
					              </div>
					              <div class="col-md-6 form-group">
					                Tanggal Pendirian :
					                <br>
					                <b><?php echo $yuk_tgl_pendirian;?></b>
					              </div>
					              
					              
					              
					              
					              <hr>
					              <a href="logout.php" class="btn btn-block btn-danger">LOGOUT/KELUAR >></a>
					              <hr>
					              
					              
					              </div>
					            </form>
								
		

	                	
	                </p>
	              </div>
	
	            </div>
	          </div>
	
	
	          <div class="tab-pane" id="tab-2">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Ganti Foto Diri</h3>
	                <p>
									
													
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
					          if (extn == "png" || extn == "jpg" || extn == "jpeg") {
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
						
						
						
					       $('#image-holder').load("<?php echo $sumber;?>/i_dok_seni.php?aksi=lihat1&kd=<?php echo $kd;?>");
					
					
					
					        
					    $('#upload_image').on('change', function(event){
					     event.preventDefault();
					     
							$('#loading').show();
					
					
						
						     $.ajax({
						      url:"i_dok_seni_upload.php?kd=<?php echo $kd;?>",
						      method:"POST",
						      data:new FormData(this),
						      contentType:false,
						      cache:false,
						      processData:false,
						      success:function(data){
								$('#loading').hide();
						       $('#preview').load("<?php echo $sumber;?>/i_dok_seni.php?aksi=lihat&kd=<?php echo $kd;?>");
						       	
						      }
						     })
						    });
						    
						    
					});  
					</script>
				

					<p>
					NB. File Image Foto dengan Minimal Resolusi 400 x 400 pixel
					</p>

									
									

					<form action="<?php echo $filenya;?>" method="post" name="formx23" id="formx23">
						
					<p>
					<input name="btnKRM3" id="btnKRM3" type="submit" value="SIMPAN >>" class="btn btn-danger">
					</p>
					
					
					</form>									
						
						
									

					</p>
	
	
	              </div>
	            </div>
	          </div>
	
	
	          <div class="tab-pane" id="tab-3">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Ganti Password</h3>
	                <p>
									
							<div id="ihasil2"></div>
								<form name="formx22" id="formx22">
								<p>Password Lama : <br>
								<input name="passlama" id="passlama" type="password" class="btn btn-warning" required>
								</p>
								<br>
								
								<p>Password Baru : <br>
								<input name="passbaru" id="passbaru" type="password" class="btn btn-warning" required>
								</p>
								<br>
								
								<p>RE-Password Baru : <br>
								<input name="passbaru2" id="passbaru2" type="password" class="btn btn-warning" required>
								</p>
								<br>
								
								
								
								<p>
								<input name="btnKRM2" id="btnKRM2" type="submit" value="SIMPAN >>" class="btn btn-danger">
								</p>
								
								</form>
					</p>
	
	
	              </div>
	            </div>
	          </div>
	
	          
	          <div class="tab-pane" id="tab-4">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Artikel</h3>
	                <p>
		
					<?php
					echo '<p>
					<a href="dok_seni_artikel.php" class="btn btn-danger">Kirim Berita/Artikel/Opini</a>
					</p>
					
					<hr>';


						//query
						$limit = 100;
						$warnaheader = "orange";
						$warnatext = "brown";
						$p = new Pager();
						$start = $p->findStart($limit);
					
						$sqlcount = "SELECT * FROM cp_artikel ".
										"WHERE seniman_kd = '$sesiku1' ".
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
							<td width="50"><strong><font color="'.$warnatext.'">POSTDATE</font></strong></td>
							<td width="50"><strong><font color="'.$warnatext.'">FOTO</font></strong></td>
							<td width="50"><strong><font color="'.$warnatext.'">KATEGORI</font></strong></td>
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
								$i_kategori = balikin($data['kategori']);
								$i_judul = balikin($data['judul']);
								$i_isi = balikin($data['isi']);
								$i_postdate = $data['postdate'];
								$i_filex = balikin($data['filex']);
								
								$nil_foto = "$sumber/filebox/artikel/$i_kd/$i_filex";
								
								
					
					
					
								//pecah titik - titik
								$i_isi2 = pathasli2($i_isi);
					
					
					

					
								echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
								echo '<td>'.$i_postdate.'</td>
								<td>
								<img src="'.$nil_foto.'" height="100">
								</td>
								<td>'.$i_kategori.'</td>
								<td>
								'.$i_judul.'
								<br>
								[<a href="artikel.php?artkd='.$i_kd.'" target="_blank">SELENGKAPNYA...</a>]
								</td>
					    		</tr>';
								}
							while ($data = mysqli_fetch_assoc($result));
					
							echo '</tbody>
								  </table>
								  </div>
					
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
							<td>
							<input name="jml" type="hidden" value="'.$limit.'">
							<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
							<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
							</td>
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

						?>

					</p>
	
	
	              </div>
	            </div>
	          </div>
	                    
	
	
	          <div class="tab-pane" id="tab-5">
	            <div class="row">
	              <div class="col-lg-12 details order-2 order-lg-1">
	                <h3>Galeri Foto</h3>
	                <p>
		
						<?php
						echo '<p>
						<a href="dok_seni_foto.php" class="btn btn-danger">Kirim Foto/Image/Gambar</a>
						</p>
						
						<hr>';
	

						//query
						$limit = 100;
						$warnaheader = "orange";
						$warnatext = "brown";
						$p = new Pager();
						$start = $p->findStart($limit);
					
						$sqlcount = "SELECT * FROM cp_foto_seniman ".
										"WHERE seniman_kd = '$sesiku1' ".
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
							<td width="50"><strong><font color="'.$warnatext.'">POSTDATE</font></strong></td>
							<td width="50"><strong><font color="'.$warnatext.'">FOTO</font></strong></td>
							<td><strong><font color="'.$warnatext.'">NAMA</font></strong></td>
							<td><strong><font color="'.$warnatext.'">KETERANGAN</font></strong></td>
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
								$i_nama = balikin($data['nama']);
								$i_ket = balikin($data['ket']);
								$i_postdate = $data['postdate'];
								$i_filex = balikin($data['filex']);
								
								$nil_foto = "$sumber/filebox/foto/$i_kd/$i_filex";
								
					


					
								echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
								echo '<td>'.$i_postdate.'</td>
								<td>
								<img src="'.$nil_foto.'" height="100">
								</td>
								<td>'.$i_nama.'</td>
								<td>'.$i_ket.'</td>
					    		</tr>';
								}
							while ($data = mysqli_fetch_assoc($result));
					
							echo '</tbody>
								  </table>
								  </div>
					
							<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
							<td>
							<input name="jml" type="hidden" value="'.$limit.'">
							<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
							<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
							</td>
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

						?>

					</p>
	
	
	              </div>
	            </div>
	          </div>
	
	          
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
