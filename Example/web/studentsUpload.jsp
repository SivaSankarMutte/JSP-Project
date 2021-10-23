<%@ page import="java.io.*,java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>



<%
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;

while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
System.out.println("saveFile=" + saveFile);
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
System.out.println("saveFile" + saveFile);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;

pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

FileOutputStream fileOut = new FileOutputStream(saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
%>

<c:set var="eid" value="${param.eid}"/>
<b>File <% out.println(saveFile); %> has uploaded and inserted into Database.</b>
<%
    Connection con=null;
    Statement pst=null;
    String line = null;
    String value=null;
    
    try{
        StringBuilder contents = new StringBuilder();
        BufferedReader input = new BufferedReader(new FileReader(saveFile));
        
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true";
        String username="siva";
        String password="0000";
        
        con=DriverManager.getConnection(url,username,password); 
        PreparedStatement pstatement=null;
        pst=con.createStatement();
        
        
        //String url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true";
          //String username="siva";
          //String password="0000";
//          String sql="SELECT LAST_INSERT_ID() from examdetails where fid=${param.fid}";
//          //Class.forName("com.mysql.jdbc.Driver");
//          //Connection con=DriverManager.getConnection(url,username,password);
//          Statement st=con.createStatement();
//          ResultSet rs=st.executeQuery(sql);
//          rs.next();
        int eid=Integer.valueOf("" +pageContext.getAttribute("eid"));
       

          
          
        while (( line = input.readLine()) != null){
            String t=line.toString();
            String words[]=t.split(",");
            String queryString="insert into results(eid,semail) values(?,?)";
            pstatement = con.prepareStatement(queryString);
            pstatement.setInt(1, eid);
             
            pstatement.setString(2, words[0]);

            pstatement.executeUpdate();
        }
        
        %>
        <body>
        <sql:setDataSource var="exam" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true" user="siva" password="0000"/>
            <sql:query dataSource="${exam}" var="rs">
                select * from examdetails where fid=? and eid=?
                
                <sql:param value="${fid}" /> 
                <sql:param value="${eid}" />
                
            </sql:query>
                <c:forEach var="table" items="${rs.rows}">  
                    <c:set var="n" value="${table.noOfQuestions}"></c:set>

                </c:forEach>  
                
    
        <%
            int n=Integer.valueOf("" +pageContext.getAttribute("n"));
        %>
        <a href="questionform.jsp?fid=${param.fid}&eid=${param.eid}&n=${n}" class="btn btn-outline-info">Add Questions</a>
        </body>
        <%
}
catch(Exception e)
{
    PrintWriter pw=response.getWriter();
    pw.println(e);
}
}
%>
