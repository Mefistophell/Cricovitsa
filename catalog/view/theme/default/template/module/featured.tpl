<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h4 class="s1-text4"><?php echo $heading_title; ?></h4>
        </div>
    </div>

    <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="col-md-3 col-sm-6 col-xs-6 recently-sold">
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="picture1" /></a>
            <h3 class="s4-text1"><?php echo $product['name']; ?></h3>
            <a href="<?php echo $product['href']; ?>" class="s1-link"><h5><?php echo $product['description']; ?></h5></a>
            <p>
                <?php if ($product['price']) { ?> 
                <span><?php echo $product['price']; ?></span>
                <?php } ?>
            </p>    
        </div>
        <?php } ?>
    </div>
</div>