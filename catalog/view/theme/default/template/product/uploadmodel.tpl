    <?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="product-info">
  <div class="left">
      <div class="image nothreemode">
          <img width="228px" height="228px" src="image/uploadmodel.jpg" alt="Upload your 3d model" />
      </div>
      <div class="image threedmode" style="display:none;" isloaded='false'>
          <canvas id="cv" style="border: 1px solid;" width="228px" height="228px" ></canvas>
      </div>
  </div>
    <div class="right">

      <div class="options">
          <h2>选项</h2>
          <br />
          <b>材质:</b>&nbsp;&nbsp;
          <select name='material' style="width:120px;">
              <?php foreach($material as $key => $item) { ?>
                <option value="<?php echo $key; ?>"><?php echo $item['name']; ?></option>
              <?php } ?>
          </select>
          <br /><br />
          <b>精度:</b>&nbsp;&nbsp;
          <select name='precision' style="width:120px;">
              <?php foreach($precision as $key => $item) { ?>
              <option value="<?php echo $key; ?>"><?php echo $item['name']; ?></option>
              <?php } ?>
          </select>
          <br /><br />
          <b>颜色:</b>&nbsp;&nbsp;
          <select name='product_color' style="width:120px;">
              <?php foreach($product_color as $key => $item) { ?>
              <option value="<?php echo $key; ?>"><?php echo $item['name']; ?></option>
              <?php } ?>
          </select>
          <br /><br />
          <b>上传模型:</b>&nbsp;&nbsp;
          <input type="text" name="modeluplaodedbycustomer" value="" size="24" />&nbsp;&nbsp;&nbsp;&nbsp;<a id="button-upload" class="button">上传</a>
          <br />
          <span class="error modeluplaodedbycustomererror" style="margin-top: 10px;"></span>
      </div>
      <div class="cart">
        <div><?php echo $text_qty; ?>
          <input type="text" name="quantity" size="2" value="1" />
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          &nbsp;
            <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
        </div>
      </div>
    </div>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});
    
$('#button-cart').bind('click', function() {

    if($("input[name='modeluplaodedbycustomer']").val() == '') {
        $(".modeluplaodedbycustomererror").text('提醒：请先上传需要打印的模型！');
        return;
    }

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }

                if (json['error']['modeluplaodedbycustomer']) {
                    $("#button-upload").after('<span class="error">' + json['error']['modeluplaodedbycustomer'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);

                $('#shoppingCartNum').html(json['cart_products']);

				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script>

<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<script type="text/javascript"><!--
    new AjaxUpload('#button-upload', {
        action: 'index.php?route=product/product/upload',
        name: 'file',
        autoSubmit: true,
        responseType: 'json',
        onSubmit: function(file, extension) {
            $('#button-upload').after('<img src="image/littleloading.gif" class="loading" style="padding-left: 5px;" />');
            $('#button-upload').attr('disabled', true);
        },
        onComplete: function(file, json) {
            $('#button-upload').attr('disabled', false);

            if (json['success']) {
                alert(json['success']);

                $('input[name=\'modeluplaodedbycustomer\']').attr('value', json['filename']);

                if(json['filenameUrl']) {
                    showthreedimage(json['filenameUrl']);
                }

            }

            if (json['error']) {
                alert(json['error']);
            }

            $('.loading').remove();
        }
    });
//--></script>
    <script type="text/javascript">

        function showthreedimage(threedPath) {

            canvas = document.getElementById('cv');
            viewer = new JSC3D.Viewer(canvas);
            viewer.setParameter('SceneUrl', threedPath);
            viewer.setParameter('InitRotationX', 20);
            viewer.setParameter('InitRotationY', 20);
            viewer.setParameter('InitRotationZ', 0);
            viewer.setParameter('ModelColor', '#CAA618');
            viewer.setParameter('BackgroundColor1', '#FFFFFF');
            viewer.setParameter('BackgroundColor2', '#383840');
            viewer.setParameter('RenderMode', 'smooth');
            viewer.setParameter('Definition', 'standard');
            viewer.init();

            viewer.update();

            logoTimerID = setInterval(function(){viewer.rotate(0, 10, 0);viewer.update();}, 200);
            viewer.enableDefaultInputHandler(false);
            setTimeout(function(){viewer.enableDefaultInputHandler(true); loadModel();}, 8000);

            $(".nothreemode").css({display:'none'});
            $(".threedmode").css({display:'block'});

        }

        function shownothreedimage() {

            $(".nothreedmode").css("display","");
            $(".threedmode").css("display","none");

        }

        function thumbsubimage() {

            $(".nothreedmode").css("display","");
            $(".threedmode").css("display","none");
            $("#image").trigger("click");

        }


    </script>
<?php echo $footer; ?>