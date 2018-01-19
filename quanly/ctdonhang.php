<?php
  require('source/header.php');
  $id=$_GET['item'];

?>
<div class="row">
<div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Đơn hàng chờ  </h3>

          <!--     <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div> -->
            </div>
      <!--------------------------
        Nội dung trang
        -------------------------->
   
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody><tr>
                  <th>ID</th>
                  <th>Mã đơn hàng</th>
                  <th>Tên xe</th>
                  <th>Số lượng</th>
                </tr>
                <?php

                    
                    // TRUY VẤN LẤY DANH SÁCH TIN TỨC
                    // Có limit và start rồi thì truy vấn CSDL lấy danh sách tin tức
                    $resultdonhangmoi = mysqli_query($conn, "SELECT * FROM ct_dondatmoi WHERE madonhang= '$id'");

                                    if(mysqli_num_rows($resultdonhangmoi) > 0)
                                     {
                                      while($rowdondatmoi=mysqli_fetch_array($resultdonhangmoi))
                                     {
                                echo "                <tr>\n";
                                echo "                  <td>".$rowdondatmoi['id']."</td>\n";
                                echo "                  <td>".$rowdondatmoi['madonhang']."</td>\n";
                                echo "                  <td>".$rowdondatmoi['loaixe']."</td>\n";
                                echo "					<td>".$rowdondatmoi['soluong']."</td>\n";
                                echo "                  </tr>";
                              }
                                
                            }
                            // productid=$row[id]
                            
                ?>
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>       
     </div>
     
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php
  require('source/footer.php');
?>
 