<%-- 
    Document   : facultyModify
    Created on : 17 Oct, 2021, 8:16:28 PM
    Author     : SIVASANKAR
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Modify</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    </head>
    <body>
        <sql:setDataSource var="fac" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true" user="siva" password="0000"/>
        <sql:query dataSource="${fac}" var="result">
            select * from faculty;
        </sql:query>
            <table border="1" width="100%">
                <tr>
                    <th>Faculty Id</th>
                    <th>Faculty Email</th>
                    <th>Password</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.fid}"/></td>
                        <td><c:out value="${row.email}"/></td>
                        <td><c:out value="${row.psw}"/></td>
                        
                        <td><a href="facrowUpdate.jsp?fid=${row.fid}" class="btn btn-warning">UPDATE</a></td>
                        <td><a href="facrowDelete.jsp?fid=${row.fid}" class="btn btn-danger">DELETE</a></td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
