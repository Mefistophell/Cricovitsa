<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
    <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content= "<?php echo $keywords; ?>" />
        <?php } ?>
        <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        
        <!-- <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
        <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet"> 
        <link href="catalog/view/theme/default/stylesheet/astyle.css" rel="stylesheet"> 
        
        <script src="catalog/view/theme/default/stylesheet/js/jquery-1.11.2.min.js"></script>
        <script src="catalog/view/theme/default/stylesheet/js/PrefixFree.js"></script>
        <script src="catalog/view/theme/default/stylesheet/js/bootstrap.js"></script>
        <script src="catalog/view/theme/default/stylesheet/js/script.js"></script>
        <script src="catalog/view/theme/default/stylesheet/js/jquery.formstyler.js"></script>
        <script>
            (function($) {
                $(function() {

                    $('.styled').styler();

                });
            })(jQuery);

        </script>
        
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/bootstrap-theme.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/fonts.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/main.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/menu.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/animate.css" />
        <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/css/mosch.css" />
        <link type="text/css" href="catalog/view/theme/default/stylesheet/css/jquery.formstyler.css" rel="stylesheet" />
        
        
        <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
        <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
        <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
        <?php } ?>
    </head>
    <body class="<?php echo $class; ?>">
        <header class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="<?php echo $home; ?>">
                        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo" />                                
                        <h4><?php echo $name; ?></h4>
                    </a>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-lg-10 col-md-9">
                           <?php echo $search; ?> 
                        </div>
                        <div class="col-lg-2 col-md-3">
                            <?php if ($logged) { ?>
                                <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                                &nbsp;&nbsp;&nbsp;
                             <?php } else { ?>
                                <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> 
                                <span>|</span> 
                                <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
                             <?php } ?>
                            <?php echo $cart; ?>
                        </div>
                    </div>
                    <div class="row visible-md visible-lg">
                        <?php if ($categories) { ?>
                        <nav id="menu" class="navbar navigation">
                            <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                            </div>
                            <div class="collapse navbar-collapse navbar-ex1-collapse">
                                <ul class="nav navbar-nav">
                                    <?php $cc = 1; foreach ($categories as $category) { ?>
                                    <?php if ($category['children']) { ?>
                                    <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"><?php echo $category['name']; ?></a>
                                        <div class="dropdown-menu">
                                            <div class="dropdown-inner">
                                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                <div class="c<?php echo $cc; ?>">
                                                    <?php $le = 1; foreach ($children as $child) { if($le>5) break; ?>
                                                    <ul class="list-unstyled le<?php echo $le; ?>"></ul>
                                                    <?php $le++; } ?>
                                                </div>
                                                <?php } ?>
                                            </div>
                                            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                                    </li>
                                    <?php } else { ?>
                                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                    <?php } ?>
                                    <?php $cc++;} ?>
                                </ul>
                            </div>
                        </nav>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </header>

        <script>
        <?php $c = 1; foreach ($categories as $category) { 
            foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) {
                $l1 = $l2 = $l3 = 0;
                foreach ($children as $child) { ?>
                <?php 
                    switch ($child['level']) {
                    case 1: if ($l1 > 5) continue; ?>
                        <?php if ($l1 == 0) { ?>
                            $('.c<?php echo $c; ?> .le1').append('<li><h5 class="category-level">SUBJECT</h5></li>');
                        <?php } ?>
                        $('.c<?php echo $c; ?> .le1').append('<li><a href=\'<?php echo $child["href"]; ?>\'><?php echo $child["name"]; ?></a></li>');
                    <?php  $l1++;   break;
                    case 2: if ($l2 > 5) continue; ?>
                        <?php if ($l2 == 0) { ?>
                            $('.c<?php echo $c; ?> .le2').append('<li><h5 class="category-level">MEDIUM</h5></li>');
                        <?php } ?>
                        $('.c<?php echo $c; ?> .le2').append('<li><a href=\'<?php echo $child["href"]; ?>\'><?php echo $child["name"]; ?></a></li>');
                    <?php  $l2++;  break;
                    case 3: if ($l3 > 5) continue; ?>
                        <?php if ($l3 == 0) { ?>
                            $('.c<?php echo $c; ?> .le3').append('<li><h5 class="category-level">STYLE</h5></li>');
                        <?php } ?>
                        $('.c<?php echo $c; ?> .le3').append('<li><a href=\'<?php echo $child["href"]; ?>\'><?php echo $child["name"]; ?></a></li>');
                    <?php  $l3++;  break;
                ?>
                    <?php }  ?>
                <?php } ?>
            <?php } $c++;  ?>
        <?php } ?>
        </script>



