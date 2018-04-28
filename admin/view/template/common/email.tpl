<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
   <h1><?php echo $heading_title; ?></h1>
   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      <div class="form-group">
         <label for="subject">信件主題:</label>
         <input type="text" name="subject"  maxlength="80" size="120">
      </div>
      <div class="form-group">
         <label for="message">內容:</label>
         <textarea name="message" id="message" cols="120" rows="10"></textarea>
      </div>
      <div class="text-left">
         <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i> </button>
         <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
   </form>
</div>
<?php echo $footer; ?>