<?php echo $header; ?>
<section class="section4-2">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <p class="s1-text1">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <a class="s1-link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a> |
                    <?php } ?>
                </p>
            </div>
            <div class="col-sm-12">
                <?php echo $content_top; ?>
                <h1><?php echo $heading_title; ?></h1>
                <?php if ($categories) { ?>
                <p><strong><?php echo $text_index; ?></strong>
                    <?php foreach ($categories as $category) { ?>
                    &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/author#<?php echo $category['firstname']; ?>"><?php echo $category['firstname']; ?></a>
                    <?php } ?>
                </p>
                <?php foreach ($categories as $category) { ?>
                <h2 id="<?php echo $category['firstname']; ?>"><?php echo $category['firstname']; ?></h2>
                <?php if ($category['author']) { ?>
                <?php foreach (array_chunk($category['author'], 4) as $authors) { ?>

                <?php foreach ($authors as $author) { ?>
                <a href="<?php echo $author['href']; ?>"><?php echo $author['name']; ?></a>
                <?php } ?>

                <?php } ?>
                <?php } ?>
                <?php } ?>
                <?php } else { ?>
                <p><?php echo $text_empty; ?></p>
                <div class="buttons clearfix">
                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                </div>
                <?php } ?>
                <?php echo $content_bottom; ?>
                <?php echo $column_right; ?>
            </div>
        </div>
    </div>
</section>
<?php echo $footer; ?>