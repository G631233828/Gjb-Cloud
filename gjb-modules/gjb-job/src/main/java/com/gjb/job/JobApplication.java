package com.gjb.job;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.gjb.common.security.annotation.EnableCustomConfig;
import com.gjb.common.security.annotation.EnableRyFeignClients;
import com.gjb.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 定时任务
 * 
 * @author gjb
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients   
@SpringBootApplication
public class JobApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(JobApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  定时任务模块启动成功   ");
    }
}
