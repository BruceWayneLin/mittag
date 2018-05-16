<footer>
  <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="col-lg-6">
               <div class="col-xs-6 text-center">
                   <?php if ($informations) { ?>
                   <a title="關於mittag" href="<?php echo $informations[0]['href']; ?>"><?php echo $informations[0]['title']; ?></a>
                   <?php } ?>
               </div>
                <div class="col-xs-6 text-center">
                    <?php if ($informations) { ?>
                    <a title="購買注意事項" href="<?php echo $informations[6]['href']; ?>"><?php echo $informations[6]['title']; ?></a>
                    <?php } ?>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="col-xs-6 text-center">
                    <?php if ($informations) { ?>
                    <a title="產品包裝" href="<?php echo $informations[5]['href']; ?>"><?php echo $informations[5]['title']; ?></a>
                    <?php } ?>

                </div>
                <div class="col-xs-6 text-center">
                     <a title="聯繫mittag" href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                </div>
              </div>
         </div>
         <div class="col-lg-12">
            <div class="col-lg-6">
                <div class="col-xs-6 text-center">
                    <a title="商品退換貨" href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
                    <a class="hidden" title="facebook" href="https://www.facebook.com/mittagNatureME/">facebook</a>
                </div>
                <div class="col-xs-6 text-center">
                    <?php if ($informations) { ?>
                    <a title="配送和售後服務說明" href="<?php echo $informations[4]['href']; ?>"><?php echo $informations[4]['title']; ?></a>
                    <?php } ?>
                </div>
            </div>
             <div class="col-lg-6">
                 <div class="col-xs-6 text-center">
                     <?php if ($informations) { ?>
                     <a title="快速解答" href="<?php echo $informations[2]['href']; ?>"><?php echo $informations[2]['title']; ?></a>
                     <?php } ?>

                 </div>
                <div class="col-xs-6 text-center">
                    <a title="會員中心" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                </div>
             </div>
         </div>
         <div class="col-lg-12">
            <div class="col-lg-6 text-center">
                <div class="col-xs-6">
                    <a class="hidden" title="商品退換貨" href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
                </div>
                <div class="col-xs-6">
                </div>
            </div>
            <div class="col-lg-6  text-center">
                <div class="col-xs-6">
                    <?php if ($informations) { ?>
                    <a title="尺寸對照圖" href="<?php echo $informations[1]['href']; ?>"><?php echo $informations[1]['title']; ?></a>
                    <?php } ?>
                </div>
                <div class="col-xs-6"></div>
            </div>
         </div>
      </div>
  </div>
  <div class="row">
      <div class="col-lg-12 text-center">
          <hr>
          <p ><?php echo $powered; ?></p>
      </div>
  </div>
</footer>

<style>
  footer .row .col-sm-6 .col-sm-6 {
    margin-top: 5px;
    margin-bottom: 5px;
  }
  footer {
    padding-bottom: 30px;
  }
</style>
