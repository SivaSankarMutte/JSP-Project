<%-- 
    Document   : addQuestions
    Created on : 23 Oct, 2021, 1:29:48 AM
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
       <% 
           String Question=request.getParameter("Question");
           String opt1=request.getParameter("opt1");
           String opt2=request.getParameter("opt2");
           String opt3=request.getParameter("opt3");
           String opt4=request.getParameter("opt4");
           int ans=Integer.parseInt(request.getParameter("ans"));
           int qmarks=Integer.parseInt(request.getParameter("qmarks"));
        %>
        <c:set var="eid" value="${param.eid}"/>
        <c:set var="fid" value="${param.fid}"/>
        <c:set var="n" value="${param.n}"/>
        
        <%
            int fid=Integer.valueOf("" +pageContext.getAttribute("fid"));
            int eid=Integer.valueOf("" +pageContext.getAttribute("eid"));
            int n=Integer.valueOf("" +pageContext.getAttribute("n"));
        %>
        <sql:setDataSource var="exam" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true" user="siva" password="0000"/>
            <sql:update dataSource="${exam}" var="result">
                insert into questions(fid,eid,Question,opt1,opt2,opt3,opt4,ans,qmarks,) values(?,?,?,?,?,?,?,?,?)
                <sql:param value="${fid}" /> 
                <sql:param value="${eid}" />
                <sql:param value="${Question}" />
                
                <sql:param value="${opt1}" /> 
                <sql:param value="${opt2}" />
                <sql:param value="${opt3}" />
                
                <sql:param value="${opt4}" /> 
                <sql:param value="${ans}" />
                <sql:param value="${qmarks}" />
               
            </sql:update>
                <h5>Question added successfully</h5>
        <a href="questionForm.jsp?fid=${param.fid}&eid=${param.eid}&n=${n}" class="btn btn-outline-info">Add Next Question</a>
    </body>
</html>
