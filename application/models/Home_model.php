<?php

class Home_model extends CI_Model
{
	function __construct()
	{
		$this->load->helper('security');
		$this->tabla="hv_paciente";
	}

	function listar ()
	{
		$query=$this->db->get($this->tabla);
		return $query->result_array();
	}
}

?>