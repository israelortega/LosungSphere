<%-- 
    Document   : layout
    Created on : 19/11/2015, 06:33:34 PM
    Author     : unam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>LosungSphere V.1.0.0</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/LosungSphere/semantic/semantic.min.css" media="all" type="text/css"/>
        <link rel="stylesheet" href="/LosungSphere/css/daterangepicker.min.css" media="all" type="text/css"/>
        <link rel="stylesheet" href="/LosungSphere/css/style.css" media="all" type="text/css"/>
        <script src="/LosungSphere/js/jquery-2.1.4.min.js"></script>
        <script src="/LosungSphere/semantic/semantic.min.js"></script>
        <script type="text/javascript">
            $(function () {
                window.setTimeout(
                        function () {
                            $('div.container > div.column').css({
                                "background-color": "transparent"});
                        }, 100)
                $('#save').click(function () {
                    $('.ui.sidebar').sidebar('toggle');
                });
            });
        </script>
    </head>
    <body class="pushable">
        <div class="ui sidebar inverted vertical menu">
            <div class="item">
                <div class="ui horizontal segments">
                    <div class="ui segment">
                        <p><img class="ui tiny  image" src="/sistemas/images/avatar/generico.jpg"></p>
                    </div>
                    <div class="ui segment color-texto">
                        <p><s:property value="#session.credencial.titulo" /> <s:property value="#session.credencial.nombreMostrar" /></p>
                        <p><s:property value="#session.credencial.puesto" /></p>
                    </div>
                </div>

                <div>
                    <a class="ui teal image label" href="/sistemas/">
                        <i class="home icon"></i>
                        Inicio
                    </a>
                    <a class="ui teal image label" href="/sistemas/">
                        <i class="user icon"></i>
                        Perfil
                    </a>
                    <a class="ui teal image label" href="/sistemas/salida.action">
                        <i class="external icon"></i>
                        Salir
                    </a>
                </div>
                <p>&nbsp;</p>
            </div>

            <a class="item" href="/sistemas/">
                <b>¿Que es nuevo?</b>
            </a>

            <div class="item">
                <div class="header">Administración de Proyectos</div>
                <div class="menu">
                    <a class="item" href="/sistemas/proyectos/documentos?project=Proyectos&tema=Plantillas">
                        Plantillas (2)
                    </a>
                    <p>&nbsp;</p>
                </div>

            </div>
                    
            <div class="item">
                <div class="header">Oficina Virtual</div>
                <div class="menu">
                    <a class="item" href="/sistemas/proyectos/documentos?project=OficinaVirtual&tema=Calidad">
                        Documentos de Calidad (2)
                    </a>
                    <p>&nbsp;</p>
                </div>

            </div>

        </div>
        <div class="pusher">
            <!-- Site content !-->

            <div class="titulo ui sticky" >
               <div class="ui horizontal segments segmento-arriba">
                    
                    <div class="ui center aligned segment titulo-princ">
                        KAANBAL
                    </div>
                    
                    <div class="ui right aligned segment barra-titulos">
                        <a class="ui teal image label menu-boton" id="save">
                            <i class="sidebar icon"></i>
                            Menú
                        </a>
                        <a  class="ui teal image label salida" href="/sistemas/salida.action">
                            <i class="external icon"></i>
                            Salir
                        </a>
                    </div>
                    
               </div>
               

               

            </div>

            <!--CONTENIDO-->
            <div id="context"> 
            <decorator:body/>

            <!--termina CONTENIDO-->

        </div>

            <script>
                $('.ui.sticky')
                .sticky({
                context: '#context'
            });
            </script>
                

    </body>
    
</html>

