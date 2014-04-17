<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<table>
    <tr>
        <td style="vertical-align: top;width:20px;font-weight: bold;width:10px;">
            1.
        </td>
        <td style="width:100%;">
            <p>请选择一个邮寄地址</p>
            <?php if ($addresses) { ?>
            <input type="radio" name="shipping_address" value="existing" id="shipping-address-existing" checked="checked" />
            <label for="shipping-address-existing"><?php echo $text_address_existing; ?></label>
            <div id="shipping-existing">
                <select name="address_id" style="width: 100%; margin-bottom: 15px;" size="5">
                    <?php foreach ($addresses as $address) { ?>
                    <?php if ($address['address_id'] == $address_id) { ?>
                    <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
            <p>
                <input type="radio" name="shipping_address" value="new" id="shipping-address-new" />
                <label for="shipping-address-new"><?php echo $text_address_new; ?></label>
            </p>
            <?php } ?>
            <div id="shipping-new" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
                <table class="form">
                    <tr>
                        <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                        <td><input type="text" name="firstname" value="" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                        <td><input type="text" name="lastname" value="" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><?php echo $entry_company; ?></td>
                        <td><input type="text" name="company" value="" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
                        <td><input type="text" name="address_1" value="" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><?php echo $entry_address_2; ?></td>
                        <td><input type="text" name="address_2" value="" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><span class="required">*</span> <?php echo $entry_city; ?></td>
                        <td><input type="text" name="city" value="" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><span id="shipping-postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
                        <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" /></td>
                    </tr>
                    <tr>
                        <td><span class="required">*</span> <?php echo $entry_country; ?></td>
                        <td><select name="country_id" class="large-field">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($countries as $country) { ?>
                                <?php if ($country['country_id'] == $country_id) { ?>
                                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select></td>
                    </tr>
                    <tr>
                        <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
                        <td><select name="zone_id" class="large-field">
                            </select></td>
                    </tr>
                </table>
            </div>
            </div>
        </td>
    </tr>
    <tr>
        <td style="vertical-align: top;width:20px;font-weight: bold;">
            2.
        </td>
        <td>
            <?php if ($shipping_methods) { ?>
            <p>请选择一个货运方式</p>
            <table class="radio">
                <?php foreach ($shipping_methods as $shipping_method) { ?>
                <?php if (!$shipping_method['error']) { ?>
                <?php foreach ($shipping_method['quote'] as $quote) { ?>
                <tr class="highlight">
                    <td><?php if ($quote['code'] == $shipping_code || !$shipping_code) { ?>
                        <?php $shipping_code = $quote['code']; ?>
                        <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
                        <?php } else { ?>
                        <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
                        <?php } ?></td>
                    <td><label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label></td>
                    <td style="text-align: right;"><label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                    <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
                </tr>
                <?php } ?>
                <?php } ?>
            </table>
            <br />
            <?php } ?>
        </td>
    </tr>
    <tr>
        <td style="vertical-align: top;width:20px;font-weight: bold;">
            3.
        </td>
        <td>
            <?php if ($payment_methods) { ?>
            <p>请选择一个支付方式</p>
            <table class="radio">
                <?php foreach ($payment_methods as $payment_method) { ?>
                <tr class="highlight">
                    <td><?php if ($payment_method['code'] == $code || !$code) { ?>
                        <?php $code = $payment_method['code']; ?>
                        <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
                        <?php } else { ?>
                        <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
                        <?php } ?></td>
                    <td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
                </tr>
                <?php } ?>
            </table>
            <br />
            <?php } ?>
        </td>
    </tr>
    <tr>
        <td style="vertical-align: top;width:20px;font-weight: bold;">
            4.
        </td>
        <td>
            <p>请添加订单备注</p>
            <textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
        </td>
    </tr>
</table>
<br />
<div class="buttons">
  <div class="right">
    <?php echo $text_agree; ?>
    <?php if ($agree) { ?>
      <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
      <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" class="button" />
  </div>
</div>
<script type="text/javascript"><!--
$('#shipping-address input[name=\'shipping_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		$('#shipping-new').show();
	} else {
		$('#shipping-existing').show();
		$('#shipping-new').hide();
	}
});
//--></script> 
<script type="text/javascript"><!--
$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#shipping-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#shipping-postcode-required').show();
			} else {
				$('#shipping-postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('#shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#shipping-address select[name=\'country_id\']').trigger('change');
//--></script>