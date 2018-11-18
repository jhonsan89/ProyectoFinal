<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct() {
		parent:: __construct();
		if (!$this->session->userdata("idusuario")) {
			redirect('login');
		}
	}

	public function index()
	{
		$vector["usuario"]=$this->session->userdata("nombreusuario");
		$vector["foto"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("idusuario");
		$vector["idperfil"]=$this->session->userdata("idperfil");
		$vector["correousuario"]=$this->session->userdata("correousuario");

		$this->load->view('home',$vector);
	}
}
