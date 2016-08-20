<section class="section4">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="padd21">
                    <h4 class="s1-text4">Recently sold</h4>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="col-md-3 col-sm-6 col-xs-6 recently-sold">
                <a alt="" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="picture1" /></a>
                <h3 class="s4-text1"><?php echo $product['name']; ?></h3>
                <a href="<?php echo $product['href']; ?>" class="s1-link"><h5><?php echo $product['description']; ?></h5></a>
                <div class="sold">SOLD</div>
            </div>
            <?php } ?>
        </div>
    </div>
</section>
