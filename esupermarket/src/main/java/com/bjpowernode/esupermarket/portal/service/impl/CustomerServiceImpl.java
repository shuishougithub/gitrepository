/**
 * 
 */
package com.bjpowernode.esupermarket.portal.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjpowernode.esupermarket.common.ApplicationConstant;
import com.bjpowernode.esupermarket.common.exception.NameOrPasswordException;
import com.bjpowernode.esupermarket.common.utils.CookieUtils;
import com.bjpowernode.esupermarket.common.utils.DateUtils;
import com.bjpowernode.esupermarket.common.utils.MD5Utils;
import com.bjpowernode.esupermarket.manager.domain.Customer;
import com.bjpowernode.esupermarket.manager.domain.ShoppingCart;
import com.bjpowernode.esupermarket.portal.dao.CustomerDao;
import com.bjpowernode.esupermarket.portal.dao.ShoppingCartDao;
import com.bjpowernode.esupermarket.portal.service.CustomerService;

/**
 * <p>
 * ClassName:CustomerServiceImpl
 * <p>
 * <p>
 * Description:
 * <p>
 * 
 * @author wang94
 *
 * @date 2017年8月30日 下午4:36:11
 */
@Service(value = "customerService")
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;
	@Autowired
	private ShoppingCartDao shoppingCartDao;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.bjpowernode.esupermarket.portal.service.CustomerService#
	 * registerCustomer(javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse,
	 * com.bjpowernode.esupermarket.manager.domain.Customer)
	 */
	@Override
	public Map<String, Object> registerCustomer(HttpServletRequest request, HttpServletResponse response,
			Customer customer) {
		Map<String, Object> registerMap = new HashMap<String, Object>();
		// 1.将cusomer 的信息补充完整存入数据库 目前只有 phone 与未加密的password
		String password = customer.getPassword();
		String encrypt = MD5Utils.MD5(password);
		customer.setPassword(encrypt);
		customer.setCreateTime(DateUtils.getSystemTime());
		customer.setNickname("by" + customer.getPhone());
		customer.setCustomerNo(DateUtils.getTimemark());
		Integer id = customerDao.insertCustomer(customer);
		registerMap.put(ApplicationConstant.SESSION_CUSTOMER, customer);
		// 2.将cookie中数据遍历存入到 shoppcart表中
		Cookie[] cookies = request.getCookies();
		String shops = CookieUtils.getCookieValue(ApplicationConstant.COOKIE_KEY, request);
		Integer total = 0;
		if ("".equals(shops)) {
			total = 0;
			registerMap.put("total", total);
		} else {
			String[] productArray = shops.split(",");
			for (String prod : productArray) {
				String[] id_num = prod.split("-");
				Integer productId = Integer.parseInt(id_num[0]);
				Integer purchaseCount = Integer.parseInt(id_num[1]);
				ShoppingCart shoppingCart = new ShoppingCart();
				shoppingCart.setCustomerId(id);
				shoppingCart.setProductId(productId);
				shoppingCart.setPurchaseCount(purchaseCount);
				shoppingCart.setStatus(ApplicationConstant.SHOP_CART_PRODUCT_UNORDERED);
				shoppingCartDao.save(shoppingCart);
				total += purchaseCount;
			}
		}
		registerMap.put("total", total);
		// 3.删除cookie
		CookieUtils.setCookieValue(ApplicationConstant.COOKIE_KEY, "", response);
		return registerMap;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.bjpowernode.esupermarket.portal.service.CustomerService#
	 * getCustomerByPhone(java.lang.String)
	 */
	@Override
	public Customer getCustomerByPhone(String phone) {
		Customer customer = customerDao.getCustomerByPhone(phone);
		return customer;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.bjpowernode.esupermarket.portal.service.CustomerService#loginCustomer
	 * (javax.servlet.http.HttpSession, javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse,
	 * com.bjpowernode.esupermarket.manager.domain.Customer)
	 */
	@Override
	public Map<String, Object> loginCustomer(HttpServletRequest request, HttpServletResponse response,
			Customer customer) throws NameOrPasswordException {
		Map<String, Object> dataMap = new HashMap<>();
		// 1.首先 验证 用户名 与 密码 首先将密码通过MD5加密
		customer.setPassword(MD5Utils.MD5(customer.getPassword()));
		Customer originalCustomer = customerDao.getCustomerByPwdAndPhone(customer);
		Integer total = 0;
		// 2.用户存在
		if (originalCustomer == null) {
			throw new NameOrPasswordException("用户名或者密码错误");
		} else {
			dataMap.put(ApplicationConstant.SESSION_CUSTOMER, originalCustomer);
			// 2.将cookie中数据遍历存入到 shoppcart表中
			Cookie[] cookies = request.getCookies();
			String shops = CookieUtils.getCookieValue(ApplicationConstant.COOKIE_KEY, request);
			
			if ("".equals(shops)) {
				total = 0;

			} else {
				String[] productArray = shops.split(",");
				for (String prod : productArray) {
					String[] id_num = prod.split("-");
					Integer productId = Integer.parseInt(id_num[0]);
					Integer newCount = Integer.parseInt(id_num[1]);
					ShoppingCart newCart = new ShoppingCart();
					newCart.setCustomerId(originalCustomer.getId());
					newCart.setProductId(productId);
					newCart.setPurchaseCount(newCount);
					newCart.setStatus(ApplicationConstant.SHOP_CART_PRODUCT_UNORDERED);

					// 查找 是否 已经存在
					ShoppingCart originalCart = shoppingCartDao.getShoppingCartProduct(newCart);
					// 1.如果存在 就update
					if (originalCart != null) {
						newCart.setId(originalCart.getId());
						newCart.setPurchaseCount(newCount + originalCart.getPurchaseCount());
						shoppingCartDao.updateShoppingCart(newCart);
						total += newCart.getPurchaseCount();
					} else { // 如果 不存在就将数据插入到表中
						shoppingCartDao.save(newCart);
						total += newCart.getPurchaseCount();
					}

				}
				// 将购物车中的商品数量存入到session中

			}
		}
		dataMap.put("total",total);
		// 查询 帐号下面是否有商品
		// 遍历cookie 将 商品 加入到 数据库之中
		// 2.用户不存在
		// throw 异常

		return dataMap;
	}

}
