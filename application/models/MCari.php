<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MCari extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getUser($email, $aktif) {
		$sql = ("
			SELECT fs_email FROM tm_user 
			WHERE fs_email = '".trim($email)."' 
			AND fs_aktif = '".trim($aktif)."'
		");

		return $this->db->query($sql)->row();
	}
	
}