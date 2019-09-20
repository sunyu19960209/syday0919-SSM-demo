package com.wb.crud.service.impl;

import com.wb.crud.bean.Employee;
import com.wb.crud.dao.EmployeeMapper;
import com.wb.crud.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class EmpServiceImpl implements EmpService {
    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public List<Map> listAll(Employee employee) {

        return employeeMapper.listAll(employee);
    }
}
