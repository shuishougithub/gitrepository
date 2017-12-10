/**
 * 
 */
package com.bjpowernode.esupermarket.common.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.annotation.JsonFormat.Value;

/**
 * cookie 操作的工具类
 *<p>ClassName:CookieUtils<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月29日 下午9:30:55
 */
public class CookieUtils {
  
	/**
	 * 获取指定cookiekey 的cookievalue
	 * @param key
	 * @param request
	 * @return
	 */
	public static String getCookieValue(String key ,HttpServletRequest request){
		 //得到所用的cookie
		  Cookie[] cookies = request.getCookies();
		  //遍历所有的cookie
		  String shops="";
		    for(Cookie cookie :cookies){
		   //存在cookieKey 的cookie
		    	if(key.equals(cookie.getName())){
		    		
		    		shops = cookie.getValue();	
		    	}
		    }
		    return shops;
	}
	
	public static void setCookieValue(String key,String value,HttpServletResponse response){
		 //将shops 存入cookie中
		Cookie cookie = new Cookie(key,value);
		//设置cookie 的时限 
		cookie.setMaxAge(7*24*3600);
		cookie.setPath("/");
		response.addCookie(cookie);
	}
}
