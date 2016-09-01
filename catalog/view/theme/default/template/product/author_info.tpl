<?php echo $header; ?>
<section class="section4-1">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="green-bord">
                    <?php if($logo) { ?>
                        <img class="artist_logo" src="<?php echo $logo; ?>">
                    <?php } ?>
                    <h2 class="s1-text2"><?php echo $heading_title; ?></h2>
                    <h4 class="s1-text3"><?php echo $description; ?></h4>
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
            <?php if (!$products) { ?>
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
<?php echo $footer; ?>