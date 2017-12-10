/**
 * 
 */
package com.bjpowernode.esupermarket.portal.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bjpowernode.esupermarket.common.exception.NameOrPasswordException;
import com.bjpowernode.esupermarket.manager.domain.Customer;

/**
 * 购物车相关业务处理方法
 *<p>ClassName:ShoppingCartService<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午9:25:58
 */
public interface CustomerService {

	/**
	 * 注册新用户
	 * @param request
	 * @param response
	 * @param customer
	 * @return
	 */
	Map<String, Object> registerCustomer(HttpServletRequest request, HttpServletResponse response, Customer customer);

	/**
	 * 根据手机号查询用户
	 * @param phone
	 * @return 
	 */
	Customer getCustomerByPhone(String phone);

	/**
	 * @param session
	 * @param request
	 * @param response
	 * @param customer
	 * @return
	 * @throws NameOrPasswordException 
	 */
	Map<String, Object> loginCustomer(HttpServletRequest request, HttpServletResponse response,
			Customer customer) throws NameOrPasswordException;


}
