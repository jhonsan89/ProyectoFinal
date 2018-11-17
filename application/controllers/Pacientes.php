<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pacientes extends CI_Controller {

	public function __construct() {
		parent:: __construct();

		$this->load->library("grocery_CRUD");
	}

	public function index()
	{
		$crud=new grocery_CRUD();

		$crud->set_theme('flexigrid');
		$crud->set_table('tblpacientes');
		$crud->set_subject('Listado de Pacientes');
		$crud->set_relation('ciudad','tblciudad','ciudad');
		$crud->set_relation('pais','tblpais','pais');
		$crud->set_relation('departamento','tbldepartamento','departamento');

		$crud->set_relation('enfermedad','tblenfermedades','enfermedad');
		$crud->set_relation('enfermedad2','tblenfermedades','enfermedad');
		$crud->set_relation('enfermedad3','tblenfermedades','enfermedad');
		$crud->set_relation('eps','tbleps','eps');
		$crud->set_relation('tiposangre','tbltiposangre','nombre');
		$crud->set_relation('tipoidentificacion','tbltipoidentificacion','tipoidentificacion');
		$crud->set_relation('medicamento','tblmedicamento','medicamento');
		$crud->set_relation('medicamento2','tblmedicamento','medicamento');
		$crud->set_relation('medicamento3','tblmedicamento','medicamento');

		$crud->set_field_upload("foto","assets/images/pacientes/");			

		$crud->fields('foto','identificacion','tipoidentificacion','eps','nombre','apellidos','telefono','direccion','tiposangre','fechanacimiento','pais','departamento','ciudad','enfermedad','enfermedad2','enfermedad3','medicamento','medicamento2','medicamento3','notasmedicas','observaciones');
		$crud->required_fields('identificacion','tipo_identificacion','nombre_eps','nombre','apellidos','telefono','tipo_sangre','fecha_nacimiento');
		$crud->unique_fields(array('identificacion'));
		
		$crud->columns('foto','identificacion','tipoidentificacion','eps','nombre','apellidos','telefono','direccion','tiposangre','fechanacimiento','pais','departamento','ciudad','enfermedad','enfermedad2','enfermedad3','medicamento','medicamento2','medicamento3','notasmedicas','observaciones');

		$crud->display_as('enfermedad','Enfermedades Previas 1');
		$crud->display_as('enfermedad2','Enfermedades Previas 2');
		$crud->display_as('enfermedad3','Enfermedades Previas 3');
		$crud->display_as('medicamento','Medicamentos Recetados');
		$crud->display_as('medicamento2','Medicamentos Recetados');
		$crud->display_as('medicamento3','Medicamentos Recetados');
		$crud->display_as('tipo_sangre','Tipo de Sangre');
		$crud->display_as('eps','Eps Asociada');
		$crud->display_as('fecha_nacimiento','Fecha de Nacimiento');		
		$crud->display_as('tipoidentificacion','Tipo de Identiuficación');
		$crud->display_as('notasmedicas','Notas Medicas');






		$tabla=$crud->render();

		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;

		$this->load->view('pacientes',$vector);
	}
}
