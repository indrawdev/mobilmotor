<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jual extends CI_Controller {

	public function index() {
		$data = '';
		$this->template->content->view('vjual', $data);
		$this->template->publish();
	}

}