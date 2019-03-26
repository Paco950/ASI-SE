<?php
include './conexion.php';
    echo $codigo_almacen = $_POST['codigo-almacen-mp'].'<br>';
    echo $cantidad = $_POST['cantidad-amp'].'<br>';
    echo $materia_prima = $_POST['mp'].'<br>';
    echo $precio_bruto = $_POST['precio-bruto'].'<br>';
    echo $descripcion = $_POST['descripcion'].'<br>';
    // Recibo los datos de la imagen
    // echo $_FILES['img_mp']['name'];
    // if(isset($_FILES['img_mp']['name'])) {
    //     echo "Si hay archivo";
    //  }
    // echo $nombre_img = $_FILES['img_mp']['name'];
    // $tipo = $_FILES['img-mp']['type'];
    // $tamano = $_FILES['img-mp']['size'];
    
    // //Si existe imagen y tiene un tamaño correcto
    // if (($nombre_img == !NULL) && ($_FILES['img-mp']['size'] <= 200000)) 
    // {
    // //indicamos los formatos que permitimos subir a nuestro servidor
    // if (($_FILES["img-mp"]["type"] == "image/gif")
    // || ($_FILES["img-mp"]["type"] == "image/jpeg")
    // || ($_FILES["img-mp"]["type"] == "image/jpg")
    // || ($_FILES["img-mp"]["type"] == "image/png"))

    // mezclilla
    // licra
    // chifon

    // metros
    // kilos
    // {
    //     // Ruta donde se guardarán las imágenes que subamos
    //     $directorio = $_SERVER['DOCUMENT_ROOT'].'../dist/img/productos/';
    //     // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
    //     move_uploaded_file($_FILES['img-mp']['tmp_name'],$directorio.$nombre_img);
    //     } 
    //     else 
    //     {
    //     //si no cumple con el formato
    //     echo "No se puede subir una img-mp con ese formato ";
    //     }
    // } 
    // else 
    // {
    // //si existe la variable pero se pasa del tamaño permitido
    // if($nombre_img == !NULL) echo "La img-mp es demasiado grande "; 
    // }
?>