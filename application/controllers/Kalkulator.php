<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kalkulator extends CI_Controller {

	public function index() {
		$data = '';
		$this->template->content->view('vkalkulator', $data);
		$this->template->publish();
	}

	public function baru() {

	}

	public function bekas() {

	}

}