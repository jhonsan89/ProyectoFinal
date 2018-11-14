<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tiposangre extends CI_Controller {

public function __construct(){
	parent:: __construct();

	$this->load->library("grocery_CRUD");
}
	
	public function index()
	{

		$crud=new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('tipo_sangre');
		$crud->set_subject('Listado de Tipos de Sangre');

		$crud->fields('tipo_sangre');
		$crud->required_fields('tipo_sangre');
		$crud->unique_fields(array('tipo_sangre'));
		
		$crud->columns('id','tipo_sangre');

	
		$crud->display_as('tipo_sangre','Tipos de Sangre');

		$tabla=$crud->render();

		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;

		$this->load->view('tiposangre',$vector);
	}
}