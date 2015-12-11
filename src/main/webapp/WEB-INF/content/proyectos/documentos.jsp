<%-- 
    Document   : documentos
    Created on : 27/11/2015, 05:31:57 PM
    Author     : unam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <div class="ui right floated segment">
                <i class="trash icon"></i>
            </div>
        
            <div class="ui right floated segment">
                <i class="upload icon"></i>
            </div>
            
        
            <div class="ui left floated segment">
                inicio\<s:property value="project" />\<s:property value="subject" />
            </div>
        


        <table class="ui striped table">
            <thead>
                <tr>
                    <th>Formato</th>
                    <th>Nombre de Archivo</th>
                    <th>Tamaño</th>
                    <th>Versión</th>
                    <th>fecha</th>
                    <th>Autor</th>
                    <th>Modifica</th>
                </tr>
            </thead>
            <tbody>

                <s:iterator value="listaArchivos" id="listaArchivos" status="stListaArchivosBean" >
                    <tr>
                        <td><i class="file word outline icon"></i> <i class="comment outline icon"></i> <i class="download outline icon"></i> <i class="erase outline icon"></i> <i class="history outline icon"></i> </td>
                        <td><s:a href="%{link}"><s:property value="filename" /></s:a>
                            <br /><s:property value="description" />
                        </td>
                        <td><s:property value="size" /></td>
                        <td><s:property value="version" /></td>
                        <td><s:property value="filedate" /></td>
                        <td><s:property value="author" /></td>
                        <td><s:property value="update" /></td>
                    </tr>
                </s:iterator>

            </tbody>
        </table>

    </body>
</html>
