<form id="sisowbillink_payment" class="checkout-content">
	<div class="form-group required">
		<label class="col-sm-2 control-label" for="gender">Aanhef</label>
		<div class="col-sm-10">
			<select name="sisowgender" id="gender" class="form-control">
				<option value="">Kies aanhef</option>
				<option value="M">De heer</option>
				<option value="F">Mevrouw</option>
			</select>
		</div>
	</div>
	
	<div class="form-group required">
		<label class="col-sm-2 control-label" for="sisowphone">Telefoonnummer</label>
		<div class="col-sm-10">
			<input type="text" id="sisowphone" name="sisowphone" class="form-control" maxlength="12" value="" />
		</div>
	</div>
	
	<div class="form-group required">
		<label class="col-sm-2 control-label" for="sisowday">Geboortedatum</label>
		<div class="col-sm-10">
			<div class="col-sm-3" style="padding-left: 0px;">
				<select id="sisowday" name="sisowday" class="form-control">
					<option value="">Dag</option>
					<?php for($i = 1; $i < 32; $i++) { ?>
						<option value="<?php print_r(sprintf("%02d", $i)); ?>"><?php echo $i; ?></option>
					<?php } ?>
				</select>
			</div>
			<div class="col-sm-3">
				<select id="sisowmonth" name="sisowmonth" class="form-control">
					<option value="">Maand</option>
					<?php for($i = 1; $i < 13; $i++) { ?>
						<option value="<?php print_r(sprintf("%02d", $i)); ?>"><?php echo $i; ?></option>
					<?php } ?>
				</select>
			</div>
			<div class="col-sm-3">
				<select id="sisowyear" name="sisowyear" class="form-control">
					<option value="">Jaar</option>
					<?php for($i = date("Y") - 17; $i > date("Y") - 150; $i--) { ?>
						<option value="<?php print_r(sprintf("%02d", $i)); ?>"><?php echo $i; ?></option>
					<?php } ?>
				</select>
			</div>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="sisowcoc">KvK nummer</label>
		<div class="col-sm-10">
			<input type="text" id="sisowcoc" name="sisowcoc" class="form-control" maxlength="10" value="" />
			<small>Verplicht voor B2B</small>
		</div>
	</div>
</form>
	

<div class="buttons pull-right">
	<input type="button" value="<?php echo $button_confirm; ?>" id="sisowbillink_confirm" class="btn btn-primary" />
</div>
<script type="text/javascript"><!--
	$('#sisowbillink_confirm').on('click', function() {
		$.ajax({ 
			type: 'POST',
			url: 'index.php?route=payment/sisowbillink/redirectbank',
			data: $('#sisowbillink_payment :input'),
			dataType: 'json',
			cache: false,
			beforeSend: function() {
				$('#sisowbillink_confirm').button('loading');
			},
			complete: function() {
				$('#sisowbillink_confirm').button('reset');
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
	//-->
</script>