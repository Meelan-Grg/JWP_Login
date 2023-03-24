import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coders", "root", "creator123");
		String n = request.getParameter("username");
		String p = request.getParameter("password");
		PreparedStatement ps = con.prepareStatement("select first_name, last_name from users where username=? and password=?");
		ps.setString(1,n);
		ps.setString(2, p);
		
		ResultSet rs =ps.executeQuery();
		 if(rs.next()) {
			 RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
			 String first_name = rs.getString("first_name");
			 request.setAttribute("first_name", first_name);
		     String last_name = rs.getString("last_name");
		     request.setAttribute("last_name", last_name);
			 rd.forward(request,response);
		 }
		 else {
			 out.println("<font color=red size=18>Login Failed!!!<br>");
			 out.println("<a href=login.jsp> Try Again !!</a>");
		 }
		
		
		} catch (Exception e) {
			out.println(e);
		}
	}

}
