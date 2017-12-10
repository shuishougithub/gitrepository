/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

/**
 *<p>ClassName:ProductCondition<p>
 *<p>Description:商品查询条件<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:55:43
 */
public class ProductCondition {
	private Integer skipNo;
	/**
	 * @return the skipNo
	 */
	public Integer getSkipNo() {
		return skipNo;
	}
	/**
	 * @param skipNo the skipNo to set
	 */
	public void setSkipNo(Integer skipNo) {
		this.skipNo = skipNo;
	}
	/**
	 * 每页显示条数
	 */
	private Integer pageSize;
	/**
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}
	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	/**
	 * @return the pageNo
	 */
	public Integer getPageNo() {
		return pageNo;
	}
	/**
	 * @param pageNo the pageNo to set
	 */
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	/**
	 * 当前页码
	 */
	private Integer pageNo;
	/**
	 * 商品编号
	 */
    private String productNo;
    /**
     *商品标题
     */
    private String title;
    /**
     * 
     */
    private Double price;
    /**
     * 商品卖点
     */
    private String sellPoint;
    /**
     * 商品状态
     */
    private String status;
	/**
	 * @return the productNo
	 */
	public String getProductNo() {
		return productNo;
	}
	/**
	 * @param productNo the productNo to set
	 */
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the price
	 */
	public Double getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(Double price) {
		this.price = price;
	}
	/**
	 * @return the sellPoint
	 */
	public String getSellPoint() {
		return sellPoint;
	}
	/**
	 * @param sellPoint the sellPoint to set
	 */
	public void setSellPoint(String sellPoint) {
		this.sellPoint = sellPoint;
	}
	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
    
    
}
