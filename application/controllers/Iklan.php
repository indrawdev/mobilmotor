<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Iklan extends CI_Controller {

	public function index() {
		$data = '';
		$this->template->content->view('viklan', $data);
		$this->template->publish();
	}

}
