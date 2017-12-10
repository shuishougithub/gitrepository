/**
 * 
 */
package com.bjpowernode.esupermarket.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *<p>ClassName:OrderController<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午8:57:16
 */
@Controller
@RequestMapping("/order")
public class OrderController {
@RequestMapping("orderok")
  public String showOrder(){
	return "portal/orderok";
	}
  @RequestMapping("pay")
 public String pay(){
	 return "portal/pay";
 }
}
