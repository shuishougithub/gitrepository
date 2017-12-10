/**
 * 
 */
package com.bjpowernode.esupermarket.manager.domain;

/**
 *<p>ClassName:Customer<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:06:31
 */
public class Customer {
	/**
	 * 顾客id
	 */
	private Integer id;
	/**
	 * 顾客编号
	 */
	private String customerNo;
	/**
	 * 顾客昵称
	 */
	private String nickname;
	/**
	 * 顾客手机
	 */
	private String phone;
	/**
	 * 顾客密码
	 */
	private String password;
	/**
	 * 帐号创建时间
	 */
	private String createTime;
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
	 * @return the customerNo
	 */
	public String getCustomerNo() {
		return customerNo;
	}
	/**
	 * @param customerNo the customerNo to set
	 */
	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}
	/**
	 * @return the nickname
	 */
	public String getNickname() {
		return nickname;
	}
	/**
	 * @param nickname the nickname to set
	 */
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the createTime
	 */
	public String getCreateTime() {
		return createTime;
	}
	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
     
	
}
