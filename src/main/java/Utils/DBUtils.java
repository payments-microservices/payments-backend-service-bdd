package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
    private final String DB_URL = PropertiesUtils.readDbPropFile("url");
    private final String USER = PropertiesUtils.readDbPropFile("username");
    private final String PASS = PropertiesUtils.readDbPropFile("password");
    public static final String KARATEREPO = "SELECT * FROM test.karatedata";

    public Connection getSqlConn() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }


}
