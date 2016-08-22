<?php echo $header; ?>
<main>   
<section>
    <div class="container">
        <ul class="breadcrumb-product">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1><?php echo !empty($seller_id)?$seller_name . ', ' . $heading_title : $heading_title; ?></h1>
        <div class="row">
            <div class="col-md-12 col-sm-12 togle">
                <div class="col-md-8 col-sm-12 togle_img original">
                    <?php if ($thumb || $images) { ?>
                    <ul class="thumbnails">
                        <?php if ($thumb) { ?>
                        <li><a class="thumbnail-pull" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                        <?php } ?>
                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                        <li class="image-additional-pull"><a class="thumbnail-pull" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                    <div class="print">
                        <!--<img class="print-layer" src="/image/layer.png"> -->
                        <?php if ($thumb) { ?>
                          <img class="print-thumb" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                        <?php } ?>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 right-box">
                    <div class="col-md-12 col-sm-12">
                        <div class="nav nav-tabs button-group">
                            <?php if ($options) { ?>
                                <div class="togle_original active"><a href="#tab-original" data-toggle="tab">Original</a></div>
                                <div class="togle_prints"><a href="#tab-print" data-toggle="tab">Prints</a></div>
                            <?php } ?>
                        </div>
                            <!-- <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button> -->
                    </div>
                    
                    <div class="col-md-12" >
                        <h3><?php echo !empty($seller_id)?$seller_name . ', ' . $heading_title : $heading_title; ?></h3>
                    </div>

                    <div class="short_description col-md-12">
                        <?php echo $short_description; ?>
                    </div>
                    <div class="buy col-md-12">
                        <?php if ($price) { ?>
                         <div class="col-md-6 col-sm-6">
                            Price: <span class="price"><?php echo $price; ?></span>
                        </div>
                        <?php } ?>
                        <div class="col-md-6 col-sm-6">
                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_cart; ?></button>
                        </div>
                        <div class="col-md-12">
                            <div class="viewed">
                                <?php echo $viewed; ?> Views
                            </div>
                        </div>
                    </div>
                    
                        <!-- begin -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab-original"></div>
                            <div class="tab-pane" id="tab-print">

                                <div id="product">
                                    <?php if ($options) { ?>
                                    <hr>
                                    <div class="col-md-12 box-options">
                                    <h3><?php echo $text_option; ?></h3>
                                    <?php foreach ($options as $option) { ?>
                                    <?php if ($option['type'] == 'select') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                        <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                            <option value=""><?php echo $text_select; ?></option>
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'radio') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label"><?php echo $option['name']; ?></label>
                                        <div id="input-option<?php echo $option['product_option_id']; ?>">
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                    <?php echo $option_value['name']; ?>
                                                    <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                    <?php } ?>
                                                </label>
                                            </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'checkbox') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label"><?php echo $option['name']; ?></label>
                                        <div id="input-option<?php echo $option['product_option_id']; ?>">
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                    <?php if ($option_value['image']) { ?>
                                                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                                                    <?php } ?>
                                                    <?php echo $option_value['name']; ?>
                                                    <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                    <?php } ?>
                                                </label>
                                            </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'image') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label"><?php echo $option['name']; ?></label>
                                        <div id="input-option<?php echo $option['product_option_id']; ?>">
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                                                    <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                    <?php } ?>
                                                </label>
                                            </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'text') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'textarea') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                        <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'file') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label"><?php echo $option['name']; ?></label>
                                        <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                        <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'date') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                        <div class="input-group date">
                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                            </span></div>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'datetime') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                        <div class="input-group datetime">
                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                            </span></div>
                                    </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'time') { ?>
                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                        <div class="input-group time">
                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                            </span></div>
                                    </div>
                                    <?php } ?>
                                    <?php } ?>
                                    <?php } ?>
                                    <?php if ($recurrings) { ?>
                                    <hr>
                                    <h3><?php echo $text_payment_recurring ?></h3>
                                    <div class="form-group required">
                                        <select name="recurring_id" class="form-control">
                                            <option value=""><?php echo $text_select; ?></option>
                                            <?php foreach ($recurrings as $recurring) { ?>
                                            <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block" id="recurring-description"></div>
                                    </div>
                                    <?php } ?>
                                    <div class="form-group">
                                        <label class="control-label hidden" for="input-quantity"><?php echo $entry_qty; ?></label>
                                        <input type="hidden" name="quantity" value="<?php echo $minimum?1:1; ?>" size="2" id="input-quantity" class="form-control" />
                                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                    </div>
                                    <?php if ($minimum > 1) { ?>
                                    <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                                    <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section2">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h2>Art description</h2>
                <p><?php echo $description; ?></p>   
            </div>
            <div class="col-sm-12">
                <?php if ($attribute_groups) { ?>
                <table class="table table-bordered">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <thead>
                        <tr>
                            <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <tr>
                            <td><?php echo $attribute['name']; ?></td>
                            <td><?php echo $attribute['text']; ?></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                    <?php } ?>
                </table>

                <?php } ?>
                <div class="rating hidden">
                    <p>
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($rating < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <?php } ?>
                        <?php } ?>
                        <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
                    <hr>
                    <!-- AddThis Button BEGIN -->
                    <div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
                    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                    <!-- AddThis Button END -->
                </div>
            </div>
        </div>
        <?php echo $content_bottom; ?>
    </div>
