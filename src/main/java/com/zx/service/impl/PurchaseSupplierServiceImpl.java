package com.zx.service.impl;

import com.zx.dao.PurchaseSupplierDao;
import com.zx.dto.TExecution;
import com.zx.entity.Supplier;
import com.zx.service.PurchaseSupplierService;
import com.zx.util.PageCalculator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PurchaseSupplierServiceImpl implements PurchaseSupplierService {
	
	@Autowired
	private PurchaseSupplierDao purchaseSupplierDao;
	
	@Override
	public int addPurchaseSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		return purchaseSupplierDao.insertPurchaseSupplie(supplier);
	}

	@Override
	public int removePurchaseSupplier(long supplierId) {
		// TODO Auto-generated method stub
		return purchaseSupplierDao.deletePurchaseSupplieById(supplierId);
	}

	@Override
	public int modifyPurchaseSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		return purchaseSupplierDao.updatePurchaseSupplie(supplier);
	}

	@Override
	public Supplier getPurchaseSupplierById(long supplierId) {
		// TODO Auto-generated method stub
		return purchaseSupplierDao.queryPurchaseSupplierById(supplierId);
	}
	
	@Override
	public List<Supplier> getAllSupplierList() {
		// TODO Auto-generated method stub
		return purchaseSupplierDao.queryAllSupplierList();
	}

	@Override
	public TExecution<Supplier> getPurchaseSupplierList(String supplierName, int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		int rowIndex = PageCalculator.calculatorRowIndex(pageIndex, pageSize);
		List<Supplier> purchaseSupplierList = purchaseSupplierDao.queryPurchaseSupplierList(supplierName, rowIndex, pageSize);
		int count = purchaseSupplierDao.queryPurchaseSupplierCount(supplierName);
		TExecution<Supplier> supplierExecution = new TExecution<Supplier>();
		if (purchaseSupplierList!=null) {
			supplierExecution.setData(purchaseSupplierList);
			supplierExecution.setCount(count);
			supplierExecution.setStateInfo("成功得到数据");
		}else {
			return new TExecution<Supplier>("数据获取失败");
		}
		return supplierExecution;
	}

}
