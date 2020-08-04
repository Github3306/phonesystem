package com.zx.service;

import com.zx.entity.EchartsData;

import java.util.List;

public interface EchartsDataService {
	/**
	 * 得到12月份的12个存储总数和总额的实体-采购单
	 * @return
	 */
	List<EchartsData> getEchartsDataList();
	/**
	 * 得到12月份的12个存储总数和总额的实体-销售单
	 * @return
	 */
	List<EchartsData> getSaleOrderEchartsDataList();
}
