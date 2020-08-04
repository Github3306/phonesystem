package com.zx.service;

import com.zx.dto.TExecution;
import com.zx.entity.PurchaseOrder;

public interface IntoStockService {
	/**
	 * 通过入库采购单审核状态
	 * @param purchaseOrder
	 * @return
	 */
	int modifyIntoStockPurchaseOrderCheck(PurchaseOrder purchaseOrder);
	/**
	 * 条件分页查询采购单(返回泛型销售单列表)
	 * @param purchaseOrderCondition
	 * @return
	 */
	TExecution<PurchaseOrder> getIntoStockPurchaseOrderCheckList(PurchaseOrder purchaseOrderCondition, int pageIndex, int pageSize);
}
