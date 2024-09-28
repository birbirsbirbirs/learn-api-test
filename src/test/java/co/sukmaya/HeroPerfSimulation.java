package co.sukmaya;

import com.intuit.karate.gatling.javaapi.KarateProtocolBuilder;
import io.gatling.javaapi.core.ScenarioBuilder;
import io.gatling.javaapi.core.Simulation;

import static com.intuit.karate.gatling.javaapi.KarateDsl.*;
import static io.gatling.javaapi.core.CoreDsl.rampUsers;
import static io.gatling.javaapi.core.CoreDsl.scenario;

public class HeroPerfSimulation extends Simulation {

    public HeroPerfSimulation() {

        KarateProtocolBuilder protocol = karateProtocol(
                uri("/hero").nil()
        );

        ScenarioBuilder main = scenario("main").exec(karateFeature("classpath:co/sukmaya/api/Get-ktd1.feature"));

        setUp(
                main.injectOpen(rampUsers(100).during(5)).protocols(protocol)
        );
    }

}
