<?php

include 'sisow.php';

class ControllerPaymentSisowIdealqr extends ControllerPaymentSisow {
	public function index() {
		return $this->_index('sisowidealqr');
	}
	
	public function notify() {
		$this->_notify('sisowidealqr');
	}

	public function redirectbank() {
		$this->_redirectbank('sisowidealqr');
	}
}
?>
