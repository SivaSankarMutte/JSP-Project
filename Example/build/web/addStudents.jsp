<%-- 
    Document   : addStudents
    Created on : 21 Oct, 2021, 5:44:05 PM
    Author     : SIVASANKAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
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
        <c:set var="afid" value="${param.fid}"/>
        <%
        String sfid=request.getParameter("fid");
        String examName=request.getParameter("examName");
        String noOfQuestions=request.getParameter("noOfQuestions");
        %>
    
        <sql:setDataSource var="exam" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true" user="siva" password="0000"/>
            <sql:update dataSource="${exam}" var="result">
                insert into examdetails(fid,examName,noOfQuestions) values(?,?,?)
                <sql:param value="${afid}" /> 
                <sql:param value="${examName}" />
                <sql:param value="${noOfQuestions}" />
               
            </sql:update>
                <h1>Exam Created successfully</h1>
              
                Let's add Students List
        <a href="studentsFileUpload.jsp?fid=${sfid}" >Click here</a>
    </body>
</html>
