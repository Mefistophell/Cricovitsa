<!-- comment 1 -->
<?php if ($reviews) { ?>
    <?php foreach ($reviews as $review) { ?>
        <?php static $i = 0; ?>
        <div class="col-md-12 comment" <?php if ($i > 2) { echo 'style="display: none;"'; } ?>>
            <div class="col-md-2 col-xs-1 col-sm-2">
                <img src="img/man1.jpg" alt="">
            </div>
            <div class="col-md-10 col-xs-10">
                <h3><?php echo $review['customer']['firstname']; ?> <?php echo $review['customer']['lastname']; ?></h3>
                <p><?php echo $review['text']; ?></p>
                <span><?php echo $review['date_added']; ?></span>
            </div>
        </div>
        <div class="text-right"><?php echo $pagination; ?></div>
    <?php $i++; } ?>
<?php } else { ?>
    <p><?php echo $text_no_reviews; ?></p>
<?php } ?>