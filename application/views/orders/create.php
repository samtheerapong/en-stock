<?php
$this->db->from('users'); //ดึงข้อมูลจากตาราง users
$query = $this->db->get();

$options = ''; // Variable to store the generated <option> elements?

foreach ($query->result() as $row) {
  $pickername = $row->firstname . " " . $row->lastname;

  // Skip the option with id=1
  if ($row->id == 1) {
    continue;
  }

  $options .= "<option value='" . $pickername . "'>" . $pickername . "</option>";
}

$user_firstname = $this->session->userdata('firstname');
$user_lastname = $this->session->userdata('lastname');

?>
<!-- <style>
  @media (max-width: auto) {

    #product_info_table th:nth-child(2),
    #product_info_table td:nth-child(2),
    #product_info_table th:nth-child(3),
    #product_info_table td:nth-child(3),
    #product_info_table th:nth-child(4),
    #product_info_table td:nth-child(4),
    #product_info_table th:nth-child(5),
    #product_info_table td:nth-child(5) {
      width: auto;
      min-width: 100px;
    }
  }
</style> -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      ระบบจัดการ
      <small>เบิกอะไหล่</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> หน้าหลัก</a></li>
      <li class="active">เบิกอะไหล่</li>
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


        <a href="<?php echo base_url('orders/') ?>" class="btn btn-primary"> <i class="fa fa-mail-reply"></i> ย้อนกลับ</a>
        <br /> <br />

        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">แบบฟอร์มการเบิกอะไหล่</h3>
          </div>
          <form role="form" action="<?php base_url('orders/create') ?>" method="post" class="form-horizontal">
            <div class="panel-body">
              <?php echo validation_errors(); ?>
              <div class="form-group">
                <label for="gross_amount" class="col-sm-12 control-label">วันที่: <?php echo date('Y-m-d') ?></label>
              </div>
              <div class="form-group">
                <label for="gross_amount" class="col-sm-12 control-label">เวลา: <?php echo date('H:i') ?> น.</label>
              </div>

              <div class="col-md-7 col-xs-12 pull pull-left">

                <div class="form-group">
                  <label for="gross_amount" class="col-sm-3 control-label" style="text-align:left;">ผู้เบิก</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" id="customer_name" name="customer_name" value="<?= $user_firstname . ' ' . $user_lastname; ?>">

                  </div>
                </div>

                <div class="form-group">
                  <label for="gross_amount" class="col-sm-3 control-label" style="text-align:left;">ประเภทการเบิก</label>
                  <div class="col-sm-7">
                    <select id="customer_address" name="customer_address" class="form-control" required>
                      <option value="งานซ่อม">งานซ่อม</option>
                      <option value="งานโครงการ">งานโครงการ</option>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="gross_amount" class="col-sm-3 control-label" style="text-align:left;">วัตถุประสงค์</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" id="customer_phone" name="customer_phone" placeholder="" autocomplete="off">
                  </div>
                </div>

                <div class="form-group">
                  <label for="gross_amount" class="col-sm-3 control-label" style="text-align:left;">วันที่เบิก</label>
                  <div class="col-sm-7">
                    <input type="date" class="form-control" id="date_time" name="date_time" placeholder="" autocomplete="off" required>
                  </div>
                </div>


              </div>

              <div class="col-md-12 col-xs-12">
                <div class="table-responsive">
                  <table class="table table-bordered table-wrap" id="product_info_table">
                    <thead>
                      <tr>
                        <th style="width:20px"><button type="button" id="add_row" class="btn btn-default"><i class="fa fa-plus"></i></button></th>
                        <th>รายการอะไหล่</th>
                        <th>จำนวน</th>
                        <th>ราคาต่อหน่วย</th>
                        <th>ราคารวม</th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr id="row_1">
                        <td><button type="button" class="btn btn-default" onclick="removeRow('1')"><i class="fa fa-close"></i></button></td>
                        <td>
                          <select class="form-control select_group product" data-row-id="row_1" id="product_1" name="product[]" style="width:100%;" onchange="getProductData(1)" required>
                            <option value=""></option>
                            <?php foreach ($products as $k => $v) : ?>
                              <option value="<?php echo $v['id'] ?>"><?php echo $v['sku'] . " " . $v['name'] . " (คงเหลือ " . $v['qty'] . " " . $v['unit'] . ")" ?></option>
                            <?php endforeach ?>
                          </select>
                        </td>
                        <td><input type="text" name="qty[]" id="qty_1" class="form-control text-right" required onkeyup="getTotal(1)"></td>
                        <!-- <td>
                          <input type="text" class="form-control" id="unit_1" name="unit[]" placeholder="" autocomplete="off" disabled />
                        </td> -->
                        <td>
                          <input type="text" name="rate[]" id="rate_1" class="form-control text-right" disabled autocomplete="off">
                          <input type="hidden" name="rate_value[]" id="rate_value_1" class="form-control" autocomplete="off">
                        </td>

                        <td>
                          <input type="text" name="amount[]" id="amount_1" class="form-control text-right" disabled autocomplete="off">
                          <input type="hidden" name="amount_value[]" id="amount_value_1" class="form-control" autocomplete="off">
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <div class="col-md-6 col-xs-12 pull pull-right">
                <div class="form-group">
                  <!-- <label for="gross_amount" class="col-sm-5 control-label">จำนวนเงินรวม</label> -->
                  <div class="col-sm-5">
                    <input type="hidden" class="form-control" id="gross_amount" name="gross_amount" disabled autocomplete="off">
                    <input type="hidden" class="form-control" id="gross_amount_value" name="gross_amount_value" autocomplete="off">
                  </div>
                </div>
                <?php if ($is_service_enabled == true) : ?>
                  <div class="form-group">
                    <label for="service_charge" class="col-sm-5 control-label">S-Charge <?php echo $company_data['service_charge_value'] ?> %</label>
                    <div class="col-sm-5">
                      <input type="text" class="form-control" id="service_charge" name="service_charge" disabled autocomplete="off">
                      <input type="hidden" class="form-control" id="service_charge_value" name="service_charge_value" autocomplete="off">
                    </div>
                  </div>
                <?php endif; ?>
                <?php if ($is_vat_enabled == true) : ?>
                  <div class="form-group">
                    <label for="vat_charge" class="col-sm-5 control-label">ภาษี <?php echo $company_data['vat_charge_value'] ?> %</label>
                    <div class="col-sm-5">
                      <input type="text" class="form-control" id="vat_charge" name="vat_charge" disabled autocomplete="off">
                      <input type="hidden" class="form-control" id="vat_charge_value" name="vat_charge_value" autocomplete="off">
                    </div>
                  </div>
                <?php endif; ?>
                <div class="form-group">
                  <!-- <label for="discount" class="col-sm-5 control-label">ส่วนลด</label> -->
                  <div class="col-sm-5">
                    <input type="hidden" class="form-control" id="discount" name="discount" placeholder="Discount" onkeyup="subAmount()" autocomplete="off">
                  </div>
                </div>

                <div class="form-group">
                  <label for="net_amount" class="col-sm-5 control-label">จำนวนเงินรวม สุทธิ</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="net_amount" name="net_amount" disabled autocomplete="off">
                    <input type="hidden" class="form-control" id="net_amount_value" name="net_amount_value" autocomplete="off">
                  </div>
                </div>

                <div class="form-group">
                  <label for="paid_status" class="col-sm-5 control-label">สถานะ</label>
                  <div class="col-sm-5">
                    <select type="text" class="form-control" id="paid_status" name="paid_status">
                      <!-- <option value="1">อนุมัติ</option> -->
                      <option value="2">รอตรวจสอบ</option>
                      <option value="1">อนุมัติ</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>

            <div class="panel-footer">
              <input type="hidden" name="service_charge_rate" value="<?php echo $company_data['service_charge_value'] ?>" autocomplete="off">
              <input type="hidden" name="vat_charge_rate" value="<?php echo $company_data['vat_charge_value'] ?>" autocomplete="off">
              <button type="submit" class="btn btn-success"> <i class="fa fa-save"></i> บันทึก</button>
              <!-- <a href="<?php echo base_url('orders/') ?>" class="btn btn-primary"> <i class="fa fa-mail-reply"></i> ย้อนกลับ</a> -->
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>

