import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:xe",
                    "edupulse",
                    "1234"
            );

            String sql = "SELECT * FROM users WHERE email=? AND password=? AND role=?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email.trim());
            ps.setString(2, password.trim());
            ps.setString(3, role.trim());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                if (role.equals("student")) {
                    response.sendRedirect("student/dashboard.jsp");
                } else if (role.equals("faculty")) {
                    response.sendRedirect("faculty/dashboard.jsp");
                } else if (role.equals("admin")) {
                    response.sendRedirect("admin/dashboard.jsp");
                }

            } else {
                response.getWriter().println("Invalid Credentials");
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}