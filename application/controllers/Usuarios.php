<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {

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
		$crud->set_table('tblusuarios'); 
		$crud->set_subject('Usuarios del sistema');

		$crud->set_field_upload("foto","assets/images/usuarios/");

		$crud->fields("nombre","correo","clave","perfil","telefono","foto");

		$crud->required_fields("nombre","correo","clave","telefono","perfil");

		$crud->change_field_type("clave","password");

		$crud->unique_fields(array("correo"));

		$crud->callback_before_insert(array($this,"encriptar"));

		$crud->display_as("clave","Contraseña");

		$crud->columns("foto","nombre","telefono","correo");

		if ($crud->getState()=="edit") $crud->field_type("clave","hidden");

		$tabla=$crud->render();


		$vector['tabla']=$tabla->output;
		$vector['css_files']=$tabla->css_files;
		$vector['js_files']=$tabla->js_files;
		$vector["foto"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("idusuario");
		$vector["idperfil"]=$this->session->userdata("idperfil");
		$vector["correousuario"]=$this->session->userdata("correousuario");


		$this->load->view('usuarios',$vector);

	}

		function encriptar($post_array) {

			$post_array["clave"]=sha1($post_array["clave"]);
			return $post_array ;

	}
}
