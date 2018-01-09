<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index() {
		$data = '';
		$this->template->content->view('vhome', $data);
		$this->template->publish();
	}

}