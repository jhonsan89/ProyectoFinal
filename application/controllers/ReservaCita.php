<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ReservaCita extends CI_Controller {

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
		$crud->set_table('tblreservacita');
		$crud->set_subject('Recerva de Citas');
		
		$crud->set_relation('nombre','tblpacientes','{nombre} - {apellidos}');
		$crud->set_relation('identificacion','tblpacientes','identificacion');
		$crud->set_relation('tipoidentificacion','tbltipoidentificacion','tipoidentificacion');		
		$crud->set_relation('nombres','tblmedicos','nombres');		
		$crud->set_relation('tipoatencion','tblatencionmedica','tipoatencion');

		$crud->fields('nombre','tipoidentificacion','identificacion','nombres','tipoatencion','fechareserva');
		$crud->required_fields('nombre','tipoidentificacion','identificacion','nombres','tipoatencion','fechareserva');
		$crud->unique_fields(array('fechareserva','nombre'));
		
		$crud->columns('tipoidentificacion','identificacion','nombre','nombres','tipoatencion','fechareserva');

		$crud->display_as('tipoidentificacion','Tipo de Identificacion');
		$crud->display_as('nombre','Nombre del Paciente');
		$crud->display_as('nombres','Medico Tratante');
		$crud->display_as('tipoatencion','Atencion Medica');
		$crud->display_as('fechareserva','Fecha y Hora de la Cita');
		

		$tabla=$crud->render();
		

		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;
		$vector["foto"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("idusuario");
		$vector["idperfil"]=$this->session->userdata("idperfil");
		$vector["correousuario"]=$this->session->userdata("correousuario");


		$this->load->view('reservacita',$vector);
	}
}
