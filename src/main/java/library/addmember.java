package library;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addmember")
public class addmember extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phn=req.getParameter("phn");
		String password=req.getParameter("password");
		
		try {
			PrintWriter pw=resp.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "root");
			String sql="insert into members(name,phn,email,password) values(?,?,?,?)";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, name);
			pmst.setString(2, phn);
			pmst.setString(3, email);
			pmst.setString(4, password);
			int i=pmst.executeUpdate();
			if(i>0) {
//				pw.println("successfully registered!");
				resp.sendRedirect("getallmembers.jsp");
			}
			else {
//				pw.println("Error");
				resp.sendRedirect("addmember.jsp");
			}
			pmst.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
