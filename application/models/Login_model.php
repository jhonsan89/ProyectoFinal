<?php

class Login_model extends CI_Model
{
	function __construct()
	{
		$this->load->helper('security');
	}

	function validar_usuario ()
	{
		$correo=$this->input->post('correo');
		$clave=$this->input->post('clave');

		$correo=$this->security->xss_clean($correo);
		$clave=$this->security->xss_clean($clave);

		$vector=array('correo'=>$correo,"clave"=>sha1($clave));
		$query=$this->db->get_where('tblusuarios',$vector);
		return $query->result_array();
	}
}

?>