package DataRepo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class KarateRepo {
    private static KarateRepo single_instance = null;

    private KarateRepo() {

    }

    public static KarateRepo getInstance() {
        // To ensure only one instance is created
        if (single_instance == null) {
            single_instance = new KarateRepo();
        }
        return single_instance;
    }

    private Connection dbInstance = null;

    public Connection getDbInstance() {
        return dbInstance;
    }

    public void setDbInstance(Connection dbInstance) {
        this.dbInstance = dbInstance;
    }

    public String getStringData(String query, String row, String coulmn) throws SQLException {
        String value = "";
        Statement stmt = this.getDbInstance().createStatement();
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            if (rs.getString("testCaseName").equals(row)) {
                value = rs.getString(coulmn);
            }
        }
        return value;
    }

    public int getIntData(String query, String row, String coulmn) throws SQLException {
        int value = 0;
        Statement stmt = this.getDbInstance().createStatement();
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            if (rs.getString("testCaseName").equals(row)) {
                value = rs.getInt(coulmn);
            }
        }
        return value;
    }

}