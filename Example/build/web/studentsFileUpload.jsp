<%@ page language="java" %>
<!DOCTYPE html>
<HTml>
<HEAD>
    <TITLE>Display file upload form to the user</TITLE>
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
</HEAD> 
    

<BODY>
<FORM ENCTYPE="multipart/form-data" ACTION=
"studentsUpload.jsp?fid=${param.fid}&eid=${param.eid}" METHOD=POST>
<br><br><br>
<center><table border="2" >
<tr><center><td colspan="2"><p align=
"center"><B>UPLOAD THE FILE</B><center></td></tr>
<tr><td><b>Choose the file To Upload:</b>
</td>
<td><INPUT NAME="file" TYPE="file" class="form-control"></td></tr>
<tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="Send File" class="btn btn-outline-success"></p></td></tr>
</table>
</center> 
</FORM>
</BODY>
</HTML>