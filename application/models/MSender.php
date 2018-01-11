<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MSender extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getConfig($config) {
		$sql = ("
			SELECT * FROM config_email
			WHERE status = '1'
		");

		return $this->db->query($sql)->row();
	}
}