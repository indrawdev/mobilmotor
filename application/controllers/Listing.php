<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Listing extends CI_Controller {

	public function __construct() {
		parent::__construct();
		if ($this->session->userdata('login') <> TRUE) {
			redirect('login');
		}
	}
	
	public function index() {
		$data = '';
		$this->template->content->view('vlisting', $data);
		$this->template->publish();
	}

}