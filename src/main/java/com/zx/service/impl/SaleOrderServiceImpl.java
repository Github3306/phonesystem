package com.zx.service.impl;

import com.zx.dao.SaleCustomerDao;
import com.zx.dao.SaleOrderDao;
import com.zx.dto.TExecution;
import com.zx.entity.Customer;
import com.zx.entity.SaleOrder;
import com.zx.service.SaleOrderService;
import com.zx.util.OrderNumberUtil;
import com.zx.util.PageCalculator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class SaleOrderServiceImpl implements SaleOrderService {
	
	@Autowired
	private SaleOrderDao saleOrderDao;
	
	@Autowired
	private SaleCustomerDao saleCustomerDao;
	
	@Override
	public int addSaleOrder(SaleOrder saleOrder) {
		// TODO Auto-generated method stub	session获取创建者未实现
		//1.生成订单随机数时间+五位随机
		OrderNumberUtil orderNumberUtil = new OrderNumberUtil();
		String orderNumber = orderNumberUtil.getRandomFileName();
		//2.根据采客户Id查询客户Name
		Long customerId = saleOrder.getCustomer().getCustomerId();
		Customer customer = saleCustomerDao.querySaleCustomerById(customerId);
		String customerName = customer.getName();
		//3.需要根据前台的count和unitPrice计算TotalPrice
		int count = saleOrder.getCount();
		Double unitPrice = saleOrder.getUnitPrice();
		Double totalPrice = (double) (count*unitPrice);
		//4.设置初始化信息
		saleOrder.setCustomerName(customerName);
		saleOrder.setOrderNumber(orderNumber);
		saleOrder.setTotalPrice(totalPrice);
		saleOrder.setCreateTime(new Date());
		saleOrder.setCheckState(0);
		saleOrder.setCheckResult("待审核");
		saleOrder.setStockState(0);
		return saleOrderDao.insertSaleOrder(saleOrder);
	}

	@Override
	public int removeSaleOrder(long sorderId) {
		// TODO Auto-generated method stub
		return saleOrderDao.deleteSaleOrderById(sorderId, 0);
	}

	@Override
	public int modifySaleOrder(SaleOrder saleOrder) {
		// TODO Auto-generated method stub	后期可能会对商品，客户，仓库进行业务更新
		//重新计算价格、只有创建时间没有更新时间
		int count = saleOrder.getCount();
		Double unitPrice = saleOrder.getUnitPrice();
		Double totalPrice = (double) (count*unitPrice);
		saleOrder.setTotalPrice(totalPrice);
		return saleOrderDao.updateSaleOrder(saleOrder);
	}

	@Override
	public SaleOrder getSaleOrderById(long sorderId) {
		// TODO Auto-generated method stub
		return saleOrderDao.querySaleOrderById(sorderId);
	}

	@Override
	public TExecution<SaleOrder> getSaleOrderList(SaleOrder saleOrderCondition, int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		int rowIndex = PageCalculator.calculatorRowIndex(pageIndex, pageSize);
		List<SaleOrder> saleOrderList = saleOrderDao.querySaleOrderList(saleOrderCondition, rowIndex, pageSize);
		int count = saleOrderDao.querySaleOrderCount(saleOrderCondition);
		TExecution<SaleOrder> saleOrderExecution = new TExecution<SaleOrder>();
		if (saleOrderList!=null) {
			saleOrderExecution.setData(saleOrderList);
			saleOrderExecution.setCount(count);
			saleOrderExecution.setStateInfo("成功得到数据");
		}else {
			return new TExecution<SaleOrder>("数据获取失败");
		}
		return saleOrderExecution;
	}

}
