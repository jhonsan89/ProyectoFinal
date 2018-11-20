<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Medicamento extends CI_Controller {

	public function __construct() {
		parent:: __construct();

		$this->load->library("grocery_CRUD");
	}

	public function index()
	{
		$vector["usuario"]=$this->session->userdata("nombreusuario");

		$crud=new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('tblmedicamento');
		$crud->set_subject('Medicamentos');
		
		$crud->fields('medicamento','fechaingreso','fechamodificacion');
		$crud->required_fields('medicamento','fechaingreso');
		$crud->unique_fields(array('medicamento'));
		
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
