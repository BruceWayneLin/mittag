<?php
$developing = true;
if (isset($_GET['subject'])) {
    $token = $_GET['subject'];
    if($token === 'mittagletmein'){
      $developing = false;
    }
} else {
}
?>

<?php if ($developing) { ?>
    <link rel="stylesheet" type="text/css" href="./css/construct.css">
    <link rel="stylesheet" type="text/css" href="./catalog/view/javascript/bootstrap/css/bootstrap.css">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <div id="constructContain" class="container-fluid">
            <form name="form" action="" method="get">
              <div class="constructInputDiv">
              <div class="container">
                  <div class="col-lg-3"></div>
                  <div class="col-lg-5 text-center">
                      <input type="text" name="subject" id="subject" class="form-control input-lg" value="" placeholder="請輸入密碼">
                  </div>
                  <div class="col-lg-4"></div>
              </div>   
              </div>
            </form>
            <div id="bakgroundConstruct"></div>
    </div>
<?php } else if (!$developing) { ?>
    <?php echo $header; ?>
    <div class="container">
      <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
          <?php echo $content_top; ?>
          <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?></div>
    </div>
    <?php echo $footer; ?>
<?php } ?>
