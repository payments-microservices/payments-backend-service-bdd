package Utils;

import java.io.FileInputStream;
import java.util.Properties;

public class PropertiesUtils {
    public static String readDbPropFile(String propertyName) {
        String dir_dbPropFile = "C:/Users/Aditya B/Documents/Automation/Karate/KarateApiBdd/src/test/java/resources/Configs/DbConfigs.properties";
        Properties properties = new Properties();
        FileInputStream fileInputStream;
        String propValue = null;

        try {
            fileInputStream = new FileInputStream(dir_dbPropFile);
            properties.load(fileInputStream);
            propValue = properties.getProperty(propertyName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return propValue;
    }
}
