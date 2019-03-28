<?php
	include "./head.php";
	include "./header.php";
	include "./aside.php";
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Almacén/Inventario
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="">Almacén/Inventario</li>
        <li class="active">Nuevo almacén de materias primas</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->
        <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Responsive Hover Table</h3>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
               
                  <th>Producto</th>
                  <th>Talla</th>
                  <th>Tela</th>
                  <th>Color</th>
                  <th>Piezas</th>
                 
                </tr>
                <tr>
                
                  <td>Playera</td> 
                  <td>  <div class="form-group">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Chica
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Mediana
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox" >
                      Grande
                    </label>
                  </div>
                </div></td>
                  <td>   <div class="form-group">
                  <label>Selecciona el tipo de tela</label>
                  <select class="form-control">
                    <option>Chifon</option>
                    <option>Licra</option>
                    <option>Algodon</option>
                    <option>Licra/Felpada</option>
                  
                  </select>
                </div></td>
                  <td>
                    <div class="form-group">
                    <label>Select Multiple</label>
                    <select multiple class="form-control">
                    <option>Azul</option>
                    <option>Rojo</option>
                    <option>Amarillo</option>
                    <option>Blanco</option>
                    <option>Naranja</option>
                    <option>Rosa</option>
                    <option>Cafe</option>
                    <option>Negro</option>
                  </select>
                </div></td>
                </tr>
                <tr>
                
                  <td>Sudadera</td>
                  <td><div class="form-group">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Chica
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Mediana
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox" >
                      Grande
                    </label>
                  </div>
                </div></td>
                  <td> <div class="form-group">
                  <label>Select</label>
                  <select class="form-control">
                    <option>Chifon</option>
                    <option>Licra</option>
                    <option>Algodon</option>
                    <option>Licra/Felpada</option>
                  
                  </select>
                </div></td>
                  <td></td>
                </tr>
                <tr>
                  
                  <td>Pants</td>
                  <td><div class="form-group">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Chica
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Mediana
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox" >
                      Grande
                    </label>
                  </div>
                </div></td>
                  <td> <div class="form-group">
                  <label>Select</label>
                  <select class="form-control">
                    <option>Chifon</option>
                    <option>Licra</option>
                    <option>Algodon</option>
                    <option>Licra/Felpada</option>
                  
                  </select>
                </div></td>
                  <td></td>
                </tr>
                <tr>
                 
                  <td>Chamarra</td>
                  <td><div class="form-group">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Chica
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Mediana
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input type="checkbox" >
                      Grande
                    </label>
                  </div>
                </div></td>
                  <td> <div class="form-group">
                  <label>Select</label>
                  <select class="form-control">
                    <option>Chifon</option>
                    <option>Licra</option>
                    <option>Algodon</option>
                    <option>Licra/Felpada</option>
                  
                  </select>
                </div></td>
                  <td></td>
                </tr>
              </table>
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

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>

<!-- administracion de la producción -->
<!-- contabilidad industrial -->