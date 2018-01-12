<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index() {
		$this->template->title = 'Daftar';
		$this->template->javascript->add('assets/js/include/register.js');

		$data['csrf_name'] = $this->security->get_csrf_token_name();
		$data['csrf_hash'] = $this->security->get_csrf_hash();
		$this->template->content->view('vregister', $data);
		$this->template->publish();
	}

	public function dealer() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required|min_length[8]');
		$this->form_validation->set_rules('fs_confpass', 'Password Confirmation', 'required|matches[fs_password]');

		if ($this->form_validation->run() == FALSE) {
			$data['response'] = 'failed';
			$data['message'] = validation_errors();
			echo json_encode($data);
		} else {

			$email = strtolower($this->input->post('fs_email'));
			$password = $this->input->post('fs_password');

			$this->load->model('MRegister');
			if (!empty($this->MRegister->getUser($email))) {
				$data['response'] = 'failed';
				$data['message'] = '';
				echo json_encode($data);
			} else {
				$xpass = md5($password.$email);
				$new = array(
					'fs_email' => trim($email),
					'fs_password' => trim($xpass),
					'fs_tipe' => 'individu',
					'fd_tanggal_buat' => date('Y-m-d H:i:s'),
					'fs_ip_address' => $this->input->ip_address()
				);
				$new = $this->security->xss_clean($new);
				$this->db->insert('tm_user', $new);

				// sending verifikasi
				$this->load->model('MSender');
				$this->MSender->verifikasi($email);

				$data['response'] = 'success';
				$data['message'] = 'Akun dibuat, silakan cek email..';
				echo json_encode($data);
			}
		}
	}

	public function individu() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required|min_length[6]');
		$this->form_validation->set_rules('fs_confpass', 'Password Confirmation', 'required|matches[fs_password]');

		if ($this->form_validation->run() == FALSE) {
			$data['response'] = 'failed';
			$data['message'] = validation_errors();
			echo json_encode($data);
		} else {

			$email = strtolower($this->input->post('fs_email'));
			$password = $this->input->post('fs_password');
				
			$this->load->model('MRegister');
			if (!empty($this->MRegister->getUser($email))) {
				$data['response'] = 'failed';
				$data['message'] = 'Akun sudah terdaftar..';
				echo json_encode($data);
			} else {
				$xpass = md5($password.$email);
				$new = array(
					'fs_email' => trim($email),
					'fs_password' => trim($xpass),
					'fs_tipe' => 'individu',
					'fd_tanggal_buat' => date('Y-m-d H:i:s'),
					'fs_ip_address' => $this->input->ip_address()
				);

				$this->db->insert('tm_user', $new);
				// sending verifikasi
				$this->verifikasi($email);

				$data['response'] = 'success';
				$data['message'] = 'Akun dibuat, silakan cek email..';
				$data['redirect'] = 'login';
				echo json_encode($data);
			}
		}
	}

	// notif email
	public function verifikasi($email) {
		$this->load->helper('crypt');

		$data['user'] = $email;
		$data['string'] = crypto($email, 'E');
		$subject = "Verifikasi Akun";
		$html = $this->load->view('email/vnotifverifikasi', $data, true);

		$this->load->model('MSender');
		$this->MSender->sendemail($email, $subject, $html);
	}


	public function test() {
		$this->load->helper('crypt');
		echo crypto('indra@ide.web.iz');
	}

}
