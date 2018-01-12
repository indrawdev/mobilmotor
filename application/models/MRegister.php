<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MRegister extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getUser($email) {
		$sql = ("
			SELECT fs_email FROM tm_user 
			WHERE fs_email = '".trim($email)."' 
		");
		
		return $this->db->query($sql)->row();
	}
	
}