<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct() {
		parent:: __construct();
		$this->load->Model('login_model');
	}

	public function index()
	{
		$this->load->view('login');
	}

	public function ingreso() {

		$resultado=$this->login_model->validar_usuario();

		if (count($resultado)>0) {
			$data_session=array(
				'idusuario'=>$resultado[0]['idusuario'],
				'nombreusuario'=>$resultado[0]['nombre'],
				'idperfil'=>$resultado[0]['perfil'],
				'correousuario'=>$resultado[0]['correo'],
				'fotousuario'=>$resultado[0]['foto']
			);
			$this->session->set_userdata($data_session);
			redirect('home');
		} else {
			redirect('login');
		}
	}
}
?>
