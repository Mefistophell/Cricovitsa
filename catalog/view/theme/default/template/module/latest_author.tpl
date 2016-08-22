<div class="row more_by">
    <h2><?php echo $heading_title; ?></h2>
    <?php foreach ($products as $product) { ?>
    <div class="col-md-3 col-sm-3">
        <a href="<?php echo $product['href']; ?>">
            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
        </a>
        <h3><?php echo $product['name']; ?></h3>
        <p><?php echo $product['description']; ?></p>
    </div>
    <?php } ?>
    <div class="col-md-12">
        <div class="pull-right"><a href="<?php echo $href_more; ?>"><?php echo $text_more; ?></a></div>
    </div>
</div>
