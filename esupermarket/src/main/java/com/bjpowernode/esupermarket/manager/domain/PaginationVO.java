/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

import java.util.List;

/**
 *<p>ClassName:paginationVO<p>
 *<p>Description:分页查询数据<p>
 * @author wang94
 * @param <T>
 *
 * @date 2017年8月25日 下午8:55:57
 */
public class PaginationVO<T> {
    /**
     * 商品列表
     */
	private List<T> dataList;
	/**
	 * 记录总数
	 */
    private Long total ;

	/**
	 * @return the dataList
	 */
	public List<T> getDataList() {
		return dataList;
	}
	/**
	 * @param dataList the dataList to set
	 */
	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}
	/**
	 * @return the total
	 */
	public Long getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(Long total) {
		this.total = total;
	}
    
}
