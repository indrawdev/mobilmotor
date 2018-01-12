<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	function crypto($string, $action = 'E')
	{
		$secret_key = 'amggroup_secret_key';
		$secret_iv = 'amggroup_secret_iv';

		$encrypt_method = "AES-256-CBC";
		$key = hash('sha256', $secret_key);
		$iv = substr(hash('sha256', $secret_iv), 0, 16);

		if ($action == 'E') {
        	$output = base64_encode(openssl_encrypt($string, $encrypt_method, $key, 0, $iv));
    	} else if( $action == 'D' ) {
    		$output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
    	}

    	return $output;
	}