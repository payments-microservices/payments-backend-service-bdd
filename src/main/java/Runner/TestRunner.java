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
    public void beforeTst() {
    }

    @Test
    public void tst() {
        builder = new Builder();
        builder.path("src/test/java/resources/Features/sample.feature");
        results = builder.parallel(0);
    }

    @AfterTest
    public void afterTst() {

    }
}
