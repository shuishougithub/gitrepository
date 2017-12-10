/**
 * 
 */
package com.bjpowernode.esupermarket.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjpowernode.esupermarket.common.ApplicationConstant;

/**
 *<p>ClassName:MainController<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午8:20:55
 */
@Controller
@RequestMapping("/main")
public class MainController {
  @RequestMapping("/index.do")
	public String index(){
		return "portal/index";
	}
  @RequestMapping("/login.do")
  public String login(String returnURL,Model model){
	  model.addAttribute(ApplicationConstant.RETURN_URL,returnURL);
	  return "portal/login";
  }
  /**
   * 显示登录界面
   */
   @RequestMapping("/register.do")
  public String register(String returnURL,Model model){
	  
	   model.addAttribute(ApplicationConstant.RETURN_URL,returnURL);
	  return "portal/register";
  }
}
