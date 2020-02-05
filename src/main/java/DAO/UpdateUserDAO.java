
package DAO;

import Interface.Conection;
import static Interface.Conection.SQL_INSERT_USER;
import static Interface.Conection.SQL_PASSWORD;
import static Interface.Conection.SQL_URL;
import static Interface.Conection.SQL_USERNAME;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UpdateUserDAO implements Conection {
    
    public int updateUser() throws ClassNotFoundException, SQLException {
        Connection conection = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        
        try {
            
            // Initialize and register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            conection = DriverManager.getConnection(SQL_URL, SQL_USERNAME, SQL_PASSWORD);

            // Prepare the statement
            statement = conection.prepareStatement(SQL_UPDATE_USER);
            
        } catch(SQLException ex) {
            ex.printStackTrace(System.out);
        }
        return 0;
    } 
}
