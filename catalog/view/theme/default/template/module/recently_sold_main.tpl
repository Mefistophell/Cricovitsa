<section class="section3">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="no-bord">
                    <h2 class="s1-text2">art block #4
                    </h2>
                    <h4 class="s1-text3">Lorem ipsum dolor sit amet, consectetur adipisicing<br />elit, sed do eiusmod tempor incididunt ut labore et<br />dolore magna aliqua. Ut enim ad minim veniam.
                    </h4>
                </div>
            </div>
        </div>
        <div class="row marg25">
            <?php foreach ($products as $product) { ?>
            <div class="width20">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="picture1 mb10" />
                <a href="<?php echo $product['href']; ?>" class="s1-link">
                    <h5 class="marg25"><?php echo $product['description']; ?></h5>
                </a>
                <div class="sold">SOLD</div>
            </div>
            <?php } ?>
        </div>
        <div class="row marg25">
            <div class="col-xs-12 text-center">
                <button type="button" class="width18 s4-textlink ownbtn btn">
                    More >
                </button>
            </div>
        </div>
    </div>
    </section>
