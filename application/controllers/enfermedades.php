<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Enfermedades extends CI_Controller {

	public function __construct() {
		parent:: __construct();

		$this->load->library("grocery_CRUD");
	}

	public function index()
	{
		$crud=new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('enfermedades');
		$crud->set_subject('Listado de enfermedades');
		
		$crud->fields('enfermedad');
		$crud->required_fields('enfermedad');
		$crud->unique_fields(array('enfermedad'));
		
		$crud->columns('id','enfermedad');

	
		$crud->display_as('enfermedad','Tipos de enfermedades');

		$tabla=$crud->render();

		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;

		$this->load->view('enfermedades',$vector);




	}
}
