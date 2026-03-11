import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SaveDataServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String marks = request.getParameter("marks");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<h2>Data Saved Successfully</h2>");
        out.println("<p>Name: " + name + "</p>");
        out.println("<p>Subject: " + subject + "</p>");
        out.println("<p>Marks: " + marks + "</p>");
    }
}