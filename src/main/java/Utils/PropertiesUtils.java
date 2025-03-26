package Utils;

import java.io.InputStream;
import java.util.Properties;

public class PropertiesUtils {
    private Properties properties = new Properties();

    public PropertiesUtils(String propertiesFileName) {
        try (InputStream input = getClass().getClassLoader().getResourceAsStream(propertiesFileName)) {
            if (input == null) {
                System.out.println("Sorry, unable to find " + propertiesFileName);
                return;
            }
            properties.load(input);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public String getProperty(String key) {
        return properties.getProperty(key);
    }
}
