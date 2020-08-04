package com.zx.service.impl;

import com.zx.dao.EmployeeDao;
import com.zx.dto.EmployeeExecution;
import com.zx.entity.Employee;
import com.zx.service.EmployeeService;
import com.zx.util.PageCalculator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public EmployeeExecution getEmployeeList(Employee employeeCondition, int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		int rowIndex = PageCalculator.calculatorRowIndex(pageIndex, pageSize);
		List<Employee> employeeList = employeeDao.queryEmployeeList(employeeCondition, rowIndex, pageSize);
		int count = employeeDao.queryEmployeeCount(employeeCondition);
		//临时存储数据封装对象（作用：不需要写两个方法去对数据，数量的获取，只需要一个实体携带两个数据返回）
		EmployeeExecution employeeExecution = new EmployeeExecution();
		if (employeeList!=null) {
			employeeExecution.setEmployeeList(employeeList);
			employeeExecution.setCount(count);
			employeeExecution.setStateInfo("成功得到数据");
		}else {
			return new EmployeeExecution("没有对应数据");
		}
		return employeeExecution;
	}
	
	@Override
	public List<Employee> getAllEmployeeList() {
		// TODO Auto-generated method stub
		return employeeDao.queryAllEmployeeList();
	}
	
	@Override
	public int addEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDao.insertEmployee(employee);
	}

	@Override
	public int removeEmployee(long employeeId) {
		// TODO Auto-generated method stub
		return employeeDao.deleteEmployeeById(employeeId);
	}

	@Override
	public int modifyEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDao.updateEmployee(employee);
	}

	@Override
	public Employee getEmployeeById(long employeeId) {
		// TODO Auto-generated method stub
		return employeeDao.queryEmployeeById(employeeId);
	}

}
