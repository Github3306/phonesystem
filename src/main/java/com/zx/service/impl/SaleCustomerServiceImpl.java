package com.zx.service.impl;

import com.zx.dao.SaleCustomerDao;
import com.zx.dto.TExecution;
import com.zx.entity.Customer;
import com.zx.service.SaleCustomerService;
import com.zx.util.PageCalculator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleCustomerServiceImpl implements SaleCustomerService {
	
	@Autowired
	private SaleCustomerDao saleCustomerDao;

	@Override
	public int addSaleCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return saleCustomerDao.insertSaleCustomer(customer);
	}

	@Override
	public int removeSaleCusotmer(long customerId) {
		// TODO Auto-generated method stub
		return saleCustomerDao.deleteSaleCustomer(customerId);
	}

	@Override
	public int modifySaleCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return saleCustomerDao.updateSaleCustomer(customer);
	}

	@Override
	public Customer getCustomerById(long customerId) {
		// TODO Auto-generated method stub
		return saleCustomerDao.querySaleCustomerById(customerId);
	}

	@Override
	public List<Customer> getAllCustomerList() {
		// TODO Auto-generated method stub
		return saleCustomerDao.queryAllCustomerList();
	}

	@Override
	public TExecution<Customer> getSaleCustomerList(String customerName, int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		int rowIndex = PageCalculator.calculatorRowIndex(pageIndex, pageSize);
		List<Customer> saleCustomerList = saleCustomerDao.querySaleCustomerList(customerName, rowIndex, pageSize);
		int count = saleCustomerDao.querySaleCustomerCount(customerName);
		TExecution<Customer> customerExecution = new TExecution<Customer>();
		if (saleCustomerList!=null) {
			customerExecution.setData(saleCustomerList);
			customerExecution.setCount(count);
			customerExecution.setStateInfo("成功得到数据");
		}else {
			return new TExecution<Customer>("数据获取失败");
		}
		return customerExecution;
	}

}
