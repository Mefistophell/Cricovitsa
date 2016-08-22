<div class="row marg25-2">
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s-search">

        </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s-search">
            <h4 class="s-search-text1 text-center">Orientation</h4>
            <div class="row marg25-2">
                <div class="col-sm-12 text-center">
                    <?php foreach ($filter_groups as $filter_group) { ?>
                      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
                        <?php foreach ($filter_group['filter'] as $filter) { ?>
                        <div class="checkbox">
                          <label>
                            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
                            <?php echo $filter['name']; ?>
                            <?php } else { ?>
                            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
                            <?php echo $filter['name']; ?>
                            <?php } ?>
                          </label>
                        </div>
                        <?php } ?>
                      </div>
                   
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s-search">
            <h4 class="s-search-text1 text-center">Show only art for sale</h4>
                <div class="row marg25">
                    <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                        <select class="style2 styled s1-text1 blo" size="1">
                            <option>Show Originals</option>
                            <option>Figurative</option>
                            <option>Fine Art</option>
                            <option>Folk</option>                       
                            <option>Illustration</option>
                            <option>Imressionism</option>
                            <option>Munumalism</option>
                            <option>Modern</option>
                        </select>
                    </div>
                </div>
        </div>
    </div>
</div>

<div class="row marg25-2">
    <div class="text-center">
        <button type="button" id="button-filter" class="s4-textlink ownbtn btn">
            Search >
        </button>
    </div>
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
