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
$tpl = LoadTpl("template/cp_penyewa.html");



nocache;

//nilai
$filenya = "penyewa.php";
$filenya_ke = $sumber;
$judul = "Penyewa Tempat/Lokasi";
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
      <h2>PENYEWA</h2>
      <p>Tempat/Lokasi</p>
    </div>



	<?php
	//nilai session
	$sesiku = cegah($_SESSION['sesiku']);
	$sesinoid = cegah($_SESSION['sesinoid']);
	$sesinama = cegah($_SESSION['sesinama']);
	
	//jika tidak login
	if (empty($sesiku))
		{
		?>


		    <div class="row" data-aos="fade-up" data-aos-delay="100">
		      <div class="col-lg-3">
		        <ul class="nav nav-tabs flex-column">
		          <li class="nav-item">
		            <a class="nav-link active show" data-toggle="tab" href="#tab-1">Registrasi/Daftar</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" data-toggle="tab" href="#tab-3">Login/Masuk</a>
		          </li>
		        </ul>
		      </div>
		      <div class="col-lg-9 mt-4 mt-lg-0">
		        <div class="tab-content">
		          <div class="tab-pane active show" id="tab-1">
		            <div class="row">
		              <div class="col-lg-12 details order-2 order-lg-1">
		                <h3>Registrasi/Daftar</h3>
		                <p>
		
		
				        	
							<div id="ihasilnya">
					            <form id="formx2" role="form" class="php-email-form">
					              <div class="form-row">
					                <div class="col-md-6 form-group">
					                  <input type="text" name="e_nama" class="form-control btn-warning" id="e_nama" placeholder="Nama" data-rule="minlen:4" data-msg="Tuliskan nama minimal 4 huruf" required>
					                  <div class="validate"></div>
					                </div>
					                <div class="col-md-6 form-group">
					                  <input type="text" class="form-control btn-warning" name="e_alamat" id="e_alamat" placeholder="Alamat" data-rule="minlen:4" data-msg="Tuliskan nama minimal 4 huruf" required>
					                  <div class="validate"></div>
					                </div>
					              </div>
					              
					              
					              <div class="form-row">
					                <div class="col-md-6 form-group">
					                  <select name="e_kelamin" id="e_kelamin" class="form-control btn-warning" placeholder="Jenis Kelamin" data-msg="Pilih Jenis Kelamin" required>
					                  	<option value="" selected>Jenis Kelamin</option>
					                  	<option value="L">Laki - Laki</option>
					                  	<option value="P">Perempuan</option>
					                  </select>
					                  
					                  <div class="validate"></div>
					                </div>
					                <div class="col-md-6 form-group">
					                  <input type="text" class="form-control btn-warning" name="e_ktp" id="e_ktp" placeholder="Nomor KTP" data-rule="minlen:4" data-msg="Tuliskan nama minimal 4 angka" required>
					                  <div class="validate"></div>
					                </div>
					              </div>
					              
					              
				
					              <div class="form-group">
					                <input type="text" class="form-control btn-warning" name="e_telp" id="e_telp" data-rule="minlen:4" data-msg="Tulis minimal 4 angka" placeholder="Telepon" required>
					                <div class="validate"></div>
					              </div>
					              <div class="form-group">
					                <input type="text" class="form-control btn-warning" name="e_email" id="e_email" data-rule="email" data-msg="Alamat E-Mail Harus Benar" placeholder="E-Mail" required>
					                <div class="validate"></div>
					              </div>
					              <div class="text-center"><button type="submit" class="btn-block btn-danger" id="btnKRM">KIRIM >></button></div>
					            </form>
								
							
							</div>
		
				
		                	
		                </p>
		              </div>
		
		            </div>
		          </div>
		
		
		          <div class="tab-pane" id="tab-3">
		            <div class="row">
		              <div class="col-lg-12 details order-2 order-lg-1">
		                <h3>Login/Masuk</h3>
		                <p>
							
							
							<div id="ihasil2"></div>
								
								<form name="formx22" id="formx22">
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
								<input type="submit" name="btnKRM2" id="btnKRM2" value="KIRIM >" class="btn btn-danger">
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
		        <ul class="nav nav-tabs flex-column">
		          <li class="nav-item">
		            <a class="nav-link active show" data-toggle="tab" href="#tab-1">Profil Diri</a>
		          </li>
		          
		          <li class="nav-item">
		            <a class="nav-link" data-toggle="tab" href="#tab-4">Ganti Password</a>
		          </li>
		          
		          <li class="nav-item">
		            <a class="nav-link" data-toggle="tab" href="#tab-2">Pesan Tempat/Lokasi</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" data-toggle="tab" href="#tab-3">History</a>
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
							$qyuk = mysqli_query($koneksi, "SELECT * FROM m_penyewa ".
																"WHERE kd = '$sesiku'");
							$ryuk = mysqli_fetch_assoc($qyuk);
							$yuk_nama = balikin($ryuk['nama']);
							$yuk_alamat = balikin($ryuk['alamat']);
							$yuk_kelamin = balikin($ryuk['kelamin']);
							$yuk_noid = balikin($ryuk['no_id']);
							$yuk_telp = balikin($ryuk['telp']);
							$yuk_email = balikin($ryuk['email']);
							
							
							?>		
					            <form id="formx2" role="form" class="php-email-form">
					              <div class="form-row">
					                <div class="col-md-6 form-group">
					                 Nama : 
					                 <br>
					                 <b><?php echo $yuk_nama;?></b>
					                 
					                </div>
					                <div class="col-md-6 form-group">
					                  Alamat :
					                  <br>
					                  <b><?php echo $yuk_alamat;?></b>
					                </div>
					              </div>
					              
					              
					              <div class="form-row">
					                <div class="col-md-6 form-group">
					                  Jenis Kelamin :
					                  <br>
					                  <b><?php echo $yuk_kelamin;?></b>

					                </div>
					                <div class="col-md-6 form-group">
					                  Nomor KTP :
					                  <br>
					                  <b><?php echo $yuk_noid;?></b>
					                </div>
					              </div>
					              
					              
				
					              <div class="form-group">
					                Nomor Telepon :
					                <br>
					                <b><?php echo $yuk_telp;?></b>
					              </div>
					              <div class="form-group">
					                E-Mail :
					                <br>
					                <b><?php echo $yuk_email;?></b>
					              </div>
					              
					              
					              <hr>
					              <a href="logout.php" class="btn btn-danger">LOGOUT/KELUAR >></a>
					              <hr>
					            </form>
								
		
		                	
		                </p>
		              </div>
		
		            </div>
		          </div>
		
		
		          <div class="tab-pane" id="tab-4">
		            <div class="row">
		              <div class="col-lg-12 details order-2 order-lg-1">
		                <h3>Ganti Password</h3>
		                <p>
							
											
							<div id="ihasil4"></div>
								<form name="formx24" id="formx24">
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
								<input name="btnKRM4" id="btnKRM4" type="submit" value="SIMPAN >>" class="btn btn-danger">
								</p>
								
								</form>
			    	    </div>
			


														
							
						</p>
		
		
		              </div>
		            </div>
		          
		          
		          
		
		          <div class="tab-pane" id="tab-2">
		            <div class="row">
		              <div class="col-lg-12 details order-2 order-lg-1">
		                <h3>Pesan Tempat/Lokasi</h3>
		                <p>
							
							
												
						<div class="table-responsive">          
						<table class="table" border="1">
						<tbody>

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
							$ku_kapasitas = balikin($rku['kapasitas']);
							$ku_filex = balikin($rku['filex']);
							
							echo '<tr>
								<td width="50">
								<img src="filebox/tempat/'.$ku_kd.'/'.$ku_filex.'" class="thumbnail" alt="">
								</td>
								
								<td>
								<h3>'.$ku_nama.'</h3>
								
								<p>
								Kapasitas : <b>'.$ku_kapasitas.'</b>
								</p>
								
								<p>
								'.$ku_ket.'
								</p>
								
								<p>
								<a href="booking.php?tmpkd='.$ku_kd.'" class="btn btn-danger">PESAN >></a>
								</p>

								<hr>
								
								</td>
							</tr>';
							}
						while ($rku = mysqli_fetch_assoc($qku));
						 
						 ?>
									
						</tbody>
						</table>
						</div>

					
									
							
						</p>
		
		
		              </div>
		            </div>
		          </div>
		          
		
		          <div class="tab-pane" id="tab-3">
		            <div class="row">
		              <div class="col-lg-12 details order-2 order-lg-1">
		                <h3>History</h3>
		                <p>

						<div class="table-responsive">          
						<table class="table" border="1">
						<tbody>
															
						<?php
						//list tempat
						$qku = mysqli_query($koneksi, "SELECT * FROM sewa_tempat ".
														"WHERE penyewa_kd = '$sesiku' ".
														"ORDER BY postdate DESC");
						$rku = mysqli_fetch_assoc($qku);
						
						do
							{
							$ku_kd = balikin($rku['kd']);
							$ku_kode = balikin($rku['kodebooking']);
							$ku_tmpkd = balikin($rku['tempat_kd']);
							$ku_tmpnama = balikin($rku['tempat_nama']);
							$ku_tglmulai = balikin($rku['tgl_mulai']);
							$ku_tglselesai = balikin($rku['tgl_selesai']);
							$ku_tujuan = balikin($rku['tujuan']);
							$ku_jml_peserta = balikin($rku['jml_peserta']);
							$ku_postdate = balikin($rku['postdate']);



							
							echo '<tr>
								<td>
								<h3>'.$ku_tmpnama.'</h3>
								
								<p>
								[Postdate : <b>'.$ku_postdate.'</b>]. [Kode Booking : '.$ku_kode.']
								</p>
								
								<p>
								'.$ku_tglmulai.' sampai '.$ku_tglselesai.' 
								</p>
								
								<p>
								Tujuan : 
								<br>
								'.$ku_tujuan.' 
								</p>
								
								
								
								<p>
								Jumlah Peserta : 
								<br>
								'.$ku_jml_peserta.' 
								</p>
								
								
								<hr>
								
								</td>
							</tr>';
							}
						while ($rku = mysqli_fetch_assoc($qku));
						 
						 ?>
									
						</tbody>
						</table>
						</div>

							
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
