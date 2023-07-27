package com.gjb.system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.gjb.common.security.annotation.EnableCustomConfig;
import com.gjb.common.security.annotation.EnableRyFeignClients;
import com.gjb.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 系统模块
 * 
 * @author gjb
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class SystemApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SystemApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  系统模块启动成功     ");
    }
}
