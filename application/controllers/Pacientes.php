<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pacientes extends CI_Controller {

	public function __construct() {
		parent:: __construct();

		$this->load->library("grocery_CRUD");
	}

	public function index()
	{
		// $crud=new grocery_CRUD();

		// $crud->set_theme('flexigrid');
		// $crud->set_table('hv_paciente');
		// $crud->set_subject('Listado de Pacientes');
		// $crud->set_relation('tipo_identificacion','tipo_id','tipo_identificacion');
		// $crud->set_relation('tipo_sangre','tipo_sangre','tipo_sangre');
		// $crud->set_relation('enfermedad','enfermedades','enfermedad');
		// $crud->set_relation('enfermedad2','enfermedades','enfermedad');
		// $crud->set_relation('enfermedad3','enfermedades','enfermedad');
		// $crud->set_relation('nombre_eps','eps','nombre_eps');

		// $crud->fields('identificacion','tipo_identificacion','nombre_eps','nombre','apellidos','telefono','tipo_sangre','fecha_nacimiento','enfermedad','enfermedad2','enfermedad3','observaciones');
		// $crud->required_fields('identificacion','tipo_identificacion','nombre_eps','nombre','apellidos','telefono','tipo_sangre','fecha_nacimiento');
		// $crud->unique_fields(array('identificacion'));
		
		// $crud->columns('identificacion','tipo_identificacion','nombre_eps','nombre','apellidos','telefono','tipo_sangre','fecha_nacimiento','enfermedad','enfermedad2','enfermedad3','observaciones');

		// $crud->display_as('enfermedad','Enfermedades Previas 1');
		// $crud->display_as('enfermedad2','Enfermedades Previas 2');
		// $crud->display_as('enfermedad3','Enfermedades Previas 3');
		// $crud->display_as('tipo_sangre','Tipo de Sangre');
		// $crud->display_as('nombre_eps','Eps Asociada');
		// $crud->display_as('fecha_nacimiento','Fecha de Nacimiento');		
		// $crud->display_as('tipo_identificacion','Tipo de Identiuficación');





		// $tabla=$crud->render();

		// $vector['tabla']=$tabla->output;
		// $vector['css_files']=$tabla->css_files;
		// $vector['js_files']=$tabla->js_files;

		// $this->load->view('pacientes',$vector);
		$this->load->view('pacientes');
	}
}
