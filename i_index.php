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

require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
	




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika artikel : beri komentar
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'artikelkomentar'))
	{
	//ambil nilai
	$nil1 = cegah($_GET['e_nil1']);
	$nil2 = cegah($_GET['e_nil2']);
	$ongkoku = cegah($_GET['e_ongko']);
	$artkd = cegah($_GET['artkd']);
	$namaku = cegah($_GET['e_nama']);
	$emailku = cegah($_GET['e_email']);
	$isiku = cegah($_GET['e_isi']);
	$xyz = "$artkd$namaku$emailku$isiku";

	
	
	//jika admin, gak boleh
	if (($namaku == "admin") OR ($namaku == "administrator"))
		{
		echo '<p>
		<font color="red">
		<strong>Silahkan Dicek Lagi...!!</strong>
		</font>
		</p>';			
		}
		
	else
		{
		$ongkokux = $nil1 + $nil2;
		
		//jika betul
		if ($ongkoku == $ongkokux)
			{
			//insert
			mysqli_query($koneksi, "INSERT INTO cp_artikel_komentar(kd, kd_artikel, nama, email, isi, postdate) VALUES ".
							"('$xyz', '$artkd', '$namaku', '$emailku', '$isiku', '$today')");
		
		
			?>
	
		
			<script language='javascript'>
			//membuat document jquery
			$(document).ready(function(){
	
				$("#iformnya").hide();
						
			});
			
			</script>
				
		
		
			<?php
			//update jumlah komentar
			$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel_komentar ".
									"WHERE kd_artikel = '$artkd' ".
									"AND aktif = 'true'");
			$rku = mysqli_fetch_assoc($qku);				
			$tku = mysqli_num_rows($qku);
			
			//update
			mysqli_query($koneksi, "UPDATE cp_artikel SET jml_komentar = '$tku' ".
							"WHERE kd = '$artkd'");
			
			
			
			
			
			
			echo '<p>
			<font color="green">
			<strong>Komentar Akan Muncul dalam Daftar Komentar, Setelah Melewati Verifikasi Admin. 
			<br>
			Terima Kasih....</strong>
			</font>
			</p>';
			}
			
		else
			{
			echo '<p>
			<font color="red">
			<strong>Silahkan Jawab Perhitungan Matematika dengan Benar...!!</strong>
			</font>
			</p>';
			}
		}
		
		
	exit();
	}











//jika bukutamu
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'bukutamu'))
	{
	//ambil nilai
	$namaku = cegah($_GET['e_nama']);
	$emailku = cegah($_GET['e_email']);
	$subjeku = cegah($_GET['e_subjek']);
	$alamatku = cegah($_GET['e_alamat']);
	$telpku = cegah($_GET['e_telp']);
	$isiku = cegah($_GET['e_isi']);
	$xyz = md5("$namaku$emailku$isiku");


	
	
	//jika admin, gak boleh
	if (($namaku == "admin") OR ($namaku == "administrator"))
		{
		echo '<p>
		<font color="red">
		<strong>Silahkan Dicek Lagi...!!</strong>
		</font>
		</p>';			
		}
		
	else
		{
		//insert
		mysqli_query($koneksi, "INSERT INTO cp_bukutamu(kd, nama, email, ".
						"alamat, telp, subjek, ".
						"isi, postdate) VALUES ".
						"('$xyz', '$namaku', '$emailku', ".
						"'$alamatku', '$telpku', '$subjeku', ".
						"'$isiku', '$today')");
	
	
	
		//bikin sesi
		$_SESSION['sesibukuya'] = $xyz;


		echo '<p>
		<font color="orange">
		<h1>Terima Kasih Telah Mengisi Buku Tamu....</h1>
		</font>
		</p>
		<hr>';
		}

		
	exit();
	}













