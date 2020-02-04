package DAO;

import Bean.User;
import java.sql.*;

public class LoginDAO {
    
    private final String SQL_URL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private final String SQL_USERNAME = "root";
    private final String SQL_PASSWORD = "admin";
    
    private final String SQL_STATEMENT = "SELECT * FROM user WHERE username = ? AND password = ?";
    
     
    public boolean isUser(String username, String password) throws ClassNotFoundException, SQLException {
        
        Connection conection = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        
        try {
            // Initialize and register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            conection = DriverManager.getConnection(SQL_URL, SQL_USERNAME, SQL_PASSWORD);

            // Prepare the statement
            statement = conection.prepareStatement(SQL_STATEMENT);

            // Set the user credentials
            statement.setString(1, username);
            statement.setString(2, password);

            // Execute the statement
            result = statement.executeQuery();
            
            // If user on DB then return true
            if(result.next()) {
                return true;
            } else { 
                return false; 
            }
        } catch(SQLException ex) {
            ex.printStackTrace(System.out);
        } 
        return false;
    }
}
