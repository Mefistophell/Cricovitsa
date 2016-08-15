<div id="search" class="input-group">
    <button type="button" class="button-search"><i class="fa fa-search"></i></button>
    <input type="text" class="search" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" />
</div>
<select class="search-category">
    <option <?php echo $selected_art; ?> value="0">Art</option>
    <option <?php echo $selected_artist; ?> value="1">Artist</option>
</select>