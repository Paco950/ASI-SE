<?php
include './conexion.php';
    $nombre_mp = $_POST['nombre-mp'];
    $color_mp = $_POST['color-mp'];
    $tipo_tela = $_POST['tipo-tela'];
    $cantidad = $_POST['cantidad'];
    $tipo_cantidad = $_POST['tipo-cantidad'];
    $proveedor = $_POST['proveedor'];
    $nombre_img = $_FILES['img_mp']['name'];
    //indicamos los formatos que permitimos subir a nuestro servidor
    if (($_FILES["img_mp"]["type"] == "image/jpeg") || ($_FILES["img_mp"]["type"] == "image/jpg") || ($_FILES["img_mp"]["type"] == "image/png")) {
        if (($nombre_img != NULL) && ($_FILES['img_mp']['size'] <= 200000)) {
            $nombrer = strtolower($nombre_img);
            $cd=$_FILES['img_mp']['tmp_name'];
            $ruta = "../dist/img/productos/" . $_FILES['img_mp']['name'];
            $destino = "../dist/img/productos/".$nombrer;
            $resultado = @move_uploaded_file($_FILES["img_mp"]["tmp_name"], $ruta);
        }//end of if
    }//end of if

    $query = "INSERT INTO materia_prima VALUES(null,'$nombre_mp', '$color_mp', '$tipo_tela',  '$cantidad', '$tipo_cantidad', '$nombrer');";
    // echo $query;
    $query_result = mysqli_query($conexion, $query);
    if ($query_result) {
        echo '
            <script type="text/javascript">
                window.location = "../panel/nueva_materia_prima.php";
            </script>
        ';
    }else {
        echo "Error: " . $query . "<br>" . mysqli_error($conexion);
    }

    mysqli_close($conexion);

    // if (!empty($resultado)){
    
    //     @mysqli_query($conexion,"INSERT INTO fotos VALUES ('". $nombre."','" . $destino . "')"); 
    //     echo "el archivo ha sido movido exitosamente";

    // }
    // else{
    //     echo "Error al subir el archivo";
    // }



    // $nombre_img = $_FILES['img_mp']['name'];
    // $tipo = $_FILES['img_mp']['type'];
    // $tamano = $_FILES['img_mp']['size'];

    // //Si existe imagen y tiene un tamaño correcto
    // if (($nombre_img == !NULL) && ($_FILES['img_mp']['size'] <= 200000)) {
    //     //indicamos los formatos que permitimos subir a nuestro servidor
    //     if (($_FILES["img_mp"]["type"] == "image/gif")
    //     || ($_FILES["img_mp"]["type"] == "image/jpeg")
    //     || ($_FILES["img_mp"]["type"] == "image/jpg")
    //     || ($_FILES["img_mp"]["type"] == "image/png")) {
    //         // Ruta donde se guardarán las imágenes que subamos
    //         $directorio = $_SERVER['DOCUMENT_ROOT'].'../dist/img/productos/';
    //         // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
    //         move_uploaded_file($_FILES['img_mp']['tmp_name'],$directorio.$nombre_img);
    //     } 
    //     else {
    //     //si no cumple con el formato
    //     echo "No se puede subir una imagen con ese formato ";
    //     }
    // } 
    // else {
    // //si existe la variable pero se pasa del tamaño permitido
    // if($nombre_img == !NULL) echo "La imagen es demasiado grande "; 
    // }
?>