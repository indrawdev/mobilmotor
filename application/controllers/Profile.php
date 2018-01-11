<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	public function __construct() {
		parent::__construct();
		if ($this->session->userdata('login') <> TRUE) {
			redirect('login');
		}
	}

	public function index() {
		$email = $this->encryption->decrypt($this->session->userdata('user'));

		$this->load->model('MProfil');
		$data['account'] = $this->MProfil->getAccount($email);
		
		$this->template->content->view('vprofile', $data);
		$this->template->publish();
	}

	public function logout() {
		$this->session->sess_destroy();
		redirect('login');
	}

}
