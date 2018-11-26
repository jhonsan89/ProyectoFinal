<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class OrdenMedicamento extends CI_Controller {

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
		$crud->set_table('tblordenmedica');
		$crud->set_subject('Orden Medicamentos');
		
		$crud->set_relation('nombre','tblpacientes','{nombre} {apellidos}');
		$crud->set_relation('identificacion','tblpacientes','identificacion');
		$crud->set_relation('tipoidentificacion','tbltipoidentificacion','tipoidentificacion');	

		$crud->set_relation('nombres','tblmedicos','nombres');		

		$crud->fields('nombre','tipoidentificacion','identificacion','nombres','fecha','medicamento','cantidad','medicamento2','cantidad2','medicamento3','cantidad3','observaciones');

		$crud->required_fields('nombre','tipoidentificacion','identificacion','nombres','tipoatencion','fecha');
		$crud->unique_fields(array('fecha','nombre','identificacion'));
		
		$crud->columns('tipoidentificacion','identificacion','nombre','nombres','fecha','medicamento','cantidad','medicamento2','cantidad2','medicamento3','cantidad3','observaciones');

		$crud->display_as('tipoidentificacion','Tipo de Identificacion');
		$crud->display_as('nombre','Nombre del Paciente');
		$crud->display_as('nombres','Medico Tratante');
		$crud->display_as('tipoatencion','Atencion Medica');
		$crud->display_as('fecha','Fecha y Hora');
		$crud->display_as('medicamento','Medicamento recetado');
		$crud->display_as('medicamento2','Medicamento recetado');
		$crud->display_as('medicamento3','Medicamento recetado');

		

		$tabla=$crud->render();
		

		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;
		$vector["foto"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("idusuario");
		$vector["idperfil"]=$this->session->userdata("idperfil");
		$vector["correousuario"]=$this->session->userdata("correousuario");


		$this->load->view('ordenmedicamento',$vector);
	}
}
