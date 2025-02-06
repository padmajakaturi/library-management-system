package library;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deletemember")
public class deletemember extends HttpServlet{
	@Override
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
			String sql="delete from members where email=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1,email);
			int i=pmst.executeUpdate();
			if(i>0) {
//				System.out.println("successfully deleted"+email);
				resp.sendRedirect("getallmembers.jsp");
			}
			else {
//				System.out.println("user not found!");
				resp.sendRedirect("delete.jsp");
			}
			pmst.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	}
