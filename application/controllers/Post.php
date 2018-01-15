<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Post extends CI_Controller {

	public function __construct() {
		parent::__construct();
		if ($this->session->userdata('login') <> TRUE) {
			redirect('login');
		}
	}
	
	public function mobil() {
		$data = '';
		$this->template->content->view('viklanmobil', $data);
		$this->template->publish();
	}

	public function motor() {
		$data = '';
		$this->template->content->view('viklanmotor', $data);
		$this->template->publish();
	}

}