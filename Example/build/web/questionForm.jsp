<%-- 
    Document   : questionForm
    Created on : 23 Oct, 2021, 1:43:46 AM
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
         <c:set var="eid" value="${param.eid}"/>
        <c:set var="fid" value="${param.fid}"/>
        <c:set var="n" value="${param.n}"/>
        
        
        <%
            int fid=Integer.valueOf("" +pageContext.getAttribute("fid"));
            int eid=Integer.valueOf("" +pageContext.getAttribute("eid"));
            int n=Integer.valueOf("" +pageContext.getAttribute("n"));
           
        %>
        
        <c:if test="${n}>1">
        <form method="post" action="addQuestions.jsp?fid=${param.fid}&eid=${param.eid}&n=${n-1}">
            <input type="text" name="Question" placeholder="Enter Question" value="" class="form-control">
            <input type="text" name="opt1" placeholder="Enter Option1" value="" class="form-control">
            <input type="text" name="opt2" placeholder="Enter Option2" value="" class="form-control">
            <input type="text" name="opt3" placeholder="Enter Option3" value="" class="form-control">
            <input type="text" name="opt4" placeholder="Enter Option4" value="" class="form-control">
            <input type="number" name="ans" placeholder="Enter option number of answer" value="" class="form-control">
            <input type="number" name="qmarks" placeholder="Enter marks" value="1" class="form-control">
            <input type="submit" name="Add" class="btn btn-outline-info form-control">
        </form>
        </c:if>
        <c:when test="${n}==1">
            <form method="post" action="QuestionsAddedSuccess.jsp">
            <input type="text" name="Question" placeholder="Enter Question" value="" class="form-control">
            <input type="text" name="opt1" placeholder="Enter Option1" value="" class="form-control">
            <input type="text" name="opt2" placeholder="Enter Option2" value="" class="form-control">
            <input type="text" name="opt3" placeholder="Enter Option3" value="" class="form-control">
            <input type="text" name="opt4" placeholder="Enter Option4" value="" class="form-control">
            <input type="number" name="ans" placeholder="Enter option number of answer" value="" class="form-control">
            <input type="number" name="qmarks" placeholder="Enter marks" value="1" class="form-control">
            <input type="submit" name="Submit" class="btn btn-outline-info form-control">
        </form>
        </c:when>
    </body>
</html>