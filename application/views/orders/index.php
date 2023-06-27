<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      ระบบจัดการ
      <small>การเบิก</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> หน้าหลัก</a></li>
      <li class="active">การเบิก</li>
    </ol>
  </section>

  <!-- Main content -->
  <div class="container-fluid">

      <section class="content">

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

          <?php if (in_array('createOrder', $user_permission)) : ?>
            <a href="<?php echo base_url('orders/create') ?>" class="btn btn-success"><i class="fa fa-cube"></i> เบิกอะไหล่</a>
            <br /> <br />
          <?php endif; ?>
        </div>


        <div class="row">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">ตาราง การเบิก</h3>
            </div>
            <!-- /.panel-header -->
            <div class="panel-body">
              <div class="table-responsive">
                <table id="manageTable" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>เลขที่ใบเบิก</th>
                      <th>ชื่อผู้เบิก</th>
                      <th>ประเภท</th>
                      <!-- <th>วัตถุประสงค์</th> -->
                      <th>วันที่เบิก</th>
                      <th>รวมรายการเบิก</th>
                      <th>ราคารวม</th>
                      <th>สถานะ</th>
                      <?php if (in_array('updateOrder', $user_permission) || in_array('viewOrder', $user_permission) || in_array('deleteOrder', $user_permission)) : ?>
                        <th>จัดการ</th>
                      <?php endif; ?>
                    </tr>
                  </thead>

                </table>
              </div>
            </div>
          </div>
       
    </div>
    </section>
  </div>

</div>


<?php if (in_array('deleteOrder', $user_permission)) : ?>
  <!-- remove brand modal -->
  <div class="modal fade" tabindex="-1" role="dialog" id="removeModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">ลบ ใบเบิก</h4>
        </div>

        <form role="form" action="<?php echo base_url('orders/remove') ?>" method="post" id="removeForm">
          <div class="modal-body">
            <p>ต้องการลบข้อมูลหรือไม่?</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
            <button type="submit" class="btn btn-danger">ลบ</button>
          </div>
        </form>

      </div>
    </div>
  </div>
<?php endif; ?>

<script type="text/javascript">
  var manageTable;
  var base_url = "<?php echo base_url(); ?>";

  $(document).ready(function() {

    $("#mainOrdersNav").addClass('active');
    $("#manageOrdersNav").addClass('active');

    // initialize the datatable 
    manageTable = $('#manageTable').DataTable({
      'ajax': base_url + 'orders/fetchOrdersData',
      'order': []
    });

  });

  // remove functions 
  function removeFunc(id) {
    if (id) {
      $("#removeForm").on('submit', function() {

        var form = $(this);

        // remove the text-danger
        $(".text-danger").remove();

        $.ajax({
          url: form.attr('action'),
          type: form.attr('method'),
          data: {
            order_id: id
          },
          dataType: 'json',
          success: function(response) {

            manageTable.ajax.reload(null, false);

            if (response.success === true) {
              $("#messages").html('<div class="alert alert-success alert-dismissible" role="alert">' +
                '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
                '<strong> <span class="glyphicon glyphicon-ok-sign"></span> </strong>' + response.messages +
                '</div>');

              // hide the modal
              $("#removeModal").modal('hide');

            } else {

              $("#messages").html('<div class="alert alert-warning alert-dismissible" role="alert">' +
                '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
                '<strong> <span class="glyphicon glyphicon-exclamation-sign"></span> </strong>' + response.messages +
                '</div>');
            }
          }
        });

        return false;
      });
    }
  }
</script>