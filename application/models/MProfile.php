<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MProfile extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getAccount($email) {
		$sql = ("
			SELECT fs_email, fs_nama_awal, fs_nama_akhir,
				fs_nomor_ktp, fs_nomor_hp1, fs_nomor_hp2,
				fs_nomor_wa, fs_pin_bb
			FROM tm_profil
			WHERE fs_email = '".trim($email)."'
			AND fs_aktif = '1'
		");

		return $this->db->query($sql)->row();
	}

	public function getPoint($email) {
		$sql = ("
			SELECT
			FROM tx_point
		");

		return $this->db->query($sql)->row();
	}
	
}