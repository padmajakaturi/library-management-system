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
	@WebServlet("/updatemember")
	public class updatemember  extends HttpServlet {
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String name=req.getParameter("name");
			String phn=req.getParameter("phn");
			String email=req.getParameter("email");
			
			String password=req.getParameter("password");
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
				String sql="update members set name=?,phn=?,password=? where email=?";
				PreparedStatement pmst=conn.prepareStatement(sql);
				pmst.setString(1, name);
				pmst.setString(2, phn);
				pmst.setString(3, password);
				pmst.setString(4,email);
				
				int i=pmst.executeUpdate();
				if(i>0) {
//					System.out.println("successfully updated "+email+" password");
					resp.sendRedirect("getallmembers.jsp");
				}
				else {
//					System.out.println("user not found! "+email);
					resp.sendRedirect("updatemember.jsp");
				}
				pmst.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		}







