<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index() {
		$data['csrf_name'] = $this->security->get_csrf_token_name();
		$data['csrf_hash'] = $this->security->get_csrf_hash();
		$this->template->content->view('vregister', $data);
		$this->template->publish();
	}

	public function dealer() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required|min_length[8]');
		$this->form_validation->set_rules('fs_passconf', 'Password Confirmation', 'required|matches[fs_password]');

		if ($this->form_validation->run() == FALSE) {
			$data['response'] = 'failed';
			$data['message'] = '';
			echo json_encode($data);
		} else {
			// valid token
			$token = $this->input->post('token');
			if ($token == $this->security->get_csrf_hash()) {

				$email = $this->input->post('fs_email');
				$password = $this->input->post('fs_password');
				$xpass = md5($password.$email);

				$new = array(
					'fs_email' => trim($email),
					'fs_password' => trim($xpass),
					'fd_tanggal_buat' => date('Y-m-d H:i:s'),
					'fs_ip_address' => $this->input->ip_address()
				);
				$this->db->insert($new);

				// sending verifikasi
				$sending = new Sender;
				$sending->verifikasi($email);

				$data['response'] = 'success';
				$data['message'] = '';
				echo json_encode($data);
			} else {
				$data['response'] = 'failed';
				$data['message'] = '';
				echo json_encode($data);
			}
		}
	}

	public function individu() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required|min_length[8]');
		$this->form_validation->set_rules('fs_passconf', 'Password Confirmation', 'required|matches[fs_password]');

		if ($this->form_validation->run() == FALSE) {
			$data['response'] = 'failed';
			$data['message'] = '';
			echo json_encode($data);
		} else {
			// valid token
			$token = $this->input->post('token');
			if ($token == $this->security->get_csrf_hash()) {

				$email = $this->input->post('fs_email');
				$password = $this->input->post('fs_password');
				$xpass = md5($password.$email);

				$new = array(
					'fs_email' => trim($email),
					'fs_password' => trim($xpass),
					'fs_aktif' => 0,
					'fd_tanggal_buat' => date('Y-m-d H:i:s'),
					'fs_ip_address' => $this->input->ip_address()
				);

				$this->db->insert($new);

				// sending verifikasi
				$sending = new Sender;
				$sending->verifikasi($email);

				$data['response'] = 'success';
				$data['message'] = '';
				echo json_encode($data);
			} else {
				$data['response'] = 'failed';
				$data['message'] = '';
				echo json_encode($data);
			}
		}
	}

}
