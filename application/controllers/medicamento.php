<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class medicamento extends CI_Controller {

	public function __construct() {
		parent:: __construct();

		$this->load->library("grocery_CRUD");

		if (!$this->session->userdata("idusuario")) {
			redirect('login');
		}
	}

	public function index()	{
		
		$vector["usuario"]=$this->session->userdata("nombreusuario");

		$crud=new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('tblmedicamento');
		$crud->set_subject('medicamento');

		$crud->set_relation('idmedicamento','tblordenmedica','idmedicamento');

		

		//$crud->set_field_upload("foto","assets/images/medicos/");			

		$crud->fields('medicamento','fechaingreso','fechamodificacion');
		$crud->required_fields('medicamento','fechaingreso');
		$crud->unique_fields(array('idmedicamento'));
		
		$crud->columns('medicamento','fechaingreso','fechamodificacion');

		$tabla=$crud->render();


		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;
		$vector["foto"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("idusuario");
		$vector["idperfil"]=$this->session->userdata("idperfil");
		$vector["correousuario"]=$this->session->userdata("correousuario");


		$this->load->view('medicamento',$vector);

	}
}
