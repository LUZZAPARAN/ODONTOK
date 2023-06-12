<!DOCTYPE html>
<html>

<head>
    <title>Manual de Usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <h1>Manual de Usuario</h1>

        <div class="accordion" id="manualAccordion">

            <!-- Sección 1 -->
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Sección 1: Introducción
                        </button>
                    </h2>
                </div>

                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#manualAccordion">
                    <div class="card-body">
                        <p style="color:black">Bienvenido al Manual de Usuario del Software de Gestión para el consultorio Odontológico OdontoK. Este manual ha sido diseñado para brindarte una guía detallada sobre cómo utilizar de manera eficiente y efectiva el software, el cual está especialmente creado para optimizar la gestión de registros de procedimientos y pacientes en su consultorio Odontológico.</p>
                        <p style="color:black">Este software te permitirá llevar un control de todos los aspectos relacionados con tu práctica odontológica. Desde el registro de pacientes y sus historias clínicas, hasta la administración de procedimientos, este software te brindará las herramientas necesarias para simplificar tus tareas diarias y mejorar la eficiencia de atención.
                            Este manual te proporcionará instrucciones paso a paso sobre cómo utilizar cada una de las funcionalidades disponibles en el software. Aprenderás cómo registrar nuevos pacientes, gestionar sus datos personales y de contacto y realizar un seguimiento completo de los procedimientos realizados. Además, te familiarizarás con las opciones de búsqueda y filtrado que te ayudarán a acceder rápidamente a la información relevante.</p>
                    </div>

                </div>
            </div>
            <!---------------------------- Sección 2 ----------------------------->
            
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h2 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Sección 2: Manejo Para El Registro Procedimientos
                        </button>
                    </h2>
                </div>

                <!--registro de procedimientos-->
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#manualAccordion">
                    <div class="card-body">
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion1" aria-expanded="false" aria-controls="subseccion1">
                                Registrar Procedimientos
                            </button>
                            <div id="subseccion1" class="collapse" aria-labelledby="headingTwo" data-parent="#collapseTwo">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/procedimiento1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">
                                        <br>
                                        <p style="color:black;  margin-top: 15px;">1. Dirijase a la opción de procedimientos en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8 ">
                                        <img src="img/procedimiento2.png" alt="Imagen de la sección 1" style="width: 550px; height: 200px;margin-top: 90px;">
                                        <p style="color: black; margin-top: 70px;">2. Luego en las opciones de la parte superior presione el botón "Agregar Procedimiento"
                                            y se le proporcionará un formulario el cual deberá llenar para el registro del procedimiento y seguido a esto guardar los datos.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/procedimiento4.png" alt="Imagen de la sección 1" style="width: 620px; height: 300px; margin-top: 30px;">
                                        <p style="color: black; margin-top: 30px; text-align: center;">3. Al terminar de diligenciar cada uno de los campos del formulario, proceda a presionar el botón "Guardar" y automáticamente este será guardado.</p>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!--busqueda de procedimientos-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion2" aria-expanded="false" aria-controls="subseccion2">
                                Busqueda De Procedimientos
                            </button>
                            <div id="subseccion2" class="collapse" aria-labelledby="headingTwo" data-parent="#collapseTwo">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/procedimiento1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de procedimientos en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/procedimiento3.png" alt="Imagen de la sección 1" style="width: 600px; height: 80px;margin-top: 200px;">

                                        <p style="color:black; margin-top: 80px;">2. Luego debe dirigirse a la parte superior de opciones y escribir
                                            el nombre del procedimiento en la casilla de texto que se le proporciona o si desea recurrir
                                            a una busqueda para saber si el procedimiento esta disponible, dirijase a la opcion de
                                            "seleccionar un estado" y elija una opción.</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--Actualizacion de procedimientos-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion3" aria-expanded="false" aria-controls="subseccion2">
                                Actualización De Procedimientos
                            </button>
                            <div id="subseccion3" class="collapse" aria-labelledby="headingTwo" data-parent="#collapseTwo">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/procedimiento1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de procedimientos en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/procedimiento5.png" alt="Imagen de la sección 1" style="width: 620px; height: 200px;margin-top: 120px;">

                                        <p style="color:black;margin-top: 40px;">2. Luego dirijase al procedimiento de la lista que desea actualizar y presione el boton verde en la columna de "Acciones" en la tabla
                                            "Listado de Procedimientos" y automáticamente le aparecerá el formulario para actualizar.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/procedimiento6.png" alt="Imagen de la sección 1" style="width: 620px; height: 300px; margin-top: 30px;">
                                        <p style="color: black; margin-top: 30px; text-align: center;">3. Al terminar de diligenciar cada uno de los campos del formulario, proceda a presionar el botón "Actualizar" y automáticamente este será actualizado.</p>
                                    </div>


                                </div>

                            </div>
                        </div>
                        <!--Eliminación de procedimientos-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion4" aria-expanded="false" aria-controls="subseccion2">
                                Eliminación De Procedimientos
                            </button>
                            <div id="subseccion4" class="collapse" aria-labelledby="headingTwo" data-parent="#collapseTwo">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/procedimiento1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de procedimientos en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/procedimiento7.png" alt="Imagen de la sección 1" style="width: 620px; height: 200px;margin-top: 120px;">

                                        <p style="color:black;margin-top: 40px;">2. Luego dirijase al procedimiento de la lista que desea eliminar y presione el boton rojo en la columna de "Acciones"
                                            de la tabla "Listado de Procedimientos" y automáticamente le aparecerá una ventana de confirmación para eliminar.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/procedimiento8.png" alt="Imagen de la sección 1" style="width: 540px; height: 300px; margin-top: 30px;">
                                        <p style="color: black; margin-top: 30px; text-align: center;">3. En la ventana presiona "OK" y el procedimiento será eliminado.</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ------------------------------------Sección 3----------------------------->
            
            <div class="card">
                <div class="card-header" id="headingTree">
                    <h2 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTree" aria-expanded="false" aria-controls="collapseTwo">
                            Sección 3: Manejo Para El Registro De Pacientes
                        </button>
                    </h2>
                </div>
                <!--registro de pacientes-->
                <div id="collapseTree" class="collapse" aria-labelledby="headingTree" data-parent="#manualAccordion">
                    <div class="card-body">
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion5" aria-expanded="false" aria-controls="subseccion1">
                                Registrar Pacientes
                            </button>
                            <div id="subseccion5" class="collapse" aria-labelledby="headingTree" data-parent="#collapseTree">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/paciente1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">
                                        <br>
                                        <p style="color:black;  margin-top: 15px;">1. Dirijase a la opción de pacientes en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8 ">
                                        <img src="img/paciente2.png" alt="Imagen de la sección 1" style="width: 550px; height: 120px;margin-top: 150px;">
                                        <p style="color: black; margin-top: 90px;">2. Luego en las opciones de la parte superior presione el botón "Registrar pacientes"
                                            y se le proporcionará un formulario el cual deberá llenar con los datos personales de cada paciente y seguido a esto guardar el registro.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/paciente3.png" alt="Imagen de la sección 1" style="width: 620px; height: 300px; margin-top: 30px;">
                                        <p style="color: black; margin-top: 30px; text-align: center;">3. Al terminar de diligenciar cada uno de los campos del formulario, proceda a presionar el botón "Guardar" y automáticamente el registro será guardado.</p>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!--busqueda de pacientes-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion6" aria-expanded="false" aria-controls="subseccion2">
                                Busqueda De Pacientes
                            </button>
                            <div id="subseccion6" class="collapse" aria-labelledby="headingTree" data-parent="#collapseTree">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/paciente1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de pacientes en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/paciente4.png" alt="Imagen de la sección 1" style="width: 540px; height: 95px;margin-top: 200px;">

                                        <p style="color:black; margin-top: 65px;">2. Luego debe dirigirse a la parte superior del menu de opciones y escribir
                                            el número de documento del paciente que desea buscar en la casilla de texto que se le proporciona.
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--Actualizacion de pacientes-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion7" aria-expanded="false" aria-controls="subseccion2">
                                Actualización De Pacientes
                            </button>
                            <div id="subseccion7" class="collapse" aria-labelledby="headingTree" data-parent="#collapseTree">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/paciente1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de pacientes en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/paciente5.png" alt="Imagen de la sección 1" style="width: 620px; height: 160px;margin-top: 150px;">

                                        <p style="color:black;margin-top: 52px;">2. Luego dirijase al paciente de la lista que desea actualizar y presione el boton verde en la columna de "Acciones" de
                                            la tabla "Listado de pacientes y automáticamente le aparecerá el formulario para actualizar.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/paciente6.png" alt="Imagen de la sección 1" style="width: 620px; height: 300px; margin-top: 30px;">
                                        <p style="color: black; margin-top: 30px; text-align: center;">3. Al terminar de diligenciar cada uno de los campos del formulario, proceda a presionar el botón "Actualizar" y automáticamente este será actualizado.</p>
                                    </div>


                                </div>

                            </div>
                        </div>
                        <!--Eliminación de pacientes-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion8" aria-expanded="false" aria-controls="subseccion2">
                                Eliminación De Pacientes
                            </button>
                            <div id="subseccion8" class="collapse" aria-labelledby="headingTree" data-parent="#collapseTree">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/paciente1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de pacientes en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/paciente7.png" alt="Imagen de la sección 1" style="width: 620px; height: 140px;margin-top: 160px;">

                                        <p style="color:black;margin-top: 60px;">2. Luego dirijase al paciente de la lista que desea eliminar y presione el boton rojo en la columna de "Acciones"
                                            de la tabla "Listado de pacientes" y automáticamente le aparecerá una ventana de confirmación para eliminar.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/paciente8.png" alt="Imagen de la sección 1" style="width: 540px; height: 300px; margin-top: 30px;">
                                        <p style="color: black; margin-top: 30px; text-align: center;">3. En la ventana presiona "OK" y el paciente será eliminado.</p>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sección 4-->
            <div class="card">
                <div class="card-header" id="headingFour">
                    <h2 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                            Sección 4: Volver al inicio y cerrar sesión
                        </button>
                    </h2>
                </div>

                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#manualAccordion">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-md-12 d-flex flex-column align-items-center">
                                <h5><p style="color:black">Volver al inicio</p></h5>
                                <img src="img/volverInicio.png" alt="Imagen de la sección 1" style="width: 340px; height: 80px; margin-top: 10px;">
                                <p style="color: black; margin-top: 30px; text-align: center;">En la superior del menu de opciones, elija la opcion de "inicio" y directamente te direccionará a la pagina principal.</p>
                            </div>
                            <div class="col-md-12 d-flex flex-column align-items-center">
                                <h5><p style="color:black;margin-top: 20px;">Cerrar Sesión</p></h5>
                                <img src="img/cerrarSesion.png" alt="Imagen de la sección 1" style="width: 300px; height: 100px; margin-top: 10px;">
                                <p style="color: black; margin-top: 30px; text-align: center;">Para cerrar sesión dirijase a la parte superior de opciones y elija el icono que se señaliza en la imagen que se le proporciono e inmediatamente saldrá del sistema.</p>
                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js