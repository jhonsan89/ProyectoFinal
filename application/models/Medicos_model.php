<?php

class Medicos_model extends CI_Model
{
	function __construct()
	{
		$this->load->helper('security');
		$this->tabla="tblmedicos";
	}

	function listar ()
	{
		$query=$this->db->get($this->tabla);
		return $query->result_array();
	}
}
?>
