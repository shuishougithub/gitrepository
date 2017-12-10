/**
 * 
 */
package com.bjpowernode.esupermarket.portal.dao;

import com.bjpowernode.esupermarket.manager.domain.Customer;

/**
 *<p>ClassName:CustomerDao<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月30日 下午6:00:54
 */
public interface CustomerDao {

	/**
	 * 插入一个新用户，并返回主键
	 * @param customer
	 * @return
	 */
	Integer insertCustomer(Customer customer);

	/**
	 * 根据手机号查询用户
	 * @param phone
	 * @return
	 */
	Customer getCustomerByPhone(String phone);

	/**
	 * 根据 手机号与 密码查询 用户
	 * @param customer
	 * @return
	 */
	Customer getCustomerByPwdAndPhone(Customer customer);

} 
