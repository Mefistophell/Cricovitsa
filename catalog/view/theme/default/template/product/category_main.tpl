<?php echo $header; ?>
<!-- 1 -->
<section class="section1">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="padd21">
                    <p class="s1-text1">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <a class="s1-link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                    <?php } ?>
                    </p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="yellow-bord">
                    <h2 class="s1-text2">Printing for sale: Originals and prints
                    </h2>
                    <h4 class="s1-text3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.
                    </h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="padd21">
                    <h4 class="s1-text4">Subject</h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 height30">
                <select onchange="fcat($(this), 1)" class="style2 styled s1-text1 blo" size="1">
                    <option value="0">- All -</option>
                    <?php foreach ($categories as $category) { ?>
                    <?php if($category['level'] == 1) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>   
            </div>
            <div class="col-md-offset-3 col-md-6 col-sm-6 col-xs-12">
                <p class="s1-tag s1-text1">More popular: 
                    <?php foreach ($categories as $category) { ?>
                    <?php if($category['level'] == 1 && $category['popular'] == 1) { ?>
                    <a href="<?php echo $category['href_subject']; ?>" class="s1-link"><?php echo $category['name']; ?></a> | 
                    <?php } ?>
                    <?php } ?>
                </p>
            </div>
        </div>

        <div class="row">
            <?php foreach ($categories as $category) { 
            if($category['level'] == 1) { 
            static $lv1 = 0;
            if($lv1 > 3) break;
            ?>
            <div class="col-md-3 col-sm-6 col-xs-6">
                <img src="image/<?php echo $category['image']; ?>" alt="Impessionism" class="picture1" />
                <a href="<?php echo $category['href_subject']; ?>" class="s1-link"><h5><?php echo $category['name']; ?></h5></a>
            </div>
            <?php $lv1++; } ?>
            <?php } ?>
        </div>
    </div>
</section>
<!-- EOF 1 -->

<!-- 2 -->
<section class="section2">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="padd21">
                    <h4 class="s1-text4">Medium</h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 height30">
                <select onchange="fcat($(this), 2)" class="style2 styled s1-text1 blo" size="1">
                    <option value="0">- All -</option>
                    <?php foreach ($categories as $category) { ?>
                    <?php if($category['level'] == 2) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>   
            </div>
            <div class="col-md-offset-3 col-md-6 col-sm-6 col-xs-12">
                <p class="s1-tag s1-text1">More popular: 
                    <?php foreach ($categories as $category) { ?>
                    <?php if($category['level'] == 2 && $category['popular'] == 1) { ?>
                    <a href="<?php echo $category['href_medium']; ?>" class="s1-link"><?php echo $category['name']; ?></a> | 
                    <?php } ?>
                    <?php } ?>
                </p>
            </div>
        </div>

        <div class="row">
            <?php foreach ($categories as $category) { 
            if($category['level'] == 2) { 
            static $lv2 = 0;
            if($lv2 > 3) break;
            ?>
            <div class="col-md-3 col-sm-6 col-xs-6">
                <img src="image/<?php echo $category['image']; ?>" alt="Impessionism" class="picture1" />
                <a href="<?php echo $category['href_medium']; ?>" class="s1-link"><h5><?php echo $category['name']; ?></h5></a>
            </div>
            <?php $lv2++; } ?>
            <?php } ?>
        </div>
    </div>
</section>
<!-- EOF 2 -->

<!-- 3 -->
<section class="section3">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="padd21">
                    <h4 class="s1-text4">Style</h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 height30">
                <select onchange="fcat($(this), 3)" class="style2 styled s1-text1 blo" size="1">
                    <option value="0">- All -</option>
                    <?php foreach ($categories as $category) { ?>
                    <?php if($category['level'] == 3) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>   
            </div>
            <div class="col-md-offset-3 col-md-6 col-sm-6 col-xs-12">
                <p class="s1-tag s1-text1">More popular: 
                    <?php foreach ($categories as $category) { ?>
                    <?php if($category['level'] == 3 && $category['popular'] == 1) { ?>
                    <a href="<?php echo $category['href_style']; ?>" class="s1-link"><?php echo $category['name']; ?></a> | 
                    <?php } ?>
                    <?php } ?>
                </p>
            </div>
        </div>

        <div class="row">
            <?php foreach ($categories as $category) { 
            if($category['level'] == 3) { 
            static $lv3 = 0;
            if($lv3 > 3) break;
            ?>
            <div class="col-md-3 col-sm-6 col-xs-6">
                <img src="image/<?php echo $category['image']; ?>" alt="Impessionism" class="picture1" />
                <a href="<?php echo $category['href_style']; ?>" class="s1-link"><h5><?php echo $category['name']; ?></h5></a>
            </div>
            <?php $lv3++; } ?>
            <?php } ?>
        </div>
    </div>
</section>
<!-- EOF 3 -->

<!-- 4 -->
<?php echo $content_bottom; ?>
<!-- EOF 4 -->

<script>
    function fcat(t, l) {
        var path = t.children('option:selected').val();
        var current = window.location.href;

        if (getUrlVars(current)["main"]) {
            current = current.replace('&main=1', '');
        }

        var cpath = getUrlVars(current)["path"];
        var cpath_array = cpath.split(/\s*_\s*/);

        if (l > 4) {
            if (path != 0) {
                document.location.href = current + "_" + path;
            }
        }
        else {
            cpath_array[l] = path;

            var ix = 0;
            while (ix < 4) {
                if (cpath_array.slice(-1) == 0) {
                    cpath_array.pop();
                }
                ix++;
            }

            cpath_array = cpath_array.join('_');

            current = current.replace(cpath, '');

            //cpath_array = cpath_array.replace(new RegExp('__','g'),'_0_');
            //cpath_array = cpath_array.split('__').join('_0_');
            //cpath_array = cpath_array.replace(/\s*__\s*/, '_0_');
            cpath_array = cpath_array.replace(/\__/gi, "_0_");
            cpath_array = cpath_array.replace('__', '_0_');

            document.location.href = current + cpath_array;
        }

    }
    function getUrlVars(url) {
        var vars = {};
        var parts = url.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
            vars[key] = value;
        });
        return vars;
    }

    function select() {
        var current = window.location.href;

        var cpath = getUrlVars(current)["path"];
        var cpath_array = cpath.split(/\s*_\s*/);

        cpath_array.forEach(function (item, i, arr) {
            $('select option.level_' + i + '[value="' + item + '"]').attr({'selected':'selected'});
        });
    }
    select();
</script>
<?php echo $column_right; ?>
<?php echo $footer; ?>
