<?= $header ?>
<section>
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
    </div>
    <?= $content ?>
</section>
<?= $footer ?>
