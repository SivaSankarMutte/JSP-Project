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
            <sql:update dataSource="${fac}" var="result">
                delete from faculty where fid= ${param.fid};
                
                
            </sql:update>
                <h1>Deleted Successfully</h1>
                <a href="facultyModify.jsp" class="btn btn-info form-control">Back</a>
    
</html>
