import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class insertintodb extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        int ffid=Integer.parseInt(request.getParameter("fid"));
        String examName=request.getParameter("examName");
        String noOfQuestions=request.getParameter("noOfQuestions");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true","siva","0000");
            PreparedStatement ps=con.prepareStatement("insert into examdetails(fid,examName,noOfQuestions) values(?,?,?)");
            Statement st=con.createStatement();
            ps.setInt(1,ffid);
            ps.setString(2, examName);
            ps.setString(3, noOfQuestions);
            
            //String query="insert into dbtable values("+name+','+psw+")";
            int i=ps.executeUpdate();
            if(i>0)
            {
                pw.println("Exam deatils Submitted successfully");
                PreparedStatement ps2=con.prepareStatement("select max(eid) from examdetails where fid=?");
                ps2.setInt(1,ffid);
                ResultSet rs2=ps2.executeQuery();
                rs2.next();
                int eid= rs2.getInt("max(eid)");
                RequestDispatcher rd=request.getRequestDispatcher("studentsFileUpload.jsp?fid="+ffid+"&eid="+eid);
                rd.forward(request,response);
                
            }
        }
        catch(Exception e)
        {
            pw.print(e);
        }
        //pw.println("<a href='index.html'>Login</a>");
        
     
    }
}