<?php

include 'sisow.php';

class ControllerPaymentSisowVisa extends ControllerPaymentSisow {
	public function index() {
		return $this->_index('sisowvisa');
	}

	public function notify() {
		$this->_notify('sisowvisa');
	}

	public function redirectbank() {
		$this->_redirectbank('sisowvisa');
	}
}
?>
