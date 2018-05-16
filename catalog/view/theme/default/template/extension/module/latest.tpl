
<h3><?php echo $heading_title; ?></h3>
<div id="box" class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img style="width:100%!important;" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h2 style="font-size:22px;"><a href="<?php echo $product['href']; ?>"><?php echo $product['eng_name']; ?></a></h2>
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        </h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['activity_title']) { ?>
        <span class="price-new"> </span>
        <?php  } ?>
        <?php if ($product['price'] && !$product['activity_title']) { ?>
        <p class="price">
          <?php if (!$product['special'] && !$product['activity_title']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
          <?php if (!$product['activity_title']) { ?>
          <span style="display:inline-block;cursor:pointer" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md hidden"><?php echo $button_cart; ?></span></span>
          <?php  } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group text-center hidden">
        <button type="button" style="width:100%;" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button class="hidden" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button class="hidden" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript">
<<<<<<< HEAD
    
=======
    $(function(){

        setTimeout(function(){
            $('#box').waterfall(
            );
            var array = $('.caption');
            array.each(function(item){
                console.log($(this).height());
                console.log(Math.floor((Math.random() * 80 ) + 280));
                $(this).height(Math.floor((Math.random() * (440-240 + 1) ) + 210));
            })
        }, 300);
    })
>>>>>>> 8ca06c2da264531c9a0397a4c5479b8adf3c5190
</script>