<%@page import="Datos.Register"%>
<%@page import="Dao.Crud_Coach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>

        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="Script/script1.js" type="text/javascript"></script>
        <script src="Script/script1.js" type="text/javascript"></script>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="./assets/img/kit/free/favicon.png">
        <link rel="icon" href="./assets/img/kit/free/favicon.png">
        <title>
            Sports Time - Entrenador
        </title>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
        <link rel="stylesheet" href="./assets/css/material-kit.css?v=2.0.2">
        <link rel="stylesheet" href="./assets/css/personalizar.css">


        <%
            HttpSession misession = request.getSession(true);

            if (misession.getAttribute("usuario") == "Deportista") {
                response.sendRedirect("Athlete.jsp");
            }
        %>

        <script>
            $(document).ready(function () {
                $('#list1').click(function (event) {

                    var Role1 = $('#Role1').val();
                    var Role2 = $('#Role2').val();

                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "list", Role1: Role1, Role2: Role2},
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta.trim() == "list") {
                                window.location.replace("Atheledance.jsp");
                            }

                        }
                    });
                });
            });
            $(document).ready(function () {
                $('#list1').click(function (event) {

                    var Role1 = $('#Role1').val();
                    var Role2 = $('#Role2').val();

                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "list", Role1: Role1, Role2: Role2},
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta.trim() == "list") {
                                window.location.replace("Atheledance.jsp");
                            }

                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#management1').click(function (event) {
                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "management"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "management") {
                                window.location.replace("Management.jsp");
                            }


                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#sesionclose').click(function (event) {
                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "close"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "close") {
                                window.location.replace("Login.jsp");
                            }
                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#GraficaEnt').click(function (event) {
                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "grap"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "grap") {
                                window.location.replace("CoachGraficas.jsp");
                            }
                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#muro').click(function (event) {


                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "muro"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "muro") {
                                window.location.replace("Muro.jsp");
                            }


                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#calendario').click(function (event) {


                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "calendario"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "calendario") {
                                window.location.replace("Calendar.jsp");
                            }


                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#Solicitudes').click(function (event) {


                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "solicitudes"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "solicitudes") {
                                window.location.replace("Solicitudes.jsp");
                            }


                        }
                    });
                });
            });

        </script>

        <style>

            .scrollup{
                width:40px;
                height:40px;
                opacity:0.7;
                z-index:1000;
                position:fixed;
                bottom:70px;
                right:50px;
                display:none;
                text-indent:-9999px;
                background: url('./assets/img/up-arrow.png') no-repeat;
            }

        </style>

        <script type="text/javascript">
            $(document).ready(function () {

                $(window).scroll(function () {
                    if ($(this).scrollTop() > 100) {
                        $('.scrollup').fadeIn();
                    } else {
                        $('.scrollup').fadeOut();
                    }
                });

                $('.scrollup').click(function () {
                    $("html, body").animate({scrollTop: 0}, 600);
                    return false;
                });

            });
        </script>

    </head>

    <body class="signup-page " style="background-color: #CEEDFF;">

        <a href="#" class="scrollup">Scroll</a>

    <center>
        <div class="container">
            <div class="navbar-translate">
                <center>
                    <div class="brand">
                        <a class="navbar-brand" href="./Login.jsp"> <img src="assets/img/LOGORes.png" alt="Sports Time" width=80% height=80%> </a>
                    </div>
                </center>
            </div>
        </div> 
    </center>

    <%Crud_Coach crr = new Crud_Coach();
        HttpSession misession1 = request.getSession(true);
        String h = String.valueOf(misession1.getAttribute("v"));
        int identifiquer = Integer.parseInt(h);
    %>

    <div>
        <div style="margin-bottom: 10px; margin-top: 10px;">
            <center>
                <a style="display:inline-block;margin-right:5px;" class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://twitter.com/SportsTimeUSA" target="_blank" data-original-title="Síguenos en Twitter">
                    <i class="fa fa-twitter"></i>
                </a>
                <a style="display:inline-block;margin-right:5px;" class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://www.facebook.com/Sports-Time-448388048915031/" target="_blank" data-original-title="Síguenos en Facebook">
                    <i class="fa fa-facebook-square"></i>
                </a>
                <a style="display:inline-block;margin-right:5px;" class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://www.instagram.com/sports_time_usa/" target="_blank" data-original-title="Síguenos en Instagram">
                    <i class="fa fa-instagram"></i>
                </a>
            </center>
        </div>
        <center>
            <input style="margin-bottom: 20px;" id="sesionclose" type="submit" value="Cerrar Sesion" class="btn btn-info btn-round">
        </center>
    </div>

    <div class="page-header">
        <div class="profile-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 ml-auto mr-auto">
                        <div class="card card-signup">

                            <%
                                out.println("<h2 class=\"card-title text-center\">¡Bienvenido/a, entrenador/a " + crr.findAll().get(identifiquer).getName() + "!</h2> <br>");
                            %>
                            <center>
                                <div class="profile">
                                    <div class="avatar">
                                        <% String fotoName = crr.findAll().get(identifiquer).getFotoName();%>
                                        <img src="fotosdb/<%=fotoName%>" alt="Circle Image" class="img-raised rounded-circle img-fluid" width=200 height=200>
                                    </div>
                                </div>
                            </center>
                            <div class="card-body">

                                <div class="row">

                                    <div class="col-md-5 mr-auto">

                                        <br><h3 class="card-title text-center">Datos:</h3> <br>


                                        <div class="form-group">
                                            <div class="form-check form-check-radio form-check-inline">
                                                <%
                                                    if (crr.findAll().get(identifiquer).getRole().equals("1")) {
                                                        out.println("<img src=\"https://ebasketballcoach.com/op/wp-content/uploads/2016/10/basketballcoach500trans.png\" alt=\"Sports Time\" width=30 height=30 hspace=\"13\"> <p><b>Rol: </b>Entrenador</p>");
                                                    } else {
                                                        out.println("<img src=\"https://image.flaticon.com/icons/svg/432/432275.svg\" alt=\"Sports Time\" width=30 height=30 hspace=\"13\"> p><b>Rol: </b>Deportista</p>");
                                                    }
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/138/138672.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Nombre y Apellido: </b>" + crr.findAll().get(identifiquer).getName() + "  " + crr.findAll().get(identifiquer).getLastname() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/148/148860.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Documento: </b>" + crr.findAll().get(identifiquer).getIdentification_Card() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/226/226892.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Sexo: </b>" + crr.findAll().get(identifiquer).getGenre() + "</p>");
                                                %>
                                            </div>
                                        </div>   

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/123/123392.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Fecha de nacimiento: </b>" + crr.findAll().get(identifiquer).getBorn_Date() + "</p>");
                                                %>
                                            </div>
                                        </div>    

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/249/249196.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Altura: </b>" + crr.findAll().get(identifiquer).getHeight() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/755/755356.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Peso: </b>" + crr.findAll().get(identifiquer).getWeight() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/151/151917.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Categoria: </b>" + crr.findAll().get(identifiquer).getCategory() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/134/134951.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Telefono: </b>" + crr.findAll().get(identifiquer).getCellphone() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/770/770674.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>EPS: </b>" + crr.findAll().get(identifiquer).getEps() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/578/578691.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Numero de emergencia: </b>" + crr.findAll().get(identifiquer).getEmergency_Number() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/187/187165.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Alergias: </b>" + crr.findAll().get(identifiquer).getAllergies() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/576/576845.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Enfermedades: </b>" + crr.findAll().get(identifiquer).getDiseases() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="input-group">
                                                <img src="https://image.flaticon.com/icons/svg/265/265703.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                <%
                                                    out.println("<p><b>Descripcion: </b>" + crr.findAll().get(identifiquer).getDescription() + "</p>");
                                                %>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="col-md-5 mr-auto">

                                        <br><h3 class="card-title text-center">Gestion:</h3><br>

                                        <center>
                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <h6>Tomar Asistencia:</h6>
                                                    <a tabindex="0" class="button" role="button" data-toggle="popover" data-trigger="focus" title="PARA TOMAR LISTA:" data-content="Selecciona la jornada y presiona el boton LISTA."><img title="ayuda" src="https://image.flaticon.com/icons/svg/148/148769.svg" alt="Sports Time" width=17 height=17 hspace="10"></a>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <label class="form-check-label">
                                                        <img src="https://image.flaticon.com/icons/svg/577/577597.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="Role1" onClick="value = 1" value="Work day" > Mañana
                                                        <span class="circle">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <label class="form-check-label">  
                                                        <img src="https://image.flaticon.com/icons/svg/624/624106.svg" alt="Sports Time" width=30 height=30 hspace="13">
                                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="Role2" onClick="value = 2" value="Work day"> Tarde
                                                        <span class="circle">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="card-footer justify-content-center">
                                                    <input id="list1" type="submit" value="Lista" class="btn btn-info btn-round">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <h6>Gestion de entrenamiento:</h6>
                                                    <a tabindex="0" class="button" role="button" data-toggle="popover" data-trigger="focus" title="PARA INICIAR UN ENTRENAMIENTO:" data-content="Presiona el boton ENTRENAMIENTO."><img title="ayuda" src="https://image.flaticon.com/icons/svg/148/148769.svg" alt="Sports Time" width=17 height=17 hspace="10"></a>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="card-footer justify-content-center">
                                                    <input  id="management1" type="submit" value="Entrenamiento" class="btn btn-info btn-round">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <h6>Ver graficas de entrenamiento:</h6>
                                                    <a tabindex="0" class="button" role="button" data-toggle="popover" data-trigger="focus" title="PARA VER LAS GRAFICAS DE RENDIMIENTO:" data-content="Presiona el boton ENTRENAMIENTO."><img title="ayuda" src="https://image.flaticon.com/icons/svg/148/148769.svg" alt="Sports Time" width=17 height=17 hspace="10"></a>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="card-footer justify-content-center">
                                                    <input id="GraficaEnt" type="submit" value="Graficas" class="btn btn-info btn-round">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <h6>Muro de Notificaciones:</h6>
                                                    <a tabindex="0" class="button" role="button" data-toggle="popover" data-trigger="focus" title="PARA VER EL MURO DE NOTIFICACIONES:" data-content="Presiona el boton MURO DE NOTIFICACIONES. Allí podrás ver y comentar las publicaciones de los demás, o incluso, haz tu propia publicación." data-content="Presiona el boton NOTIFICACIONES."><img title="ayuda" src="https://image.flaticon.com/icons/svg/148/148769.svg" alt="Sports Time" width=17 height=17 hspace="10"></a>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="card-footer justify-content-center">
                                                    <input id="muro" type="submit" value="Muro de Notificaciones" class="btn btn-info btn-round">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <h6>Calendario de Eventos:</h6>
                                                    <a tabindex="0" class="button" role="button" data-toggle="popover" data-trigger="focus" title="PARA VER O CREAR EVENTOS:" data-content="Presiona el boton EVENTOS."><img title="ayuda" src="https://image.flaticon.com/icons/svg/148/148769.svg" alt="Sports Time" width=17 height=17 hspace="10"></a>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="card-footer justify-content-center">
                                                    <input id="calendario" type="submit" value="Eventos" class="btn btn-info btn-round">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-check form-check-radio form-check-inline">
                                                    <h6>Amigos:</h6>
                                                    <a tabindex="0" class="button" role="button" data-toggle="popover" data-trigger="focus" title="PARA VER SUS AMIGOS O AGREGAR NUEVOS:" data-content="Presiona el boton AMIGOS."><img title="ayuda" src="https://image.flaticon.com/icons/svg/148/148769.svg" alt="Sports Time" width=17 height=17 hspace="10"></a>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="card-footer justify-content-center">
                                                    <input id="Solicitudes" type="submit" value="Amigos" class="btn btn-info btn-round">
                                                </div>
                                            </div>
                                        </center>        
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer" style="background-color: #CEEDFF;">
        <div class="container">
            <br>
            <center>
                &copy;
                <script>
                    document.write(new Date().getFullYear())
                </script>, Hecho por Sara Chamseddine, Juan Camilo Botonero, Sebastian Rojas, Diego Leon, Mario Bolaños
            </center>
        </div>
    </footer>



    <!--   Core JS Files   -->
    <script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    <script src="./assets/js/core/jquery.min.js"></script>
    <script src="./assets/js/core/popper.min.js"></script>
    <script src="./assets/js/bootstrap-material-design.js"></script>
    <!--  Plugin for Date Time Picker and Full Calendar Plugin  -->
    <script src="./assets/js/plugins/moment.min.js"></script>
    <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
    <script src="./assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
    <!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="./assets/js/plugins/nouislider.min.js"></script>
    <!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
    <script src="./assets/js/material-kit.js?v=2.0.2"></script>
    <!-- Fixed Sidebar Nav - js With initialisations For Demo Purpose, Don't Include it in your project -->
    <script src="./assets/assets-for-demo/js/material-kit-demo.js"></script>

</body>

</html>
