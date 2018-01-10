<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends CI_Controller {

	public function index() {
		$data = '';
		$this->template->content->view('vchat', $data);
		$this->template->publish();
	}


	public function getChat() {

	}

	public function sendChat() {
		
	}

}