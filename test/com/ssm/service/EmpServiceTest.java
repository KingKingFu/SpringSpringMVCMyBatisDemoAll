package com.ssm.service;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.Assert.*;


public class EmpServiceTest {

    private EmpService empService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext act=new ClassPathXmlApplicationContext("spring/applicationContext.xml");
        empService= (EmpService) act.getBean("empServiceImpl");
    }

    @Test
    public void login() throws Exception {

    }

    @Test
    public void findEmpAuths() throws Exception {
        System.out.println(empService.findEmpAuths(3));
    }

    @Test
    public void findAllEmp() throws Exception {
        System.out.println(empService.findAllEmp());
    }

}