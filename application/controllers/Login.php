<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index() {
		$data = '';
		$this->template->content->view('vlogin', $data);
		$this->template->publish();
	}

	public function islogin() {
		
	}

}
