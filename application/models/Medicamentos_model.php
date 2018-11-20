<?php

class Medicamentos_model extends CI_Model
{
	function __construct()
	{
		$this->load->helper('security');
		$this->tabla="tblmedicamento";
	}

	function listar ()
	{
		$query=$this->db->get($this->tabla);
		return $query->result_array();
	}
}
?>
