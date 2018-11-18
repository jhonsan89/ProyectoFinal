<?php

class Usuarios_model extends CI_Model
{
	function __construct()
	{
		$this->load->helper('security');
		$this->tabla="tblusuarios";
	}

	function listar ()
	{
		$query=$this->db->get($this->tabla);
		return $query->result_array();
	}
}

?>