
package Interface;

public interface Conection {
    // Database configuration
    public final String SQL_URL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    public final String SQL_USERNAME = "root";
    public final String SQL_PASSWORD = "admin";
    
    // Sql querys
    public final String SQL_GET_USERS = "SELECT * FROM user WHERE username = ? AND password = ?";
    public final String SQL_INSERT_USER = "INSERT INTO user VALUES(username = ?, password = ?)";
    public final String SQL_UPDATE_USER = "UPDATE user SET username = ?, password = ? WHERE id_user = ?";
    public final String SQL_DELETE_USER = "DELETE FROM user WHERE id_user";

}
