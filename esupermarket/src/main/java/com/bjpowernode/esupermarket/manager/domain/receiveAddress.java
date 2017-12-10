/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

/**
 *<p>ClassName:receiveAddress<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:29:19
 */
public class receiveAddress {
	/**
	 * 收货地址id
	 */
	private Integer id;
	/**
	 * 收货人姓名
	 */
	private String name;
	/**
	 * 收货人手机
	 */
	private String phone;
	/**
	 * 收货地址
	 */
	private String address;
	/**
	 * 收货状态
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
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
