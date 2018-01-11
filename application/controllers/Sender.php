<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sender extends CI_Controller {

	// SENDER EMAIL
	public function sendemail($to, $subject, $content, $file) {
		// CATEGORY NOTIFIKASI 'N'
		$this->load->model('MSender');
		$email = $this->MSender->getConfig('N');

		$this->load->library('email');
		$config = array(
			'protocol' => $email->protocol,
			'smtp_crypto' => $email->smtp_crypto,
			'smtp_host' => $email->smtp_host,
			'smtp_user' => $email->smtp_user,
			'smtp_pass' => $email->smtp_pass,
			'smtp_port' => $email->smtp_port,
			'mailtype' => $email->mailtype,
			'smtp_timeout' => $email->smtp_timeout,
			'charset' => $email->charset,
		);

		$config['newline'] = "\r\n";
		$this->email->clear(TRUE);
		$this->email->initialize($config);
		$this->email->from($email->smtp_user, "MOBIL MOTOR");
		$this->email->to($to);
		$this->email->subject($subject);
		$this->email->message($content);
		$this->email->attach($file);
		$this->email->set_crlf("\r\n");
		$this->email->set_newline("\r\n");

		if (!$this->email->send()) {
			show_error($this->email->print_debugger());
		}
	}

	public function verifikasi($email) {
		$this->load->model('MCari');
		$data['user'] = $this->MCari->getUser($email);
		$content = $this->load->view('email/vnotifverifikasi', $data);
		$this->sendemail($email, '', $content, '');
	}

	public function notifuser($email) {
		$this->load->model('MCari');
		$data['user'] = $this->MCari->getUser($email);
		$content = $this->load->view('email/vnotifnewuser', $data);
		$this->sendemail($email, '', $content, '');
	}

}