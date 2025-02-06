package library;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		try {
			PrintWriter pw=resp.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "root");
			String sql="select * from members where email=? AND password=? ";
			
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, email);
			pmst.setString(2, password);
			ResultSet rs=pmst.executeQuery();
			if(rs.next()) {
				
//				resp.sendRedirect("getbyemail.jsp");
				req.setAttribute("getbyemail", rs);
                req.getRequestDispatcher("getbyemail.jsp").forward(req, resp);

				
				
			}
			else {
//				resp.sendRedirect("login.jsp");
//				System.out.println("invalid username or password");
				req.setAttribute("error", "Invalid email or password");
                req.getRequestDispatcher("login.jsp").forward(req, resp);

			}
			
			pmst.close();
			conn.close();
		} catch (Exception e) {
//			e.printStackTrace();
			System.out.println("exception");
		}
	}

}
