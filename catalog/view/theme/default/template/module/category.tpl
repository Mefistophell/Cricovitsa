<div class="lol marg25-2">
    <div class="width20 ">
        <select class="style2 styled s1-text1 blo" size="1" onchange="fcat($(this), 0)">
            <option value="0">- All -</option>
            <?php foreach ($categories_main as $category) { ?>
                <?php if($category['level'] == 0) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
    <div class="width20">
        <select class="style2 styled s1-text1 blo" size="1" onchange="fcat($(this), 1)">
            <option value="0">- All Subject -</option>
            <?php foreach ($categories as $category) { ?>
                <?php if($category['level'] == 1) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
    <div class="width20">
        <select class="style2 styled s1-text1 blo" size="1" onchange="fcat($(this), 2)">
            <option value="0">- All Medium -</option>
            <?php foreach ($categories as $category) { ?>
                <?php if($category['level'] == 2) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
    <div class="width20">
        <select class="style2 styled s1-text1 blo" size="1" onchange="fcat($(this), 3)">
            <option value="0">- All Style -</option>
            <?php foreach ($categories as $category) { ?>
                <?php if($category['level'] == 3) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
    <div class="width20">
        <select class="style2 styled s1-text1 blo" size="1" onchange="fcat($(this), 4)">
            <option value="0">- All -</option>
            <?php foreach ($categories_price as $category) { ?>
                <?php if($category['level'] == 4) { ?>
                    <option class="level_<?php echo $category['level']; ?>" value="<?php echo $category['category_id']; ?>" data-href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
</div>

<script>
    function fcat(t, l) {
        var path = t.children('option:selected').val();
        var current = window.location.href;

        var filter = getUrlVars(current)["filter"];
        
        if (filter) {
            cfilter = "&filter=" + filter;
            current = current.replace(cfilter, '');
        } else {
            cfilter = '';
        }
        
        var cpath = getUrlVars(current)["path"];
        var cpath_array = cpath.split(/\s*_\s*/);

        if (l > 4) {
            if(path != 0) {
                document.location.href = current + "_" + path + cfilter;
            }
        }
        else {
            cpath_array[l] = path;

            var ix = 0;
            while (ix < 4) {
                if(cpath_array.slice(-1) == 0) {
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

            document.location.href = current + cpath_array + cfilter;
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
