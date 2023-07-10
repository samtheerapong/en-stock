<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      ระบบจัดการ
      <small>อะไหล่</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> หน้าหลัก</a></li>
      <li class="active">อะไหล่</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="container-fluid">
      <div class="row">

        <div id="messages"></div>

        <?php if ($this->session->flashdata('success')) : ?>
          <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo $this->session->flashdata('success'); ?>
          </div>
        <?php elseif ($this->session->flashdata('error')) : ?>
          <div class="alert alert-error alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo $this->session->flashdata('error'); ?>
          </div>
        <?php endif; ?>

        <a href="<?php echo base_url('products/') ?>" class="btn btn-primary"> <i class="fa fa-mail-reply"></i> ย้อนกลับ</a>
        <br /><br />

        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">ปรับปรุง อะไหล่</h3>
          </div>
          <!-- /.panel-header -->
          <form role="form" action="<?php base_url('users/update') ?>" method="post" enctype="multipart/form-data">
            <div class="panel-body">

              <?php echo validation_errors(); ?>

              <div class="form-group">
                <label>รูปภาพ: </label>
                <img src="<?php echo base_url() . $product_data['image'] ?>" width="150" height="150" class="img-circle">
              </div>

              <div class="form-group">
                <label for="product_image">รูป</label>
                <div class="kv-avatar">
                  <div class="file-loading">
                    <input id="product_image" name="product_image" type="file">
                  </div>
                </div>
              </div>

              <div class="form-group">
                <label for="product_name">ชื่ออะไหล่</label>
                <input type="text" class="form-control" id="product_name" name="product_name" placeholder="Enter product name" value="<?php echo $product_data['name']; ?>" autocomplete="off" />
              </div>

              <div class="form-group">
                <label for="sku">รหัส</label>
                <input type="text" class="form-control" id="sku" name="sku" placeholder="Enter Code" value="<?php echo $product_data['sku']; ?>" autocomplete="off" />
              </div>

              <div class="form-group">
                <label for="price">ราคา</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="Enter price" value="<?php echo $product_data['price']; ?>" autocomplete="off" />
              </div>

              <div class="form-group">
                <label for="qty">จำนวน</label>
                <input type="text" class="form-control" id="qty" name="qty" placeholder="Enter Qty" value="<?php echo $product_data['qty']; ?>" autocomplete="off" />
              </div>

              <div class="form-group">
                <label for="qty">Minimum</label>
                <input type="text" class="form-control" id="minimum" name="minimum" placeholder="Enter Minimum" value="<?php echo $product_data['minimum']; ?>" autocomplete="off" />
              </div>

              <div class="form-group">
                <label for="qty">หน่วย</label>
                <input type="text" class="form-control" id="unit" name="unit" placeholder="Enter Unit" value="<?php echo $product_data['unit']; ?>" autocomplete="off" />
              </div>

              <div class="form-group">
                <label for="description">รายละเอียด</label>
                <textarea type="text" class="form-control" id="description" name="description" placeholder="Enter 
                  description" autocomplete="off">
                    <?php echo $product_data['description']; ?>
                  </textarea>
              </div>


              <?php $attribute_id = json_decode($product_data['attribute_value_id']); ?>
              <?php if ($attributes) : ?>
                <?php foreach ($attributes as $k => $v) : ?>
                  <div class="form-group">
                    <label for="groups"><?php echo $v['attribute_data']['name'] ?></label>
                    <select class="form-control select_group" id="attributes_value_id" name="attributes_value_id[]" multiple="multiple">
                      <?php foreach ($v['attribute_value'] as $k2 => $v2) : ?>
                        <option value="<?php echo $v2['id'] ?>" <?php if (in_array($v2['id'], $attribute_id)) {
                                                                  echo "selected";
                                                                } ?>><?php echo $v2['value'] ?></option>
                      <?php endforeach ?>
                    </select>
                  </div>
                <?php endforeach ?>
              <?php endif; ?>

              <div class="form-group">
                <label for="brands">ลักษณะ</label>
                <?php $brand_data = json_decode($product_data['brand_id']); ?>
                <select class="form-control select_group" id="brands" name="brands[]" multiple="multiple">
                  <?php foreach ($brands as $k => $v) : ?>
                    <option value="<?php echo $v['id'] ?>" <?php if (in_array($v['id'], $brand_data)) {
                                                              echo 'selected="selected"';
                                                            } ?>><?php echo $v['name'] ?></option>
                  <?php endforeach ?>
                </select>
              </div>

              <div class="form-group">
                <label for="category">ประเภท</label>
                <?php $category_data = json_decode($product_data['category_id']); ?>
                <select class="form-control select_group" id="category" name="category[]" multiple="multiple">
                  <?php foreach ($category as $k => $v) : ?>
                    <option value="<?php echo $v['id'] ?>" <?php if (in_array($v['id'], $category_data)) {
                                                              echo 'selected="selected"';
                                                            } ?>><?php echo $v['name'] ?></option>
                  <?php endforeach ?>
                </select>
              </div>

              <div class="form-group">
                <label for="store">คลังที่เก็บ</label>
                <select class="form-control" id="store" name="store">
                  <?php foreach ($stores as $k => $v) : ?>
                    <option value="<?php echo $v['id'] ?>" <?php if ($product_data['store_id'] == $v['id']) {
                                                              echo "selected='selected'";
                                                            } ?>><?php echo $v['name'] ?></option>
                  <?php endforeach ?>
                </select>
              </div>

              <div class="form-group">
                <label for="store">การใช้งาน</label>
                <select class="form-control" id="availability" name="availability">
                  <option value="1" <?php if ($product_data['availability'] == 1) {
                                      echo "selected='selected'";
                                    } ?>>ใช้งาน</option>
                  <option value="2" <?php if ($product_data['availability'] != 1) {
                                      echo "selected='selected'";
                                      
                                    } ?>>ไม่ใช้งาน</option>
                </select>
              </div>
            </div>

            <div class="panel-footer">
              <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> บันทึก</button>
              <!-- <a href="<?php echo base_url('users/') ?>" class="btn btn-warning"> <i class="fa fa-mail-reply"></i> ย้อนกลับ</a> -->
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>

<script type="text/javascript">
  $(document).ready(function() {
    $('.select_group').select2();

    $("#description").wysihtml5();

    $("#mainProductNav").addClass('active');
    $("#manageProductNav").addClass('active');

    var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
      'onclick="alert(\'Call your custom code here.\')">' +
      '<i class="glyphicon glyphicon-tag"></i>' +
      '</button>';
    $("#product_image").fileinput({
      overwriteInitial: true,
      maxFileSize: 10000,
      showClose: false,
      showCaption: false,
      browseLabel: '',
      removeLabel: '',
      browseIcon: '<i class="glyphicon glyphicon-folder-open"></i>',
      removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
      removeTitle: 'Cancel or reset changes',
      elErrorContainer: '#kv-avatar-errors-1',
      msgErrorClass: 'alert alert-block alert-danger',
      // defaultPreviewContent: '<img src="/uploads/default_avatar_male.jpg" alt="Your Avatar">',
      layoutTemplates: {
        main2: '{preview} ' + btnCust + ' {remove} {browse}'
      },
      allowedFileExtensions: ["jpg", "png", "gif"]
    });

  });
</script>