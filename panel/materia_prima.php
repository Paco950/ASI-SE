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
        <li class="active">Materias Primas</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->
        <!-- fa-plus-square -->
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Materias Primas</h3>
                        <br>
                        <br>
                        <a href="./nueva_materia_prima.php" type="button" class="btn btn-primary"><i class="fa fa-plus-square"> Nuevo</i></a>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Color</th>
                                <th>Tipo de tela</th>
                                <th>Cantidad</th>
                                <th>Tipo de cantidad</th>
                                <th>Imagen</th>
                                <th>Proveedor</th>
                                <th>Eliminar</th>
                                <th>Actualizar</th>
                            </thead>
                            <tbody>
                                <?php 
                                  $count = 0;
                                  $query = "SELECT *FROM materia_prima;";
                                  $query_result = mysqli_query($conexion, $query);
                                  while (($row = mysqli_fetch_array($query_result)) != NULL) {
                                    echo '<tr>';
                                    echo '<td>'.++$count.'</td>';
                                    echo '<td>'.$row['nombre_mp'].'</td>';
                                    echo '<td>'.$row['color'].'</td>';
                                    if ($row['tipo_tela'] == 0) {
                                      echo '<td>Ninguna</td>';
                                    }//end of if
                                    else if($row['tipo_tela'] == 1) {
                                      echo '<td>Mezclilla</td>';
                                    }//end of else
                                    elseif($row['tipo_tela'] == 2) {
                                      echo '<td>Licra</td>';
                                    }//end of else
                                    else if($row['tipo_tela'] == 3) {
                                      echo '<td>Chifón</td>';
                                    }//end of else
                                    echo '<td>'.$row['cantidad'].'</td>';
                                    if($row['tipo_cantidad'] == 1) {
                                      echo '<td>Metros</td>';
                                    }//end of if
                                    else {
                                      echo '<td>Kilos</td>';
                                    }//end of else
                                    echo '<td><img src="../dist/img/productos/'.$row['imagen'].'" width="40% height="40%"></td>';
                                    echo '<td></td>';
                                    echo '<td align="center"><a type="button" onclick="eliminarMP('.$row['id_mp'].')" class="btn btn-primary"><i class="fa fa-trash"> </i></a></td>';
                                    echo '<td align="center"><a type="button" class="btn btn-warning"><i class="fa fa-edit"> </i></a></td>';
                                    echo '</tr>';
                                  }
                                ?>
                                
                            </tbody>
                            
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <!-- /.box -->
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
<!-- DataTables -->
<script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script>
  $(function () {
    $('#example1').DataTable()({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>
<?php mysqli_close($conexion);?>
<script type="text/javascript">
  const eliminarMP = (id_mp) => {
    let confirmar = confirm("¿Deseas eliminar este registro?");
    if(confirmar) {
      window.location = "../adm/eliminar_mp.php?valor="+id_mp;
    }//end of if
  };
</script>