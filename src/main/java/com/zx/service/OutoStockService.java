package com.zx.service;

import com.zx.dto.TExecution;
import com.zx.entity.SaleOrder;

public interface OutoStockService {
	/**
	 * 通过入库销售单审核状态
	 * @param saleOrder
	 * @return
	 */
	int modifyOutoStockSaleOrderCheck(SaleOrder saleOrder);
	/**
	 * 条件分页查询销售单(返回泛型销售单列表)
	 * @param saleOrderCondition
	 * @return
	 */
	TExecution<SaleOrder> getOutoStockPurchaseOrderCheckList(SaleOrder saleOrderCondition, int pageIndex, int pageSize);
}
