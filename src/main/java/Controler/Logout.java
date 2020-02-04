
package Controler;

import java.io.IOException;
import javax.servlet.http.*;


public class Logout extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        // Instanciate session object
        HttpSession session = request.getSession();
        // Remove user from session
        session.removeAttribute("user");
        session.invalidate();
        // Redirect to index page
        response.sendRedirect("index.jsp");
    }
}
