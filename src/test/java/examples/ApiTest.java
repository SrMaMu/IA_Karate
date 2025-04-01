package examples;

import com.intuit.karate.junit5.Karate;

class ApiTest {

    @Karate.Test
    Karate testApi() {
        return Karate.run("classpath:examples/api-test.feature");
    }
}