//jika newsletter
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'newsletter'))
	{
	//ambil nilai
	$emailku = cegah($_GET['e_email']);
	$xyz = md5($emailku);


	
	//insert
	mysqli_query($koneksi, "INSERT INTO cp_newsletter(kd, email, postdate) VALUES ".
					"('$xyz', '$emailku', '$today')");



	echo '<p>
	<font color="white">
	<h3>Terima Kasih Telah Mengisi E-Mail....</h3>
	</font>
	</p>
	<hr>';


		
	exit();
	}
























//jika artikel suka
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'artikelsuka'))
	{
	//ambil nilai
	$artkd = cegah($_GET['artkd']);

	//update
	mysqli_query($koneksi, "UPDATE cp_artikel SET jml_suka = jml_suka + 1 ".
					"WHERE kd = '$artkd'");
		
	echo '<p>
	<font color="green">
	<strong>Saya Suka Artikel ini...</strong>
	</font>
	</p>';


		
	exit();
	}









//jika artikel gak suka
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'artikelgaksuka'))
	{
	//ambil nilai
	$artkd = cegah($_GET['artkd']);

		
	echo '<p>
	<font color="red">
	<strong>Saya Tidak Suka Artikel ini...</strong>
	</font>
	</p>';


		
	exit();
	}
















//jika agenda lihat
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'agendalihat'))
	{
	//ambil nilai
	$tglku = cegah($_GET['tglku']);
	$blnku = cegah($_GET['blnku']);
	$thnku = cegah($_GET['thnku']);


	//cek event
	$qku = mysqli_query($koneksi, "SELECT * FROM cp_agenda ".
							"WHERE round(DATE_FORMAT(tgl_mulai, '%d')) = '$tglku' ".
							"AND round(DATE_FORMAT(tgl_mulai, '%m')) = '$blnku' ".
							"AND round(DATE_FORMAT(tgl_mulai, '%Y')) = '$thnku'");
	$rku = mysqli_fetch_assoc($qku);
	$tku = mysqli_num_rows($qku);
	
	do
		{
		//nilai
		$ku_kd = balikin($rku['kd']);
		$ku_judul = balikin($rku['judul']);
		$ku_tgl_mulai = balikin($rku['tgl_mulai']);
		$ku_tgl_selesai = balikin($rku['tgl_selesai']);
		$ku_waktu = balikin($rku['waktu']);
		$ku_biaya = balikin($rku['biaya']);
		$ku_isi = balikin($rku['isi']);
		$ku_target = balikin($rku['target']);
		$ku_syarat = balikin($rku['syarat']);
		$ku_filex = balikin($rku['filex']);
			
			
			
		//jika edit / baru
		//nek null foto
		if (empty($ku_filex))
			{
			$nil_foto = "$sumber/template/img/bg-black.png";
			}
		else
			{
			$nil_foto = "$sumber/filebox/agenda/$ku_kd/$ku_filex";
			}
			
			
	
			
		
		
		
		echo "<p>
		<h3>$ku_judul</h3>

		<img src='$nil_foto' width='100%'>
		<br>
	
		Tanggal :
		<br>
		$ku_tgl_mulai sampai $ku_tgl_selesai
		<br>
		Pukul/Jam : $ku_waktu
		</p>
		
		<p>
		Biaya : 
		<br>
		<i>$ku_biaya</i>
		</p>
		
		<p>
		Target : 
		<br>
		<i>$ku_target</i>
		</p>
		
		<p>
		Syarat : 
		<br>
		<i>$ku_syarat</i>
		</p>
		<hr>";	
		}
	while ($rku = mysqli_fetch_assoc($qku));


	
	exit();
	}