</section>

<section class="section3">
    <div class="container">
        <div class="row might_like">    
        <?php if ($products) { ?>
            <h2>you might like</h2>
            <?php foreach ($products as $product) { ?>
            <div class="col-md-3 col-sm-3">
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <h3><?php echo $product['name']; ?></h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, voluptatum.</p>
            </div>
            <?php } ?>
        <?php } ?>      
    </div>
</div>
</section>
    
<section class="section4">
    <div class="container">
        <div class="row comments">
            <div class="col-md-8">
                <h2>comments</h2>
                <div id="review"></div>
               
                <div class="col-md-12 col-xs-12">
                    <div class="review_button">
                        WRITE A REVIEW <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
                    </div>
                    <div class="comment_button">
                        More comments <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row box-review">
            <div class="col-md-12">
                <form class="form-horizontal" id="form-review">
                    <h2><?php echo $text_write; ?></h2>
                    <?php if ($review_guest) { ?>
                        <div class="required">
                            <div class="col-sm-12">
                                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                            </div>
                        </div>
                        <div class="required">
                            <div class="col-sm-12">
                                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                <div class="help-block"><?php echo $text_note; ?></div>
                            </div>
                        </div>
                        <div class="required">
                            <div class="col-sm-12">
                                <label class="control-label"><?php echo $entry_rating; ?></label>
                                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                <input type="radio" name="rating" value="1" />
                                &nbsp;
                                <input type="radio" name="rating" value="2" />
                                &nbsp;
                                <input type="radio" name="rating" value="3" />
                                &nbsp;
                                <input type="radio" name="rating" value="4" />
                                &nbsp;
                                <input type="radio" name="rating" value="5" />
                                &nbsp;<?php echo $entry_good; ?></div>
                        </div>
                        <?php echo $captcha; ?>
                        <div class="buttons clearfix">
                            <div class="pull-right">
                                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                            </div>
                        </div>
                    <?php } else { ?>
                        <?php echo $text_login; ?>
                    <?php } ?>
                </form>
            </div>
        </div>
    </div>
</section>  
<?php echo $column_right; ?>
</main>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
    $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function() {
            $('#recurring-description').html('');
            },
            success: function(json) {
            $('.alert, .text-danger').remove();
                    if (json['success']) {
            $('#recurring-description').html(json['success']);
            }
            }
    });
    });
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
    $.ajax({
    url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function() {
            $('#button-cart').button('loading');
            },
            complete: function() {
            $('#button-cart').button('reset');
            },
            success: function(json) {
            $('.alert, .text-danger').remove();
                    $('.form-group').removeClass('has-error');
                    if (json['error']) {
            if (json['error']['option']) {
            for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));
                    if (element.parent().hasClass('input-group')) {
            element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
            element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
            }
            }

            if (json['error']['recurring']) {
            $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
            }

            // Highlight any found errors
            $('.text-danger').parent().addClass('has-error');
            }

            if (json['success']) {
            $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    $('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);
                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
            }
            },
            error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
    });
    });
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
    pickTime: false
    });
            $('.datetime').datetimepicker({
    pickDate: true,
            pickTime: true
    });
            $('.time').datetimepicker({
    pickDate: false
    });
            $('button[id^=\'button-upload\']').on('click', function() {
    var node = this;
            $('#form-upload').remove();
            $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
            $('#form-upload input[name=\'file\']').trigger('click');
            if (typeof timer != 'undefined') {
    clearInterval(timer);
    }

    timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
    clearInterval(timer);
            $.ajax({
            url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                    $(node).button('loading');
                    },
                    complete: function() {
                    $(node).button('reset');
                    },
                    success: function(json) {
                    $('.text-danger').remove();
                            if (json['error']) {
                    $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                    }

                    if (json['success']) {
                    alert(json['success']);
                            $(node).parent().find('input').attr('value', json['code']);
                    }
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
            });
    }
    }, 500);
    });
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();
            $('#review').fadeOut('slow');
            $('#review').load(this.href);
            $('#review').fadeIn('slow');
    });
            $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
            $('#button-review').on('click', function() {
    $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function() {
            $('#button-review').button('loading');
            },
            complete: function() {
            $('#button-review').button('reset');
            },
            success: function(json) {
            $('.alert-success, .alert-danger').remove();
                    if (json['error']) {
            $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
            }

            if (json['success']) {
            $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
            }
            }
    });
    });
            $(document).ready(function() {
    $('.thumbnails').magnificPopup({
    type:'image',
            delegate: 'a',
            gallery: {
            enabled:true
            }
    });
    });
//--></script>
<?php echo $footer; ?>
