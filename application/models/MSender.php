<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MSender extends CI_Model {

	// SENDER EMAIL
	public function sendemail($to, $subject, $content) {
		// CATEGORY NOTIFIKASI 'N'
		$this->load->model('MCari');
		$email = $this->MCari->getConfig('N');

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
		$this->email->from($email->smtp_user, "Mobil.com");
		$this->email->to($to);
		$this->email->subject($subject);
		$this->email->message($content);
		//$this->email->attach($file);
		$this->email->set_crlf("\r\n");
		$this->email->set_newline("\r\n");

		if (!$this->email->send()) {
			show_error($this->email->print_debugger());
		}
	}

}