//jika penyewa
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'penyewareg'))
	{
	//ambil nilai
	$e_nama = cegah($_GET['e_nama']);
	$e_alamat = cegah($_GET['e_alamat']);
	$e_kelamin = cegah($_GET['e_kelamin']);
	$e_ktp = cegah($_GET['e_ktp']);
	$e_telp = cegah($_GET['e_telp']);
	$e_email = cegah($_GET['e_email']);



	//cek
	$qcc = mysqli_query($koneksi, "SELECT * FROM m_penyewa ".
									"WHERE no_id = '$e_ktp'");
	$tcc = mysqli_num_rows($qcc);
	
	
	//jika ada
	if (!empty($tcc))
		{
		echo '<p>
		<font color="red">
		<h1>Maaf, Nomor KTP Sudah Pernah Digunakan...!!</h1>
		</font>
		</p>
		<hr>';
		}
	
	else
		{
		//bikin akun
		$xyz = md5($e_ktp);
		
		$nirandku = rand(11, 999);
		$e_usernamex = "$e_ktp$nirandku";
		$e_passwordx = $xyz;
		
		
		
		//insert
		mysqli_query($koneksi, "INSERT INTO m_penyewa(kd, nama, alamat, ".
						"kelamin, jenis_id, no_id, ".
						"telp, email, usernamex, passwordx, postdate) VALUES ".
						"('$xyz', '$e_nama', '$e_alamat', ".
						"'$e_kelamin', 'KTP', '$e_ktp', ".
						"'$e_telp', '$e_email', '$e_usernamex', '$e_passwordx', '$today')");
	
	
	
		echo '<p>
		<font color="orange">
		<h1>Registrasi/Daftar Berhasil. Silahkan Login/Masuk....</h1>
		</font>
		</p>
		
		<p>
		Username :
		<br>
		<b>'.$e_usernamex.'</b>
		</p>
		
		<p>
		Password :
		<br>
		<b>'.$e_ktp.'</b>
		</p>
		<hr>

		<p>	
		<i>	
		NB. Harap Catat. 
		</i>
		</p>
		<hr>';
		}
	

		
	exit();
	}










//jika login penyewa
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'penyewalogin'))
	{
	//ambil nilai
	$euser = cegah($_GET['iuser']);
	$epass = md5(cegah($_GET['ipass']));

	
	//empty
	if ((empty($euser)) OR (empty($epass)))
		{
		echo '<b>
		<font color="red">GAGAL. SILAHKAN ULANGI LAGI...!!</font>
		</b>';	
		} 
	else
		{
		//cek
		$qku = mysqli_query($koneksi, "SELECT * FROM m_penyewa ".
								"WHERE usernamex = '$euser' ".
								"AND passwordx = '$epass'");
		$rku = mysqli_fetch_assoc($qku);
		$tku = mysqli_num_rows($qku);
		
		//jika null
		if (empty($tku))
			{
			echo '<b>
			<font color="red">
			LOGIN GAGAL. <br>SILAHKAN ULANGI LAGI...
			</font>
			</b>';
			}
		else
			{
			//lanjut
			$ku_kd = nosql($rku['kd']);
			$ku_noid = balikin($rku['no_id']);
			$ku_nama = balikin($rku['nama']);
			
			//bikin sesi
			$_SESSION['sesiku'] = $ku_kd;
			$_SESSION['sesinoid'] = $ku_noid;
			$_SESSION['sesinama'] = $ku_nama;
			
			
			//re-direct
			$ke = "penyewa.php";
			xloc($ke);
			exit();
			}
								
								
		}	

	
	exit();
	}












//jika simpan pass
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'penyewapass'))
	{
	//ambil nilai
	$sesiku = cegah($_SESSION['sesiku']);
	$sesinoid = cegah($_SESSION['sesinoid']);
	$sesinama = cegah($_SESSION['sesinama']);
	
	$passlama = md5(cegah($_GET["passlama"]));
	$passbaru = md5(cegah($_GET["passbaru"]));
	$passbaru2 = md5(cegah($_GET["passbaru2"]));


	//cek
	//nek null
	if ((empty($passlama)) OR (empty($passbaru)) OR (empty($passbaru2)))
		{
		//pesan
		echo "<font color=red><b>Input Tidak Lengkap. Harap Diulangi...!!</b></font>";
		exit();
		}

	//nek pass baru gak sama
	else if ($passbaru != $passbaru2)
		{
		//pesan
		echo "<font color=red><b>Password Baru Tidak Sama. Harap Diulangi...!!</b></font>";
		exit();
		}
	else
		{
		//query
		$q = mysqli_query($koneksi, "SELECT * FROM m_penyewa ".
							"WHERE kd = '$sesiku' ".
							"AND passwordx = '$passlama'");
		$row = mysqli_fetch_assoc($q);
		$total = mysqli_num_rows($q);

		//cek
		if (!empty($total))
			{
			//perintah SQL
			mysqli_query($koneksi, "UPDATE m_penyewa SET passwordx = '$passbaru' ".
							"WHERE kd = '$sesiku'");

			//pesan
			echo "<font color=red><b>PASSWORD BERHASIL DIGANTI.</b></font>";
			exit();
			}
		else
			{
			//pesan
			echo "<font color=red><b>PASSWORD LAMA TIDAK COCOK. HARAP DIULANGI...!!!</b></font>";
			exit();
			}
		}
		
	
	
	exit();
	}













