<?php if ($modules) { ?>
<div class="container" style="height: 60%;">
    <div class="row">
        <div class="col-sm-3">
            <div class="sidebar-nav">
                <?php if ($categories) { ?>
                <div id="nav-wayne" class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button id="navbarbar" type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                                data-target=".sidebar-navbar-collapse"><i class="fa fa-bars"></i></button>

                    </div>
                    <div class="navbar-collapse collapse sidebar-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <?php foreach ($categories as $category) { ?>
                            <?php if ($category['children']) { ?>
                            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"
                                                    data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <div class="dropdown-inner">
                                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                        <ul class="list-unstyled">
                                            <?php foreach ($children as $child) { ?>
                                            <li class="list-group-item">
                                                <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                            </li>
                                            <?php } ?>
                                        </ul>
                                        <?php } ?>
                                        <div class="custom-div">
                                            <a href="<?php echo $category['href']; ?>"
                                               class="see-all"><?php echo $text_all; ?><?php echo $category['name']; ?></a>
                                        </div>
                                    </div>
                            </li>
                            <?php } else { ?>
                            <li>
                                <a class="custom" title="<?php echo $category['mouseover']; ?>"
                                   href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            </li>
                            <?php } ?>
                            <?php } ?>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="row">
                <div class="col-sm-12">
                    <?php echo $modules['0']; ?>
                </div>
            </div>
        </div>
        <div class="col-xs-12" style="min-height: 100vh;">
            <div>
                <?php
                  if(!isset($modules['1'])){
                  }else{
                    echo $modules['1'];
                  }
                ?>
            </div>
        </div>
    </div>
</div>
<?php } ?>
<style>
@media screen and (min-width: 767px) {
    #module1 {
        padding-right:0px;
    }
    #module2 {
        padding-left:0px;
    }
}
@media screen and (max-width: 767px) {
   .col-sm-9 .row {
           margin-bottom: 20px;
       }
}
footer {
    padding-bottom: 30px;
    bottom: 5px;
    width: 100%;
    font-weight: normal;
    margin-top: 5px;
}
body {
    font-family: 'Nunito', sans-serif;
}

#box {
    left: -8px;
}

.sidebar-nav .navbar li a {
    font-weight: normal;
    font-family: font-family: 'Nunito', sans-serif;
    font-size: 16px;
}
.product-layout {
  padding: 0px;
  padding-left: 5px;
  padding-right: 5px;
}
    .custom {
        white-space:nowrap!important;
    }
</style>
<!-- The jQuery library version >= 1.8 -->
<script src="catalog/view/theme/default/template/product/productjs/prodjs2.js"></script>
<!-- The core Waterfall library -->
<script src="catalog/view/theme/default/template/product/productjs/prodjs3.js"></script>
<script>
    $(function(){
        // $('#box').waterfall();
    })
</script>

