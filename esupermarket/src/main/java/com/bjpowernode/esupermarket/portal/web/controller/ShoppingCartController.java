/**
 * 
 */
package com.bjpowernode.esupermarket.portal.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjpowernode.esupermarket.common.ApplicationConstant;
import com.bjpowernode.esupermarket.portal.domain.ShoppingCartVO;
import com.bjpowernode.esupermarket.portal.service.ShoppingCartService;

/**
 *<p>ClassName:ShoppingCartController<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午8:56:59
 */
@Controller
@RequestMapping("/shoppingcart")
public class ShoppingCartController {
	@Resource(name="shoppingCartService")
   private ShoppingCartService shoppingCartService;
  @RequestMapping(value="addshoppingcart")
  public String addShoppingCart(HttpSession session,HttpServletRequest request,HttpServletResponse response,Integer purchaseCount,Integer id){
	   //1.需要判断用户是否存在   定义 session中的用户key为常量
	     //用户不存在的情况
	  if(session.getAttribute(ApplicationConstant.SESSION_CUSTOMER)==null){
		  //将下面的操作移动到service层
		  shoppingCartService.addProductToCookie(request,purchaseCount,id,response,ApplicationConstant.COOKIE_KEY);
		
	  }else{
		  //已登录
	  }
	 
	  return "redirect:showShoppingCart.do";
  } 
    //这个方法需要 查询  list 与  商品的总数量
   @RequestMapping("showShoppingCart")
   public String showShoppingCart(HttpSession session,HttpServletRequest request,Model model){
	   //1.判断是否登录了
	if(session.getAttribute(ApplicationConstant.SESSION_CUSTOMER)==null){
		//未登录 就 查询 cookie中的商品
		Map<String,Object> shoppingCartMap = shoppingCartService.showShoppingCart(request,ApplicationConstant.COOKIE_KEY);
		model.addAttribute("shoppingCartVOList",shoppingCartMap.get("shoppingCartVOList"));
		model.addAttribute(ApplicationConstant.SHOP_CART_COUNT, shoppingCartMap.get("total"));
	}else{
		//已登录
	}
	   return "portal/shopping";
   }
   
   
     @RequestMapping(value="deleteProduct.do")
     @ResponseBody
    public Object deleteProductFromShoppingCart(HttpSession session,HttpServletRequest request,HttpServletResponse response,Integer productId){
     //1.判断是否登录
    	 Map<String, Object> jsonMap = new HashMap<>();
     if(session.getAttribute(ApplicationConstant.SESSION_CUSTOMER)==null){
      //没有登录 仅仅从cookie中删除就可以了
    	try{
    	 shoppingCartService.deleteProductFromShoppingCart(request,response,ApplicationConstant.COOKIE_KEY,productId);
    	 jsonMap.put("success", true);
    	}catch(Exception e){
    	 jsonMap.put("success", false);
    	}
     }
    	return jsonMap;
    }
     @RequestMapping(value="updateProduct.do")
     @ResponseBody
    public Object updateProductFromShoppingCart(HttpSession session,HttpServletRequest request,Integer productId,Integer updateCount,HttpServletResponse response){
    	 Map<String, Object> jsonMap = new HashMap<>();
         if(session.getAttribute(ApplicationConstant.SESSION_CUSTOMER)==null){
          //没有登录 仅仅从cookie中删除就可以了
        	try{
        	 shoppingCartService.updateProductFromShoppingCart(request,response,ApplicationConstant.COOKIE_KEY,productId,updateCount);
        	 jsonMap.put("success", true);
        	}catch(Exception e){
        	 jsonMap.put("success", false);
        	}
         }else{
        	 
         }
        	return jsonMap;
    }
}
