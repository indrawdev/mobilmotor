<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MCari extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getConfig($config) {
		$sql = ("
			SELECT * FROM config_email
			WHERE category = '".trim($config)."' 
			AND status = '1'
		");

		return $this->db->query($sql)->row();
	}

	public function getUser($email) {
		$sql = ("
			SELECT fs_email FROM tm_user 
			WHERE fs_email = '".trim($email)."'
		");

		return $this->db->query($sql)->row();
	}

	public function getStatusUser($email, $aktif) {
		$sql = ("
			SELECT fs_email FROM tm_user 
			WHERE fs_email = '".trim($email)."'
			AND fs_aktif = '".trim($aktif)."'
		");

		return $this->db->query($sql)->row();
	}
	
}