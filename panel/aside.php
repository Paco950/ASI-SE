<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $_SESSION['nombre'] ?></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <!-- <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form> -->
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Principal</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="./dashboard.php"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-file-text-o"></i> <span>Almacen/Inventario</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="./materia_prima.php">Materias primas</a></li>
            <li><a href="./almacen_mp.php">Almacén de materias primas</a></li>
            <li><a href="./almacen_pt.php">Almacén de productos terminados</a></li>
          </ul>
        </li>
		
		<li class="treeview">
          <a href="#"><i class="fa fa-file-text-o"></i> <span>Contabilidad/Finanzas</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="./finanzas.php">Finanzas</a></li>
            <li><a href="./contabilidad.php">Contabilidad</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#"><i class="fa fa-file-text-o"></i> <span>Produccion</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="./produccion1.php">Iniciar-Produccion</a></li>
           
          </ul>
        </li>
		
		
		<li class="treeview">
          <a href="#"><i class="fa fa-file-text-o"></i> <span>Punto de venta</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="./finanzas.php">Hacer venta</a></li>
            <li><a href="./contabilidad.php">Historial de ventas</a></li>
			<li><a href="./contabilidad.php">Reportes</a></li>
          </ul>
        </li>
		
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  