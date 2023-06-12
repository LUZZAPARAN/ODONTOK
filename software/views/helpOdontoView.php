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
                        <p style="color:black">Bienvenido al Manual de Usuario del Software de Gestión para el consultorio Odontológico OdontoK. Este sistema puede proporcionarte acceso rápido y fácil a la información relevante sobre los procedimientos dentales disponibles y los pacientes registrados en tu consultorio. A través de esta herramienta, podrás obtener datos actualizados y detallados para apoyar tus decisiones clínicas y mejorar la calidad de atención que brindas a tus pacientes.</p>
                        <p style="color:black">En este manual, encontrarás instrucciones paso a paso sobre cómo utilizar las funciones de búsqueda y filtrado para acceder a la información requerida de manera eficiente. Aprenderás a consultar la lista de procedimientos, revisar detalles como descripciones y estado en el que se encuentra el procedimiento. Además, te familiarizarás con la búsqueda de pacientes registrados, donde podrás acceder a sus datos personales.</p>
                    </div>

                </div>
            </div>
             <!---------------------------- Sección 2 ----------------------------->
            <!--registro de procedimientos-->
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h2 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Sección 2: Información sobre el manejo de Procedimientos
                        </button>
                    </h2>
                </div>


                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#manualAccordion">
                    <div class="card-body">
                        
                        <!--busqueda de procedimientos-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion2" aria-expanded="false" aria-controls="subseccion2">
                                ¿Cómo realizar una busqueda de procedimientos?
                            </button>
                            <div id="subseccion2" class="collapse" aria-labelledby="headingTwo" data-parent="#collapseTwo">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/Oprocedimiento1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

                                        <p style="color:black;  margin-top: 15px;">1. Asegurese de estar dentro de la opción de procedimientos en la parte izquierda del menu de opciones.</p>
                                    </div>
                                    <div class="col-md-8">
                                        <img src="img/Oprocedimiento2.png" alt="Imagen de la sección 1" style="width: 490px; height: 90px;margin-top: 200px;">

                                        <p style="color:black; margin-top: 70px;">2. Luego debe dirigirse a la parte superior de opciones y escribir
                                            el nombre del procedimiento en la casilla de texto que se le proporciona si lo que desea es filtrar una busqueda por el nombre del procedimiento.</p>
                                    </div>
                                    <div class="col-md-12 d-flex flex-column align-items-center">
                                        <img src="img/Oprocedimiento3.png" alt="Imagen de la sección 1" style="width: 300px; height: 200px;margin-top: 50px;">

                                        <p style="color:black; margin-top: 50px;">3. Tambien puede realizar una busqueda de procedimientos por el estado en el que se encuentren, ya sea para aquellos procedimientos ACTIVOS, INACTIVOS o simplemente visualizar TODOS.</p>
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
                            Sección 3: Información sobre el manejo de Pacientes
                        </button>
                    </h2>
                </div>

                <div id="collapseTree" class="collapse" aria-labelledby="headingTree" data-parent="#manualAccordion">
                    <div class="card-body">
                        <!--busqueda de pacientes-->
                        <div class="subseccion">
                            <button class="btn btn-link collapsed subseccion-btn" type="button" data-toggle="collapse" data-target="#subseccion6" aria-expanded="false" aria-controls="subseccion2">
                            ¿Cómo realizar una busqueda de pacientes?
                            </button>
                            <div id="subseccion6" class="collapse" aria-labelledby="headingTree" data-parent="#collapseTree">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/opaciente1.png" alt="Imagen de la sección 1" style="width: 200px; height: 300px; margin-top: 50px;">

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