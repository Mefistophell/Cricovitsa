<?php echo $header; ?>
<section class="section4-1">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="green-bord">
                    <h2 class="s1-text2"><?php echo $heading_title; ?></h2>
                    <h4 class="s1-text3"></h4>
                        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                        <div class="col-sm-3">
                            <label class="checkbox-inline">
                                <?php if ($sub_category) { ?>
                                <input type="checkbox" name="sub_category" value="1" checked="checked" />
                                <?php } else { ?>
                                <input type="checkbox" name="sub_category" value="1" />
                                <?php } ?>
                                <?php echo $text_sub_category; ?></label>
                        </div>
                        <div class="col-sm-9">
                            <label class="checkbox-inline">
                                <?php if ($description) { ?>
                                <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                                <?php } else { ?>
                                <input type="checkbox" name="description" value="1" id="description" />
                                <?php } ?>
                                <?php echo $entry_description; ?></label>
                        </div>
                        <br>
                        <div class="col-sm-12 buttons">
                            <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary but1" />
                        </div>
                </div>
            </div>
        </div>
        <?php echo $content_top; ?>
    </div>
</section>

<section class="section4-2">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <p class="s1-text1">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <a class="s1-link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                    <?php } ?>
                </p>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="flr">
                    <div class="ui">View:
                    </div>
                    <div class="ui ui3 but1"><a class="s1-link"><img src="img/view3.png" alt="view" class="view"></a>
                    </div>
                    <div class="ui ui2 but2"><a class="s1-link"><img src="img/view2.png" alt="view" class="view"></a>
                    </div>
                    <div class="ui ui1 but3"><a class="s1-link"><img src="img/view1.png" alt="view" class="view"></a>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="row">
        <div class="container content">

            <div class="col-md-1 slide-left">
                <i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>
            </div>

            <?php foreach ($products as $product) { ?>
            <div class="col-md-4 view-block view1">
                <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                    <h3><?php echo $product['name']; ?></h3>
                    <p><?php echo $product['description']; ?></p>
                    <?php if ($product['price']) { ?> 
                    <span><?php echo $product['price']; ?></span>
                    <?php } ?>
                </a>
                <?php if($product['quantity'] == 0) { ?>
                <div class="sold">SOLD</div>
                <?php } ?>
            </div>
            <?php } ?>

            <div class="col-md-1 slide-right">
                <i class="fa fa-chevron-right fa-3x" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="row">
        <div class="container content">     
            <?php if ($products) { ?>
            <div class="row">
                <div class="col-md-12 text-right"><?php echo $results; ?></div>
                <div class="col-md-12 text-right"><?php echo $pagination; ?></div>
            </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
        </div>
    </div>
</section>

<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<script type="text/javascript"><!--
$('#button-search').bind('click', function () {
        url = 'index.php?route=product/search';

        var search = $('#content input[name=\'search\']').prop('value');

        if (search) {
            url += '&search=' + encodeURIComponent(search);
        }

        var category_id = $('#content select[name=\'category_id\']').prop('value');

        if (category_id > 0) {
            url += '&category_id=' + encodeURIComponent(category_id);
        }

        var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

        if (sub_category) {
            url += '&sub_category=true';
        }

        var filter_description = $('#content input[name=\'description\']:checked').prop('value');

        if (filter_description) {
            url += '&description=true';
        }

        location = url;
    });

    $('#content input[name=\'search\']').bind('keydown', function (e) {
        if (e.keyCode == 13) {
            $('#button-search').trigger('click');
        }
    });

    $('select[name=\'category_id\']').on('change', function () {
        if (this.value == '0') {
            $('input[name=\'sub_category\']').prop('disabled', true);
        } else {
            $('input[name=\'sub_category\']').prop('disabled', false);
        }
    });

    $('select[name=\'category_id\']').trigger('change');
    -- ></script>
<?php echo $footer; ?>