//jika logout
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'logout'))
	{
	//habisi
	session_unset();
	session_destroy();
	
	
	//re-direct
	xloc($sumber);
	exit();
	}

















//jika login seniman
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'senimanlogin'))
	{
	//ambil nilai
	$euser = cegah($_GET['iuser']);
	$epass = md5(cegah($_GET['ipass']));

	
	//empty
	if ((empty($euser)) OR (empty($epass)))
		{
		echo '<b>
		<font color="red">GAGAL. SILAHKAN ULANGI LAGI...!!</font>
		</b>';	
		} 
	else
		{
		//cek
		$qku = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
								"WHERE usernamex = '$euser' ".
								"AND passwordx = '$epass'");
		$rku = mysqli_fetch_assoc($qku);
		$tku = mysqli_num_rows($qku);
		
		//jika null
		if (empty($tku))
			{
			echo '<b>
			<font color="red">
			LOGIN GAGAL. <br>SILAHKAN ULANGI LAGI...
			</font>
			</b>';
			}
		else
			{
			//lanjut
			$ku_kd = nosql($rku['kd']);
			$ku_nama = balikin($rku['nama_sanggar']);
			
			//bikin sesi
			$_SESSION['sesiku1'] = $ku_kd;
			$_SESSION['sesinama1'] = $ku_nama;
			
			
			//re-direct
			$ke = "dok_seni.php";
			xloc($ke);
			exit();
			}
								
								
		}	

	
	exit();
	}












//jika simpan pass
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'senimanpass'))
	{
	//ambil nilai
	$sesiku1 = cegah($_SESSION['sesiku1']);
	$sesinama1 = cegah($_SESSION['sesinama1']);
	
	$passlama = md5(cegah($_GET["passlama"]));
	$passbaru = md5(cegah($_GET["passbaru"]));
	$passbaru2 = md5(cegah($_GET["passbaru2"]));


	//cek
	//nek null
	if ((empty($passlama)) OR (empty($passbaru)) OR (empty($passbaru2)))
		{
		//pesan
		echo "<font color=red><b>Input Tidak Lengkap. Harap Diulangi...!!</b></font>";
		exit();
		}

	//nek pass baru gak sama
	else if ($passbaru != $passbaru2)
		{
		//pesan
		echo "<font color=red><b>Password Baru Tidak Sama. Harap Diulangi...!!</b></font>";
		exit();
		}
	else
		{
		//query
		$q = mysqli_query($koneksi, "SELECT * FROM m_seniman ".
							"WHERE kd = '$sesiku1' ".
							"AND passwordx = '$passlama'");
		$row = mysqli_fetch_assoc($q);
		$total = mysqli_num_rows($q);

		//cek
		if (!empty($total))
			{
			//perintah SQL
			mysqli_query($koneksi, "UPDATE m_seniman SET passwordx = '$passbaru' ".
							"WHERE kd = '$sesiku1'");

			//pesan
			echo "<font color=red><b>PASSWORD BERHASIL DIGANTI.</b></font>";
			exit();
			}
		else
			{
			//pesan
			echo "<font color=red><b>PASSWORD LAMA TIDAK COCOK. HARAP DIULANGI...!!!</b></font>";
			exit();
			}
		}
		
	
	
	exit();
	}

















