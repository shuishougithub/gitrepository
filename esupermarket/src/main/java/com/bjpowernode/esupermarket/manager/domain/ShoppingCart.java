/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

/**
 *<p>ClassName:ShoppingCart<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:32:56
 */
public class ShoppingCart {
	/**
	 * 购物车id
	 */
	private Integer id;
	/**
	 * 顾客id
	 */
	private Integer customerId;
	/**
	 * 商品id
	 */
	private Integer productId;
	/**
	 * 购买数量
	 */
	private Integer purchaseCount;
	/**
	 * 购买状态 '0：默认未下单
     *      1：已下单',
	 */
	private String status;
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the customerId
	 */
	public Integer getCustomerId() {
		return customerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	/**
	 * @return the productId
	 */
	public Integer getProductId() {
		return productId;
	}
	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	/**
	 * @return the purchaseCount
	 */
	public Integer getPurchaseCount() {
		return purchaseCount;
	}
	/**
	 * @param purchaseCount the purchaseCount to set
	 */
	public void setPurchaseCount(Integer purchaseCount) {
		this.purchaseCount = purchaseCount;
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
