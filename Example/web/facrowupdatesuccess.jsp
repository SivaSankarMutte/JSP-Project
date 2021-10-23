<%-- 
    Document   : facrowupdatesuccess
    Created on : 19 Oct, 2021, 11:57:26 AM
    Author     : SIVASANKAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    </head>
    <body>
        <sql:setDataSource var="fac" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true" user="siva" password="0000"/>
            <sql:query dataSource="${fac}" var="result">
                update faculty set email=${param.email},psw=${param.psw} where fid=${param.fid};
                
            </sql:query>
                <h1>Updated Successfully</h1>
    </body>
</html>
