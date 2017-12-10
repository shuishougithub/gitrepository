/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

/**
 *<p>ClassName:OrderDetail<p>
 *<p>Description: 订单详情<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:19:03
 */
public class OrderDetail {
	/**
	 * 订单详情id
	 */
	private Integer id;
	/**
	 * 商品id
	 */
	private Integer productId;
	/**
	 * 购买数量
	 */
	private Integer purchaseCount;
	/**
	 * 订单id
	 */
	private Integer orderId;
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
	 * @return the orderId
	 */
	public Integer getOrderId() {
		return orderId;
	}
	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
    
	
}
