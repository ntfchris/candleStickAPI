package APITestDemo;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class TestRun {

    @BeforeClass
    public static void before() {
        System.setProperty("karate.env", "IOS");
        //System.setProperty("karate.env", "Android");
    }

    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:APITestDemo/feature").tags("@candle_stick").parallel(2);
        assertEquals(results.getErrorMessages(), 0, results.getFailCount());
    }

}
