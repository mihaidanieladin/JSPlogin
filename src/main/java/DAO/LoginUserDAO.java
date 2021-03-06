package DAO;

import Bean.User;
import java.sql.*;

import Interface.Conection;

public class LoginUserDAO implements Conection {
    
    public boolean isUser(String username, String password) throws ClassNotFoundException, SQLException {
        Connection conection = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        
        try {
            
            // Initialize and register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            conection = DriverManager.getConnection(SQL_URL, SQL_USERNAME, SQL_PASSWORD);

            // Prepare the statement
            statement = conection.prepareStatement(SQL_GET_USERS);

            // Set the user credentials
            statement.setString(1, username);
            statement.setString(2, password);

            // Execute the statement
            result = statement.executeQuery();
            
            // If user on DB then return true
            return result.next();
        } catch(SQLException ex) {
            ex.printStackTrace(System.out);
        } 
        return false;
    }
}
