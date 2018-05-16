<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
        <div class="col-sm-10">
            <input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
            <?php if (isset($error_name[$language['language_id']])) { ?>
            <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
            <?php } ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>">產品類別</span></label>
        <div class="col-sm-10">
            <input type="text" name="category" value="" placeholder="產品類別" id="input-category" class="form-control" />
            <div id="product-category" class="well well-sm" style="height: 150px; overflow: auto;">
                <?php foreach ($product_categories as $product_category) { ?>
                <div id="product-category<?php echo $product_category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_category['name']; ?>
                    <input type="hidden" name="product_category[]" value="<?php echo $product_category['category_id']; ?>" />
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
        <div class="col-sm-10">
            <textarea name="product_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control summernote"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea>
        </div>
    </div>
    <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
        <div class="col-sm-10">
            <input type="text" name="product_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
            <?php if (isset($error_meta_title[$language['language_id']])) { ?>
            <div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
            <?php } ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
        <div class="col-sm-10">
            <textarea name="product_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
        </div>
    </div>
</div>
<?php echo $footer; ?>