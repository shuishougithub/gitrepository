/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

/**
 *<p>ClassName:Order<p>
 *<p>Description:订单<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:11:45
 */
public class Order {
	/**
	 * 订单id
	 */
	private Integer id;
	/**
	 * 订单编号
	 */
	private String orderNo;
	/**
	 * 收货地址
	 */
	private Integer receiveId;
	/**
	 * 下单时间
	 */
	private String orderTime;
	/**
	 * 订单状态（已付款与未付款）
	 */
	private String status;
	/**
	 * 顾客id
	 */
	private Integer customerId;
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
	 * @return the orderNo
	 */
	public String getOrderNo() {
		return orderNo;
	}
	/**
	 * @param orderNo the orderNo to set
	 */
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	/**
	 * @return the receiveId
	 */
	public Integer getReceiveId() {
		return receiveId;
	}
	/**
	 * @param receiveId the receiveId to set
	 */
	public void setReceiveId(Integer receiveId) {
		this.receiveId = receiveId;
	}
	/**
	 * @return the orderTime
	 */
	public String getOrderTime() {
		return orderTime;
	}
	/**
	 * @param orderTime the orderTime to set
	 */
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
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
    
	
	
}
