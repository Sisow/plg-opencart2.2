<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowidealqr_payment" class="checkout-content">
  <img src="catalog/view/theme/default/image/ideal.png" height="75px"/>
</div>
<div class="buttons pull-right">
  <input type="button" value="<?php echo $button_confirm; ?>" id="sisowidealqr_confirm" class="btn btn-primary" />
</div>

<script type="text/javascript"><!--
$('#sisowidealqr_confirm').on('click', function() {
	$.ajax({ 
		type: 'POST',
		url: 'index.php?route=payment/sisowidealqr/redirectbank',
		data: $('#sisowidealqr_payment :input'),
		dataType: 'json',
		cache: false,
		beforeSend: function() {
			$('#sisowidealqr_confirm').button('loading');
		},
		complete: function() {
			$('#sisowidealqr_confirm').button('reset');
		},		
		success: function(json) {
			if (json['error']) {
				alert(json['error']);
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}		
	});
});
//--></script> 