//jika booking
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'booking'))
	{
	//ambil nilai
	$sesiku = cegah($_SESSION['sesiku']);
	$sesinoid = cegah($_SESSION['sesinoid']);
	$sesinama = cegah($_SESSION['sesinama']);
	
	$c_tglmulai = cegah($_GET['c_tglmulai']);
	$c_tglselesai = cegah($_GET['c_tglselesai']);
	$c_tujuan = cegah($_GET['c_tujuan']);
	$c_jml_peserta = cegah($_GET['c_jml_peserta']);
	$c_tmpkd = cegah($_GET['tmpkd']);

							
							
	//query
	$qku = mysqli_query($koneksi, "SELECT * FROM m_tempat ".
									"WHERE kd = '$c_tmpkd'");
	$rku = mysqli_fetch_assoc($qku);
	$c_tmpnama = cegah($rku['nama']);
							
							
						
						
	//pecah tanggal
	$tgl2_pecah = balikin($c_tglmulai);
	$tgl2_pecahku = explode("-", $tgl2_pecah);
	$tgl2_tgl = trim($tgl2_pecahku[2]);
	$tgl2_bln = trim($tgl2_pecahku[1]);
	$tgl2_thn = trim($tgl2_pecahku[0]);
	$c_tglmulai = "$tgl2_thn:$tgl2_bln:$tgl2_tgl";
		
	



	//pecah tanggal
	$tgl2_pecah = balikin($c_tglselesai);
	$tgl2_pecahku = explode("-", $tgl2_pecah);
	$tgl2_tgl = trim($tgl2_pecahku[2]);
	$tgl2_bln = trim($tgl2_pecahku[1]);
	$tgl2_thn = trim($tgl2_pecahku[0]);
	$c_tglselesai = "$tgl2_thn:$tgl2_bln:$tgl2_tgl";
		
	
							





	//buat booking
	$bookkd = $x;
	
	//kasi random, trus jadikan huruf
	$niku = rand(1111,9999);
	

	$nil1 = substr($niku,0,1);
	$nil2 = substr($niku,1,1);
	$nil3 = substr($niku,2,1);
	$nil4 = substr($niku,3,1);

	$pecah1 = $arrrkoloma[$nil1];
	$pecah2 = $arrrkoloma[$nil2];
	$pecah3 = $arrrkoloma[$nil3];
	$pecah4 = $arrrkoloma[$nil4];

	
	$c_kode = "$tahun$bulan$tanggal$pecah1$pecah2$pecah3$pecah4";


	
	//insert
	mysqli_query($koneksi, "INSERT INTO sewa_tempat(kd, penyewa_kd, penyewa_nama, ".
					"kodebooking, booking_postdate, tempat_kd, tempat_nama, ".
					"tujuan, jml_peserta, tgl_mulai, tgl_selesai, postdate) VALUES ".
					"('$bookkd', '$sesiku', '$sesinama', ".
					"'$c_kode', '$today', '$c_tmpkd', '$c_tmpnama', ".
					"'$c_tujuan', '$c_jml_peserta', '$c_tglmulai', '$c_tglselesai', '$today')");



	echo '<p>
	Kode Booking : 
	<br>
	<h3>'.$c_kode.'</h3>
	</p>
	
	<p>
	<a href="booking_pdf.php?bookkd='.$bookkd.'&bookkode='.$c_kode.'" class="btn btn-danger">UNDUH PDF >></a>
	
	
	<a href="penyewa.php" class="btn btn-success">LIHAT STATUS SEWA >></a>
	</p>
	
	
	<i>
	<font color="orange">
	<h1>Pesan Sewa Tempat/Lokasi, dalam Proses Pengajuan. Informasi Selengkapnya, Silahkan datang ke Kantor TAMAN BUDAYA BIASAWAE. Terima Kasih.</h1>
	</font>
	</i>
	
	<hr>';
	

		
	exit();
	}









exit();
?>