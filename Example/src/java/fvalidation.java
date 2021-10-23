import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class fvalidation extends HttpServlet {

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
        String email=request.getParameter("email");
        String psw = request.getParameter("psw");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true","siva","0000");
            PreparedStatement ps=con.prepareStatement("select * from faculty");
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                if(rs.getString(2).equals(email) && rs.getString(3).equals(psw))
                {
                    
                    pw.println("Login Successful");
                    String fid = rs.getString(1);
                    RequestDispatcher rd=request.getRequestDispatcher("fhome.jsp?fid="+fid);
                    rd.forward(request,response);
                }
            
            }
            if(rs.next()==false)
            {
                RequestDispatcher rd=request.getRequestDispatcher("error.html");
                rd.forward(request,response);
            }
            
            
        }
        catch(Exception e)
        {
            pw.print(e);
        }
        
        
     
    }
}