package library;

import library.login;

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

@WebServlet("/getbyemail")
public class getbyemail extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		 String email=req.getParameter("email");
		 try {
			PrintWriter pw = resp.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "root");
			String sql = "select * from members where email==email";
			PreparedStatement pmst = conn.prepareStatement(sql);
//			pmst.setString(1, email);
			ResultSet rs = pmst.executeQuery();
			while (rs.next()) {
//				pw.println("name:" + rs.getString("name"));
//				pw.println("phn:" + rs.getString("phn"));
//				pw.println("email:" + rs.getString("email"));
//				pw.println("password:" + rs.getString("password"));
				
				String name=rs.getString("name");
				req.setAttribute("name",name);

				String e=rs.getString("email");
				String m=rs.getString("phn");
				String p=rs.getString("password");
				req.getRequestDispatcher("getbyemail.jsp").forward(req, resp);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