<script type="text/javascript">
  var base_url = "<?php echo base_url(); ?>";

  $(document).ready(function() {
    $(".select_group").select2();
    // $("#description").wysihtml5();

    $("#mainOrdersNav").addClass('active');
    $("#addOrderNav").addClass('active');

    var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
      'onclick="alert(\'Call your custom code here.\')">' +
      '<i class="glyphicon glyphicon-tag"></i>' +
      '</button>';

    // Add new row in the table 
    $("#add_row").unbind('click').bind('click', function() {
      var table = $("#product_info_table");
      var count_table_tbody_tr = $("#product_info_table tbody tr").length;
      var row_id = count_table_tbody_tr + 1;

      $.ajax({
        url: base_url + '/orders/getTableProductRow/',
        type: 'post',
        dataType: 'json',
        success: function(response) {

          // console.log(reponse.x);
          var html = '<tr id="row_' + row_id + '">' +
            '<td><button type="button" class="btn btn-default" onclick="removeRow(\'' + row_id + '\')"><i class="fa fa-close"></i></button></td>' +
            '<td>' +
            '<select class="form-control select_group product" data-row-id="' + row_id + '" id="product_' + row_id + '" name="product[]" style="width:100%;" onchange="getProductData(' + row_id + ')">' +
            '<option value=""></option>';
          $.each(response, function(index, value) {
            html += '<option value="' + value.id + '">' + value.sku + " " + value.name + " (คงเหลือ " + value.qty + " " + value.unit + ")" + '</option>';
          });

          html += '</select>' +
            '</td>' +
            '<td><input type="text" name="qty[]" id="qty_' + row_id + '" class="form-control text-right" onkeyup="getTotal(' + row_id + ')"></td>' +
            '<td><input type="text" name="rate[]" id="rate_' + row_id + '" class="form-control text-right" disabled><input type="hidden" name="rate_value[]" id="rate_value_' + row_id + '"></td>' +
            '<td><input type="text" name="amount[]" id="amount_' + row_id + '" class="form-control text-right" disabled><input type="hidden" name="amount_value[]" id="amount_value_' + row_id + '"></td>' +
            '</tr>';

          if (count_table_tbody_tr >= 1) {
            $("#product_info_table tbody tr:last").after(html);
          } else {
            $("#product_info_table tbody").html(html);
          }

          $(".product").select2();

        }
      });

      return false;
    });

  }); // /document

  function getTotal(row = null) {
    if (row) {
      var total = Number($("#rate_value_" + row).val()) * Number($("#qty_" + row).val());
      total = total.toFixed(2);
      $("#amount_" + row).val(total);
      $("#amount_value_" + row).val(total);

      subAmount();

    } else {
      alert('no row !! please refresh the page');
    }
  }

  // get the product information from the server
  function getProductData(row_id) {
    var product_id = $("#product_" + row_id).val();
    if (product_id == "") {
      $("#rate_" + row_id).val("");
      $("#rate_value_" + row_id).val("");

      $("#qty_" + row_id).val("");
      $("#unit_" + row_id).val("");

      $("#amount_" + row_id).val("");
      $("#amount_value_" + row_id).val("");

    } else {
      $.ajax({
        url: base_url + 'orders/getProductValueById',
        type: 'post',
        data: {
          product_id: product_id
        },
        dataType: 'json',
        success: function(response) {
          // setting the rate value into the rate input field

          $("#rate_" + row_id).val(response.price);
          $("#rate_value_" + row_id).val(response.price);

          $("#qty_" + row_id).val(1);

          $("#unit_" + row_id).val(response.unit);

          $("#qty_value_" + row_id).val(1);

          var total = Number(response.price) * 1;
          total = total.toFixed(2);
          $("#amount_" + row_id).val(total);
          $("#amount_value_" + row_id).val(total);

          subAmount();
        } // /success
      }); // /ajax function to fetch the product data 
    }
  }

  // calculate the total amount of the order
  function subAmount() {
    var service_charge = <?php echo ($company_data['service_charge_value'] > 0) ? $company_data['service_charge_value'] : 0; ?>;
    var vat_charge = <?php echo ($company_data['vat_charge_value'] > 0) ? $company_data['vat_charge_value'] : 0; ?>;

    var tableProductLength = $("#product_info_table tbody tr").length;
    var totalSubAmount = 0;
    for (x = 0; x < tableProductLength; x++) {
      var tr = $("#product_info_table tbody tr")[x];
      var count = $(tr).attr('id');
      count = count.substring(4);

      totalSubAmount = Number(totalSubAmount) + Number($("#amount_" + count).val());
    } // /for

    totalSubAmount = totalSubAmount.toFixed(2);

    // sub total
    $("#gross_amount").val(totalSubAmount);
    $("#gross_amount_value").val(totalSubAmount);

    // vat
    var vat = (Number($("#gross_amount").val()) / 100) * vat_charge;
    vat = vat.toFixed(2);
    $("#vat_charge").val(vat);
    $("#vat_charge_value").val(vat);

    // service
    var service = (Number($("#gross_amount").val()) / 100) * service_charge;
    service = service.toFixed(2);
    $("#service_charge").val(service);
    $("#service_charge_value").val(service);

    // total amount
    var totalAmount = (Number(totalSubAmount) + Number(vat) + Number(service));
    totalAmount = totalAmount.toFixed(2);
    // $("#net_amount").val(totalAmount);
    // $("#totalAmountValue").val(totalAmount);

    var discount = $("#discount").val();
    if (discount) {
      var grandTotal = Number(totalAmount) - Number(discount);
      grandTotal = grandTotal.toFixed(2);
      $("#net_amount").val(grandTotal);
      $("#net_amount_value").val(grandTotal);
    } else {
      $("#net_amount").val(totalAmount);
      $("#net_amount_value").val(totalAmount);

    } // /else discount 

  } // /sub total amount

  function removeRow(tr_id) {
    $("#product_info_table tbody tr#row_" + tr_id).remove();
    subAmount();
  }
</script>