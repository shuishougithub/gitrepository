/**
 * 
 */
package com.bjpowernode.esupermarket.portal.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjpowernode.esupermarket.common.ApplicationConstant;
import com.bjpowernode.esupermarket.common.exception.NameOrPasswordException;
import com.bjpowernode.esupermarket.manager.domain.Customer;
import com.bjpowernode.esupermarket.portal.service.CustomerService;

/**
 * <p>
 * ClassName:CustomerController
 * <p>
 * <p>
 * Description:
 * <p>
 * 
 * @author wang94
 *
 * @date 2017年8月30日 下午4:34:19
 */
@Controller
@RequestMapping(value = "/customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	// 注册功能
	// 需要将 用户信息存入到数据库中 cookie 存入数据库 并删除
	@RequestMapping(value = "register.do")
	@ResponseBody
	public Object register(HttpSession session, HttpServletRequest request, Customer customer,
			HttpServletResponse response) {
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		try {
			Map<String, Object> registerMap = customerService.registerCustomer(request, response, customer);
			session.setAttribute(ApplicationConstant.SESSION_CUSTOMER,
					registerMap.get(ApplicationConstant.SESSION_CUSTOMER));
			session.setAttribute(ApplicationConstant.SHOP_CART_COUNT, registerMap.get("total"));
			jsonMap.put("success", true);
		} catch (Exception e) {
			jsonMap.put("success", false);
		}
		return jsonMap;
	}

	// 验证手机号
	@RequestMapping(value = "checkphone.do")
	@ResponseBody
	public Object checkPhone(String phone) {
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		Customer customer = customerService.getCustomerByPhone(phone);
		if (customer == null) {
			jsonMap.put("success", true);
		} else {
			jsonMap.put("success", false);
		}

		return jsonMap;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/index.do";
	}

	// 登录 功能
	@RequestMapping("login.do")
	@ResponseBody
	public Object login(Customer customer, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> jsonMap = new HashMap<>();
		// 调用service层进行处理
		try {
			//将datamap 中的 customer  与total 存入到session中去
			Map<String, Object> dataMap = customerService.loginCustomer(request, response, customer);
			session.setAttribute(ApplicationConstant.SESSION_CUSTOMER, dataMap.get(ApplicationConstant.SESSION_CUSTOMER));
			session.setAttribute(ApplicationConstant.SHOP_CART_COUNT, dataMap.get("total"));
			jsonMap.put("success", true);
		} catch (NameOrPasswordException e) {
			//出现异常就将异常信息返回到前台
			jsonMap.put("success", false);
			jsonMap.put("errorMsg", e.getMessage());
		}
		return jsonMap;
	}
}
