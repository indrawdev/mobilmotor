<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index() {
		$data['csrf_name'] = $this->security->get_csrf_token_name();
		$data['csrf_hash'] = $this->security->get_csrf_hash();
		$this->template->content->view('vlogin', $data);
		$this->template->publish();
	}

	public function islogin() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
			$data['response'] = 'failed';
			$data['message'] = validation_errors();
			echo json_encode($data);
		} else {
			// valid token
			$token = $this->input->post('token');
			if ($token == $this->security->get_csrf_hash()) {
				$email = $this->input->post('fs_email');
				$password = $this->input->post('fs_password');

				// ENCYRPT MD5
				$xpass = md5($password.$email);

				$this->load->model('MLogin');
				$check = $this->MLogin->validUser($email, $xpass);

				if (!empty($check)) {
					$sess = array(
						'login' => TRUE,
						'user' => '',
						'level' => ''
					);

					$this->session->set_userdata($sess);

				} else {
					$data['response'] = 'failed';
					$data['message'] = '';
					echo json_encode($data);
				}
			} else {
				$data['response'] = 'failed';
				$data['message'] = '';
				echo json_encode($data);
			}
		}
	}

}
