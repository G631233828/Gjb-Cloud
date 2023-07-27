package com.gjb.gen;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.gjb.common.security.annotation.EnableCustomConfig;
import com.gjb.common.security.annotation.EnableRyFeignClients;
import com.gjb.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 代码生成
 * 
 * @author gjb
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class GenApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(GenApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  代码生成模块启动成功   ");
    }
}
