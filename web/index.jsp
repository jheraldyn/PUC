<%-- 
    Document   : index
    Created on : 4/03/2016, 10:01:36 AM
    Author     : JHERAL
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilo1_1.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/micodigo.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>PUC PLAN UNICO DE CUENTAS</h1>
        <sql:setDataSource 
            var="connection"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/accounting"
            user="root" password=""
            />
        <sql:query var="result" dataSource="${connection}">
            SELECT number, name FROM accounts
        </sql:query>
            <form id="frm1" action="buscar.jsp" method="GET">
            <select id="lista" name="lista" onchange="listar()">
                <c:forEach 
                    var="values" 
                    items="${result.rows}">

                       <option value="${values.number}">${values.name}</option>
                                          
                </c:forEach>
            </select>
                <br><br>
                <select id="lista2" name="lista2">
                    
                </select>
           
            </form>

            <div id="mensaje"></div>
            

            

        
    </body>
</html>
