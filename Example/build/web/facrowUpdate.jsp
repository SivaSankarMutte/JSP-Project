<%-- 
    Document   : facrowUpdate
    Created on : 18 Oct, 2021, 2:02:40 PM
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
    
        <c:set var="fid" value="${request.getParameter('fid')}"/>
        <% out.print(request.getParameter("fid")); %>
        <sql:setDataSource var="fac" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true" user="siva" password="0000"/>
            <sql:query dataSource="${fac}" var="result">
                select * from faculty where fid= ${param.fid};
                
                
            </sql:query>
             <c:forEach var="row" items="${result.rows}">
                    <form action="facrowupdatesuccess.jsp" method="post">
                        <input type="number" name="fid" value="${row.fid}" class="form-control">
		<input type="email" name="email" class="form-control" value="${row.email}">
		<input type="password" name="psw" class="form-control" value="${row.psw}">
		<input type="submit" class="btn btn-success form-control">
                    </form>
               
            </c:forEach>
       
    
</html>
