package com.wb.crud.controller;

import com.wb.crud.bean.Employee;
import com.wb.crud.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class EmpController {
    @Autowired
    private EmpService empService;
    @GetMapping("/list")
    public String list(Model model, Employee employee){
        List<Map> list = empService.listAll(employee);
        model.addAttribute("list",list);
        return "emp_list";
    }
}
