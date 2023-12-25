<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            แผงควบคุม
            <small>NFC Engineering Stock</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> หน้าหลัก</a></li>
            <li class="active">แผงควบคุม</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->


        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3><?php echo $total_products ?></h3>

                        <p>อะไหล่</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="<?php echo base_url('products/') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3><?php echo $total_paid_orders ?></h3>

                        <p>รายการเบิก</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="<?php echo base_url('orders/') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <?php if ($is_admin == true) : ?>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3><?php echo $total_users; ?></h3>

                            <p>ผู้ใช้งาน</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-android-people"></i>
                        </div>
                        <a href="<?php echo base_url('users/') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3><?php echo $total_stores ?></h3>

                            <p>คลัง</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-android-home"></i>
                        </div>
                        <a href="<?php echo base_url('stores/') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <?php endif; ?>
                <!-- ./col -->
        </div>
        <!-- /.row -->

    <div class="row">
        <div class="col-md-12 mt-3">
            <p><b>Changelog V1.0.3 build 20231220</b></p>
            <!-- <p>- Update ผู้เบิก ดึงชื่อจากผู้ใช้ที่ Login (ชื่อ สกุล)</p> -->
            <p>- Update Dashboard กำหนดให้ ผู้ใช้งานแสดง อะไหล่ และ รายการเบิก</p>
            <p>- Update Login ใช้ Username แทน email ในการ Login</p>
        </div>

        <div class="col-md-12">
            <p><b>Changelog V1.0.2 build 20231017</b></p>
            <p>- Update ผู้เบิก พิมพ์ชื่อได้เลย จากเดิมต้องเลือกจากฐานข้อมูล</p>
            <p>- Update วันที่เบิก สามารถเลือกจากปฏิทินได้เลย จากเดิมใช้วันที่ปัจจุบัน</p>
            <p>- Update ในหน้าตารางเบิก และ Create/Update ปรับการแสดงผลในรูปแบบ วัน/เดือน/ปี (ค.ศ.)</p>
        </div>

        <div class="col-md-12">
            <p><b>Changelog V1.0.1</b></p>
            <p>- New หน่วย (add unit in database products table)</p>
            <p>- New table-responsive</p>
            <p>- New กำหนด Minimum ของแต่ละ product (ปัจจุบันค่ารวม ต่ำกว่า 5) (add minimun in database products table)</p>
            <p>- New Menubar เบิกอะไหล่, จัดการอะไหล่</p>
            <p>- Update หน้าตา panel-primary</p>
            <p>- Update ตำแหน่งปุ่ม ย้อนกลับ</p>
            <p>- Update ย่อเมนูซ้ายมือ (sidebar-collapse)</p>
        </div>

        <div class="col-md-12">
            <p><b>Changelog V1.0.0</b></p>
            <p>- New ค้นหาจาก รหัส barcode (รองรับ Application สแกน Barcode)</p>
            <p>- Update ผู้เบิก ดึงรายชื่อจาก ตาราง user (firstname.lastname) (dropdownList)</p>
            <p>- Update ประเภทการเบิก เลือก งานซ่อม/โครงการ (dropdownList)</p>
            <p>- Update วัตถุประสงค์ (text) / เพิ่มฐานข้อมูลด้วย</p>
            <p>- Update สถานะ รอตรวจสอบ/อนุมัติ (dropdownList)</p>
        </div>
    </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
    $(document).ready(function() {
        $("#dashboardMainMenu").addClass('active');
    });
</script>