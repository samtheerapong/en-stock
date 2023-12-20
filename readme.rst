######################
Changelog V1.0.3 build 20231220
######################
- Update ผู้เบิก ดึงชื่อจากผู้ใช้ที่ Login (ชื่อ สกุล)
- Update Dashboard กำหนดให้ ผู้ใช้งานแสดง อะไหล่ และ รายการเบิก
- Update Login ใช้ Username แทน email ในการ Login


######################
Changelog V1.0.2 build 20231017
######################
- Update ผู้เบิก พิมพ์ชื่อได้เลย จากเดิมต้องเลือกจากฐานข้อมูล
- Update วันที่เบิก สามารถเลือกจากปฏิทินได้เลย จากเดิมใช้วันที่ปัจจุบัน
- Update ในหน้าตารางเบิก และ Create/Update ปรับการแสดงผลในรูปแบบ วัน/เดือน/ปี (ค.ศ.)


######################
Changelog V1.0.2
######################
- New หน่วย (add unit in database products table)
- New table-responsive
- New กำหนด Minimum ของแต่ละ product (ปัจจุบันค่ารวม ต่ำกว่า 5) (add minimun in database products table)
- New Menubar เบิกอะไหล่, จัดการอะไหล่
- Update หน้าตา panel-primary
- Update ตำแหน่งปุ่ม ย้อนกลับ
- Update ย่อเมนูซ้ายมือ (sidebar-collapse)


######################
Changelog V1.0.1
######################
- New ค้นหาจาก รหัส barcode (รองรับ Application สแกน Barcode)
- Update ผู้เบิก ดึงรายชื่อจาก ตาราง user (firstname.lastname) (dropdownList)
- Update ประเภทการเบิก เลือก งานซ่อม/โครงการ (dropdownList)
- Update วัตถุประสงค์ (text) / เพิ่มฐานข้อมูลด้วย
- Update สถานะ รอตรวจสอบ/อนุมัติ (dropdownList)


######################
Changelog V1.0.0
######################
- Bug fixed ติดตั้งระบบ


######################
Demo Version 
######################
#ENV
php = Version 7.4
Mysql = Version 5
แนะนำใช้ laragon (LAMP)