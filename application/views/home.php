<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Aplicativo Sistema de Pacientes</title>
  <?php include("incluidos/css.php");?>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<?php include("incluidos/header.php");?>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12 banner">
			<img src="<?php echo base_url()?>assets/images/home.png" alt="" class="img-responsive">
			<h1 class="animated slideInRight delay-2s duration">Sistema de Reservas</h1>
		</div>
		<div class="col-sm-12 citas">
			<div class="container">
				<div class="col-md-4 integrantes box1 animated zoomInUp delay-1s duration">
					<h2>Citas</h2>
					<img class="img-responsive" src="<?php echo base_url()?>assets/images/info1.png" alt="">
					<br>
					<p>Cuida de la salud de tu familia, separa tu cita con nosotros.</p>				
				</div>
				<div class="col-md-4 integrantes box1 animated zoomInUp delay-2s duration">
					<h2>Médicos</h2>
					<img class="img-responsive" src="<?php echo base_url()?>assets/images/info2.png" alt="">
					<br>
					<p>Consulta con los mejores medicos y especialistas del país.</p>				
				</div>
				<div class="col-md-4 integrantes box1 animated zoomInUp delay-3s duration">
					<h2>Medicamentos</h2>
					<img class="img-responsive" src="<?php echo base_url()?>assets/images/info3.png" alt="">
					<br>
					<p>Obtén tus medicamentos a bajo costo de manera oportuna, sin hacer filas tediosas.</p>				
				</div>
			</div>
		</div>
	</div>
	
</div>
<?php include("incluidos/footer.php");?>
</body>
</html>