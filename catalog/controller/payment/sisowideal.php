<?php

include 'sisow.php';

class ControllerPaymentSisowIdeal extends ControllerPaymentSisow {
	public function index() {
		return $this->_index('sisowideal');
	}
	
	public function notify() {
		$this->_notify('sisowideal');
	}

	public function redirectbank() {
		$this->_redirectbank('sisowideal');
	}
}
?>
