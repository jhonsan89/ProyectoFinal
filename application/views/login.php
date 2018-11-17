<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Aplicativo Sistema de Pacientes | Login</title>
    <?php include("incluidos/css.php");?>
</head>

<body class="bg_login">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 video">
                <video autoplay muted loop id="hvideo">
                    <source src="<?php echo base_url()?>assets/media/citavideo.mp4" type="video/mp4">
                </video>


                <div class="col-md-12 loginform">
                <div class="col-md-offset-3 col-md-6">
                    <form action="">
                        <div class=" ol-md-12 imgcontainer">
                            <img class="img-responsive" src="<?php echo base_url()?>assets/images/logo.png" alt="">
                        </div>
                            <div class="col-md-12 contlogin">
                                <label for="uname"><b>Usuario</b></label>
                                <input type="text" placeholder="Ingrese Usuario" name="usuario" required>
                                <label for="psw"><b>Contraseña</b></label>
                                <input type="password" placeholder="Ingrese Contrasena" name="psw" required>
                                <button type="submit">Entrar</button>
                                <label>
                                    <input type="checkbox" checked="checked" name="remember"> <b>Recordarme</b>
                                </label>
                            </div>
                            <div class="col-md-12">
                                <span class="psw">Olvidaste <a href="#">la contraseña?</a></span>
                            </div>
                    </form>
                </div>
            </div>
            </div>
            <div class="col-sm-offset-4 col-sm-4 text-center corazon ">
                <img src="<?php echo base_url()?>assets/images/corazon-login.png" alt="" class="img-responsive">
                <h1>Separa tu cita</h1>
            </div>
                       
        </div>
    </div>
     <?php include("incluidos/footer.php");?>
</body>

</html>