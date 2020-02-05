package Controler;

import Bean.User;
import DAO.LoginUserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Login extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        // Getting user credentials
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        LoginUserDAO checkIf = new LoginUserDAO();
        PrintWriter out = response.getWriter();
        
        try {
            // Checking users data
            if(checkIf.isUser(username, password)){
                // New session
                HttpSession session = request.getSession();
                // Set user into session
                session.setAttribute("user", username);
                // Redirect to welcome page
                response.sendRedirect("admin.jsp");
                
//                RequestDispatcher rd = request.getRequestDispatcher("AdminPanel");
//                rd.forward(request, response);
            } else {
                // If user not match then redirect to index page
                response.sendRedirect("login.jsp");
            }
        } catch (IOException | ClassNotFoundException | SQLException e) {
            out.print(e.getMessage());
        }
    }
}
