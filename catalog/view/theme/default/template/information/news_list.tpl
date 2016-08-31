<?php echo $header; ?>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <p class="s1-text1">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <a class="s1-link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
            </p>
        </div>
    </div>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <h1><?php echo $heading_title; ?></h1>
            <?php foreach ($all_news as $news) { ?>
            <div class="row">
                <div class="col-sm-2">
                    <img src="<?php echo $news['image']; ?>" />
                </div>
                <div class="col-sm-10">
                    <h3><?php echo $news['title']; ?></h3>
                    <p><?php echo $news['description']; ?></p>
                    <small><?php echo $news['date_added']; ?></small>
                    <div class=""><a href="<?php echo $news['view']; ?>"><?php echo $text_view; ?></a></div>
                </div>
            </div>
            <hr>
            <?php } ?>
            <div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 