<%-- 
    Document   : scriptlet
    Created on : Sep 28, 2018, 3:49:08 PM
    Author     : jhonf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*, java.sql.*, modelo.Empleado"%>

<%
  ArrayList<Empleado> datos = new ArrayList();

  try
  {
      String url = "jdbc:mysql://localhost:3306/proyecto_jsp";
      String user = "root";
      String pass = "";
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection miConexion = DriverManager.getConnection(url, user, pass);
      Statement miStatement = miConexion.createStatement();
      String instruccionSql = "select * from empleados";
      ResultSet rs = miStatement.executeQuery(instruccionSql);
      
      while(rs.next())
      {
          datos.add(new Empleado(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4)));
      }
      
      rs.close();
      miConexion.close();
      
  }catch(Exception ex)
  {
      out.println("Error en la conexión a la base de datos");
  }
  
  pageContext.setAttribute("losEmpleados", datos);
%>

<!DOCTYPE html>
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
        <c:forEach var = "empleado" items="${losEmpleados}">
            ${empleado.nombre} ${empleado.apellido} ${empleado.cargo} ${empleado.salario}<br>
        </c:forEach>
    </body>
</html>
