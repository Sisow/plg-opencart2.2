<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowvvv_payment" class="checkout-content">
  <img src="catalog/view/theme/default/image/vvv.png" alt="VVV" title="VVV" style="vertical-align: middle;" /><br/>
</div>
<div class="buttons pull-right">
  <input type="button" value="<?php echo $button_confirm; ?>" id="sisowvvv_confirm" class="btn btn-primary" />
</div>

<script type="text/javascript"><!--
$('#sisowvvv_confirm').on('click', function() {
	$.ajax({ 
		type: 'POST',
		url: 'index.php?route=payment/sisowvvv/redirectbank',
		data: $('#sisowvvv_payment :input'),
		dataType: 'json',
		cache: false,
		beforeSend: function() {
			$('#sisowvvv_confirm').button('loading');
		},
		complete: function() {
			$('#sisowvvv_confirm').button('reset');
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
