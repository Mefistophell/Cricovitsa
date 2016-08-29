<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>
<section class="section_main">

</section>
<section class="section2">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12 padd50">
                <div class="yellow-bord">
                    <h2 class="s1-text2">art by category
                    </h2>
                    <h4 class="s1-text3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </h4>
                </div>
            </div>
        </div>
        <div class="row marg25">
            <?php foreach ($categories as $category) { ?>
            <?php static $cat = 1; ?>
            <div class="col-md-3 col-sm-3 col-xs-6 padding10">
                <div class="item<?= $cat ?> text-center">
                    <a href="<?php echo $category['href'] ?>" class="s4-textlink ownbtn2 btn">
                        View the collection >
                    </a>
                </div> 
                <a href="<?php echo $category['href'] ?>" class="s1-link"><h5 class="marg25 marg990 padd50"><?php echo $category['name'] ?></h5></a>               
            </div>
            <?php $cat++; } unset($cat); ?>
        </div>
    </div>
</section>

<section class="section3">
    <div class="container">

        <div class="row">
            <div class="col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6 col-xs-12 padd50">
                <div class="bord-blue">
                    <h2 class="s1-text2">art block #2
                    </h2>
                    <h4 class="s1-text3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </h4>
                </div>
            </div>
        </div>

        <div class="row marg25 marg990">
            <div class="col-md-3 col-sm-3 col-xs-6 padding10">
                <div class="item5 text-center">

                </div> 
                <a href="#" class="s1-link"><h5 class="marg25 marg990 padd50">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </h5></a>             
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6 padding10">
                <div class="item6 text-center">
                    <a href="/index.php?route=module/featured/reccomend" class="s4-textlink ownbtn2 btn">
                        View the collection >
                    </a>
                </div> 
                <a href="/index.php?route=module/featured/reccomend" class="s1-link"><h5 class="marg25 marg990 padd50">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </h5></a>               
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 padding10">
                <div class="item7 text-center mt480">
                    <a href="/index.php?route=module/featured/trending" class="s4-textlink ownbtn2 btn">
                        View the collection >
                    </a>
                </div> 
                <a href="/index.php?route=module/featured/trending" class="s1-link"><h5 class="marg25 marg990 padd100">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h5></a>               
            </div>


        </div>
    </div>
</section>

<section class="section2">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="green-bord">
                    <h2 class="s1-text2">art block #3
                    </h2>
                    <h4 class="s1-text3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </h4>
                </div>
            </div>
        </div>
        <div class="row marg25">
            <div class="col-md-8 col-sm-12 col-xs-12 padding10">
                <div class="item8 text-center mt480">
                    <a href="/index.php?route=product/category&path=0_0_0_0_283" class="s4-textlink ownbtn3 btn">
                        View artwork >
                    </a>
                </div>              
            </div>
            <div class="col-md-4 col-sm-6 col-xs-6 padding10">
                <div class="item9 text-center mt110">
                    <a href="/index.php?route=product/category&path=0_0_0_0_284" class="s4-textlink ownbtn3 btn">
                        View artwork >
                    </a>
                </div>              
            </div>

            <div class="col-md-4 col-sm-6 col-xs-6 padding10">
                <div class="item10 text-center mt110">
                    <a href="/index.php?route=product/category&path=0_0_0_0_285" class="s4-textlink ownbtn3 btn">
                        View artwork >
                    </a>
                </div>             
            </div>
            <div class="col-md-4 col-sm-6 col-xs-6 padding10">
                <div class="item11 text-center mt110">
                    <a href="/index.php?route=product/category&path=0_0_0_0_286" class="s4-textlink ownbtn3 btn">
                        View artwork >
                    </a>
                </div>               
            </div>
            <div class="col-md-4 col-sm-6 col-xs-6 padding10">
                <div class="item12 text-center mt110">
                    <a href="/index.php?route=product/category&path=0_0_0_0_288" class="s4-textlink ownbtn3 btn">
                        View artwork >
                    </a>
                </div>              
            </div>

        </div>
    </div>
</section>

<?php echo $content_bottom; ?>
<?php echo $column_right; ?>

<?php echo $footer; ?>