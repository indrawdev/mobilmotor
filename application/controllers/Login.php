<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index() {
		$this->template->title = 'Masuk';
		$this->template->javascript->add('assets/js/include/login.js');

		$data['csrf_name'] = $this->security->get_csrf_token_name();
		$data['csrf_hash'] = $this->security->get_csrf_hash();
		$this->template->content->view('vlogin', $data);
		$this->template->publish();
	}

	public function islogin() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fs_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('fs_password', 'Password', 'trim|required|min_length[6]');

		if ($this->form_validation->run() == FALSE) {
			$data['response'] = 'failed';
			$data['message'] = validation_errors();
			echo json_encode($data);
		} else {
			// valid token
			$email = strtolower($this->input->post('fs_email'));
			$password = $this->input->post('fs_password');
			// ENCYRPT MD5
			$xpass = md5($password.$email);

			$this->load->model('MLogin');
			$valid = $this->MLogin->validUser($email, $xpass);

			if (!empty($valid)) {
				$sess = array(
					'login' => TRUE,
					'user' => $this->encryption->encrypt($email),
					'level' => $this->encryption->encrypt($valid->fs_tipe)
				);
				$this->session->set_userdata($sess);

				$data['response'] = 'success';
				$data['message'] = 'Berhasil masuk...';
				$data['redirect'] = 'dashboard';
				echo json_encode($data);
			} else {
				$data['response'] = 'failed';
				$data['message'] = 'Email atau password salah...';
				echo json_encode($data);
			}
		}
	}

	public function isactive($string) {
		$this->load->helper('crypt');
		$this->load->model('MCari');

		$email = crypto($string, 'D');
		$status = $this->MCari->getStatusUser($email, '0');
		if (!empty($status)) {
			$data = array(
				'fs_aktif' => '1',
				'fd_tanggal_aktif' => date('Y-m-d H:i:s')
			);
			$where = "fs_email = '".trim($email)."' AND fs_aktif = '0'";
			$this->db->where($where);
			$this->db->update('tm_user', $data);

			// sending notifikasi
			$this->notifuser($email);

			$data['info'] = "Akun sudah aktif, silakan login..";
		} else {
			$data['info'] = "Aktivasi akun sudah dilakukan..";
		}

		$this->template->content->view('vaktif', $data);
		$this->template->publish();
	}

	public function islogout() {
		$this->session->sess_destroy();
		redirect('login');
	}

	// notif email
	public function notifuser($email) {
		$this->load->model('MCari');
		$data['user'] = $email;
		$subject = "Akun sudah aktif";
		$html = $this->load->view('email/vnotifnewuser', $data, true);

		$this->load->model('MSender');
		$this->MSender->sendemail($email, $subject, $html);
	}

}
