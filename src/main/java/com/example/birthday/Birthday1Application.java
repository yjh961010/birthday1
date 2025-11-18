package com.example.birthday;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Birthday1Application extends SpringBootServletInitializer {

    // WAR 배포 시 Tomcat에서 실행 가능하도록 설정
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Birthday1Application.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(Birthday1Application.class, args);
    }
}
