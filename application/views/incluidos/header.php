<?php

$ruta=base_url()."assets/images/usuarios/".$foto;

?>
<header class="menu">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" id="desplegable" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo site_url('home')?>"><img src="<?php echo base_url()?>assets/images/logo.png" alt="" class="img-responsive"></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<?php echo site_url('home')?>">Home</a></li>
                    <li><a href="<?php echo site_url('usuarios')?>">Usuarios</a></li>
                    <li><a href="<?php echo site_url('pacientes')?>">Pacientes</a></li>
                    <li><a href="<?php echo site_url('medicos')?>">Medicos</a></li>
                    <li><a href="<?php echo site_url('medicamento')?>">Medicamentos</a></li>
                    <li><a href="<?php echo site_url('reservas')?>">Reservas</a></li>
                    <li><a href="<?php echo site_url('orden-medicamentos')?>">Orden de medicamentos</a></li>
                </ul>
                <div class="col-sm-4 pull-right usu">
                    <h5><span>Bienvenido:</span> <?php echo $usuario;?></h5>
                    <img src="<?php echo $ruta;?>" alt="<?php echo $usuario;?>" class="img-responsive img-circle">
                    <i class="fas fa-caret-down"></i>
                    <ul class="drop-menu">
                        <a href="<?php echo site_url('salir')?>"><li><i class="fas fa-sign-out-alt"></i> Salir</li> </a>
                    </ul>
                </div>
            </div>
            <!--/.nav-collapse -->
        </div>
        <!--/.container-fluid -->
    </nav>
</header>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script>
$("#desplegable").click(function() {
    $('.navbar-collapse').css('display', 'block');
});
</script>