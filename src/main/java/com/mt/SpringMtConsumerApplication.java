package com.mt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource(value = {"classpath:dubbo-consumer.xml"} )
public class SpringMtConsumerApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringMtConsumerApplication.class, args);
	}
}
