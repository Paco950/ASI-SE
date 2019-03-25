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
            <!-- left column -->
            <div class="col-md-12">
            <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Nuevo almacén de materias primas</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" method="POST" action="../adm/agregar_nuevo_almacen_mp.php">
                        <div class="box-body">
                            <div class="form-row">
                                <div class="input-icon-group col-md-3 mb-3">
                                    <label>Código</label>
                                    <div class="input-icon-append">
                                        <input type="text" name="codigo-almacen-mp" class="form-control" required placeholder="A1-Playeras">
                                    </div>
                                </div>

                                <div class="input-icon-group col-md-3 mb-3">
                                    <label>Cantidad</label>
                                    <div class="input-icon-append">
                                        <input type="text" name="cantidad-amp" class="form-control" placeholder="100" required>
                                    </div>
                                </div>

                                <div class="input-icon-group col-md-3 mb-3">
                                    <label>Materia prima</label>
                                    <div class="input-icon-append">
                                        <select name="mp" id="" class="form-control">
                                        <option value="0">Seleccionar</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="input-icon-group col-md-3 mb-3">
                                    <label>Precio bruto</label>
                                    <div class="input-icon-append">
                                        <input type="number" name="precio-bruto" class="form-control" placeholder="$ 100.00" step="any" required>
                                    </div>
                                </div>
                                
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            
                            <div class="form-row">
                                 <div class="input-icon-group col-md-6">
                                    <label>Descripción</label>
                                    <div class="input-icon-append">
                                        <textarea name="descripcion" class="form-control" required placeholder="Descripción ..."></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end form body -->
                        <div class="form-row">
                          <div class="box-footer"> 
                            <div class="input-icon-group col-md-3 mb-3">
                              <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                          </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.box -->
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