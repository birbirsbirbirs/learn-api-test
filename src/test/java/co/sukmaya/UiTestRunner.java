package co.sukmaya;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;


public class UiTestRunner {
    @Test
    void testApi() {
        Results results = Runner.path("classpath:co/sukmaya/ui") //.tags("@api")
                .outputCucumberJson(true)
                .parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
