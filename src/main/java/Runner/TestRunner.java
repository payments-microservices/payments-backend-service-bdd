package Runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class TestRunner {
    Builder builder;
    Results results;

    @BeforeTest
    public void beforeTest() {
        // Setup code if needed
    }

    @Test
    public void runTests() {
        builder = new Builder();
        builder.path("src/test/java/resources/Features");
        results = builder.parallel(5);
    }

    @AfterTest
    public void afterTest() {
        // Teardown code if needed
    }
}
