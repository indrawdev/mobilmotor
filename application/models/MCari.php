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
	

	public function getMerk() {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getModel($merk) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getTahun($model) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getTransmisi($tahun) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getKapasitas($transmisi) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getVarian($kapasitas) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getKelengkapan($varian) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getJarakTempuh() {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getLokasi() {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getArea($lokasi) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}

	public function getKota($area) {
		$sql = ("

		");

		return $this->db->query($sql)->result();
	}
}