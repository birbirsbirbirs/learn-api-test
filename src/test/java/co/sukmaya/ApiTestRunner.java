package co.sukmaya;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;


public class ApiTestRunner {
    @Test
    void testApi() {
        Results results = Runner.path("classpath:co/sukmaya/api").tags("@api")
                .outputCucumberJson(true)
                .parallel(20);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
