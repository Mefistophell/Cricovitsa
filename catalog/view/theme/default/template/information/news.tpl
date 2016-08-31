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
	  <?php if ($image) { ?>
	  <div class="left">
	  <img src="<?php echo $image; ?>" alt="<?php echo $heading_title; ?>" />
	  </div>
	  <?php } ?>
          <h1><?php echo $heading_title; ?></h1>
	  <p><?php echo $description; ?></p>
	  <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 