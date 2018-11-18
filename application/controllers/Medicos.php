<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Medicos extends CI_Controller {

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
		$crud->set_table('tblmedicos');
		$crud->set_subject('medicos');

		$crud->set_relation('idmedico','tblmedicos','idmedico');

		

		//$crud->set_field_upload("foto","assets/images/medicos/");			

		$crud->fields('foto','tipoidentificacion','identificacion','nombres','apellidos','telefono');
		$crud->required_fields('foto','tipoidentificacion','identificacion','nombres');
		$crud->unique_fields(array('identificacion'));
		
		$crud->columns('foto','tipoidentificacion','identificacion','nombres','apellidos','telefono');

		$tabla=$crud->render();


		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;
		$vector["foto"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("idusuario");
		$vector["idperfil"]=$this->session->userdata("idperfil");
		$vector["correousuario"]=$this->session->userdata("correousuario");


		$this->load->view('medicos',$vector);

	}
}
