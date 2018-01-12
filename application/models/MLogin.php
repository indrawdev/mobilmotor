<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MLogin extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function validUser($email, $pass) {
		$sql = ("
			SELECT fs_email, fs_password, fs_tipe
			FROM tm_user
			WHERE fs_email = '".trim($email)."' 
			AND fs_password = '".trim($pass)."'
			AND fs_aktif = '1'
		");

		return $this->db->query($sql)->row();
	}
	
}