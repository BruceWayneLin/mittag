<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><div onclick="toOpenDialog()" class="lineLogo" data-toggle="modal" data-target="#myModal"></div></li>
        <li><a class="instaLogo" target="_blank" href="https://www.instagram.com/mittagnatureme/"></a></li>
        <li><a class="fbLogo" target="_blank" href="https://www.facebook.com/mittagNatureME/"></a></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md" style="display:none;"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li class="hidden"><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li class="hidden"><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li class="hidden"><a href="<?php echo $register; ?>"></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_register; ?>/<?php echo $text_login; ?></a></li>　
            <?php } ?>
          </ul>
        </li>
        <li class="hidden"><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md" style="display:none;"><?php echo $text_shopping_cart; ?></span></a></li>
        <li class="hidden"><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
  <div class="container">
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h2 class="modal-title text-center">QRCODE加入我們的mittag粉絲群</h2>
          </div>
          <div class="modal-body">
            <div id="qr"></div>
          </div>
          <div class="modal-footer">
            <button style="display:block; margin:0 auto;" type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
<style>
  .lineLogo {
    cursor:pointer;
    background:url('./css/img/line.png') no-repeat center;
    width: 20px;
    height: 20px;
    background-size: contain;
    display: inline-block;
    position: relative;
    top: 5px;
  }
  #qr {
    background:url('./css/img/lineQR.jpg') no-repeat center;
    width: 100%;
    height: 100%;
    max-height: 300px;
    max-width: 220px;
    background-size: contain;
    display: block;
    margin-left: 5px;
    margin-right: 5px;
    position: relative;
    top: 5px;
    margin: 0 auto;
  }
  .instaLogo {
    cursor:pointer;
    background:url('./css/img/insta.png') no-repeat center;
    width: 20px;
    height: 20px;
    background-size: contain;
    display: inline-block;
    position: relative;
    top: 5px;
  }
  .fbLogo {
    cursor:pointer;
    background:url('./css/img/facebook.png') no-repeat center;
    width: 20px;
    height: 20px;
    background-size: contain;
    display: inline-block;
    position: relative;
    top: 5px;
  }
</style>