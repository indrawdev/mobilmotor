<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index() {
		$this->load->view('vregister');
	}

	public function dealer() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
		
		} else {
			$email = $this->input->post('fs_email');
			$password = $this->input->post('fs_password');

			if (!empty($empty) && !empty($password)) {

			} else {

			}
		}
	}

	public function individu() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
		
		} else {
			$email = $this->input->post('fs_email');
			$password = $this->input->post('fs_password');
			
			if (!empty($empty) && !empty($password)) {

			} else {

			}
		}
	}

}
