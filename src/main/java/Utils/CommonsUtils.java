package Utils;

import java.util.Map;

public class CommonsUtils {
    public static String buildUrl(String baseUrl, String endpoint, Map<String, String> queryParams) {
        StringBuilder url = new StringBuilder(baseUrl + endpoint);
        if (queryParams != null && !queryParams.isEmpty()) {
            url.append("?");
            queryParams.forEach((key, value) -> url.append(key).append("=").append(value).append("&"));
            url.deleteCharAt(url.length() - 1);
        }
        return url.toString();
    }
}

