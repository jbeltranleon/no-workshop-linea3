<%-- 
    Document   : scriptlet
    Created on : Sep 28, 2018, 3:49:08 PM
    Author     : jhonf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
        <% 
            String alumnos[] = {"Antonio", "Carlos", "Paco", "María"};
            pageContext.setAttribute("LosAlumnos", alumnos);
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Scriptlet</h1>
        <div>
            <h2>Funciona</h2>
        </div>
        <% 
            for(String alumno : alumnos){
                out.print(alumno + "<br>");
            }
        %>
    </body>
</html>
