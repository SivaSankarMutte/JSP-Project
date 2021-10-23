<%-- 
    Document   : fhome
    Created on : 19 Oct, 2021, 1:08:19 PM
    Author     : SIVASANKAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
   
        <div class="container mt-5">
	<div class="jumbotron bg-dark">

		<div class="jumbotron bg-info">
			<a href="createtest.jsp?fid=${param.fid}" class="badge badge-danger"><h4>Create Test</h4></a>
		</div>

		<div class="jumbotron bg-success">
			<a href="modifytest.jsp?fid=${param.fid}" class="badge badge-danger"><h4>Modify Tests</h4></a>
		</div>

		<div class="jumbotron bg-warning">
			<a href="results.jsp?fid=${param.fid}" class="badge badge-danger"><h4>Results</h4></a>
		</div>

	</div>
</div>
    </body>
</html>
