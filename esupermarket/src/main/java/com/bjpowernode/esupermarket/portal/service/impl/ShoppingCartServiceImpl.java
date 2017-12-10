/**
 * 
 */
package com.bjpowernode.esupermarket.portal.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjpowernode.esupermarket.common.utils.CookieUtils;
import com.bjpowernode.esupermarket.manager.dao.ProductDao;
import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.portal.domain.ShoppingCartVO;
import com.bjpowernode.esupermarket.portal.service.ShoppingCartService;

/**
 *<p>ClassName:ShoppingCartServiceImpl<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午9:27:28
 */
@Service(value="shoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService {
     
	@Autowired
	private ProductDao productDao;
	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.portal.service.ShoppingCartService#addProductToCookie(javax.servlet.http.HttpServletRequest, java.lang.Integer, java.lang.Integer, javax.servlet.http.HttpServletResponse, java.lang.String)
	 */
	@Override
	public void addProductToCookie(HttpServletRequest request, Integer purchaseCount, Integer id,
			HttpServletResponse response, String cookieKey) {
		  //得到所用的cookie
		  Cookie[] cookies = request.getCookies();
		  //遍历所有的cookie
		  String shops="";
		    for(Cookie cookie :cookies){
		   //存在cookieKey 的cookie
		    	if(cookieKey.equals(cookie.getName())){
		    		
		    		shops = cookie.getValue();	
		    	}
		    }
		  //使用shop 接受value 将value以，分隔 前部分为id 后面为number
     //判断shops是否为空  
		   StringBuffer newShops=new StringBuffer();
		   
		    boolean flag = false;
	   if(!"".equals(shops)){  // 1-1 2-2 3-3
		   String[] productArray = shops.split(",");
		    //遍历array 
		      for(String productDetail:productArray){
		    	  String[]id_Num = productDetail.split("-");
		    	  //判断 id是否为 当前id
		    	  if(id.equals(Integer.parseInt(id_Num[0]))){
		    		  Integer num=Integer.valueOf(id_Num[1]);
		    		  num+=purchaseCount;
	                 id_Num[1]=num.toString();
	                 flag = true;
		    	  }
		    	   productDetail=id_Num[0]+"-"+id_Num[1];
		    	  newShops.append(productDetail).append(",");	  
		      }
	   }else{
		   shops=id+"-"+purchaseCount;
	   }
	    
	   //根据存不存在 分开处理
	   if(flag){
		   shops = newShops.toString().substring(0,newShops.lastIndexOf(","));
	   }else{
		   shops = newShops.toString()+id+"-"+purchaseCount;
	   }
	 //将shops 存入cookie中
		Cookie cookie = new Cookie(cookieKey, shops);
		//设置cookie 的时限 
		cookie.setMaxAge(7*24*3600);
		cookie.setPath("/");
		response.addCookie(cookie);
		
		
		
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.portal.service.ShoppingCartService#showShoppingCart(javax.servlet.http.HttpServletRequest, java.lang.String)
	 */
	@Override
	public Map<String, Object> showShoppingCart(HttpServletRequest request, String cookieKey) {
		//1.得到所有的cookie 
		Cookie[] cookies = request.getCookies();
		String shops = CookieUtils.getCookieValue(cookieKey, request);
		  Integer total =0;  //1-1,2-2,3-3
		  Map<String,Object>shoppingCartMap =new HashMap<String, Object>();
		  Product product;
		if("".equals(shops)){
		   total = 0;
		   shoppingCartMap.put("total", total);
		}else{
			String[] productArray = shops.split(",");
			List<ShoppingCartVO>shoppingCartVOList = new ArrayList<>();
		    for(String prod :productArray){
		    	String[] id_num =prod.split("-");
		    	  Integer id=Integer.parseInt(id_num[0]);
		    	   product = productDao.getProductById(id);
		    	    if(product!=null){
		    	    	ShoppingCartVO shoppingCartVO = new ShoppingCartVO();
		    	    	shoppingCartVO.setImage1(product.getImage1());
		    	    	shoppingCartVO.setPrice(product.getPrice());
		    	    	shoppingCartVO.setTitle(product.getTitle());
		    	    	shoppingCartVO.setProductId(id);
		    	    	shoppingCartVO.setPurchaseCount(Integer.valueOf(id_num[1]));
		    	        total+=shoppingCartVO.getPurchaseCount();
		    	        shoppingCartVOList.add(shoppingCartVO);
		    	    }
		    }
		    shoppingCartMap.put("total", total);
		    shoppingCartMap.put("shoppingCartVOList",shoppingCartVOList);
		    
		}
		return shoppingCartMap;
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.portal.service.ShoppingCartService#deleteProductFromShoppingCart(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.String, java.lang.Integer)
	 */
	@Override
	public void deleteProductFromShoppingCart(HttpServletRequest request, HttpServletResponse response,
			String cookieKey, Integer id) {
		Cookie[] cookies = request.getCookies();
		String shops = CookieUtils.getCookieValue(cookieKey, request);
		//如果 shops不为空
		if(!"".equals(shops)){
			String[]productArray = shops.split(",");
			StringBuffer newshops = new StringBuffer();
			//遍历商品id ，查找到相同的id就delete
			for(String shop : productArray){
				String[]id_num = shop.split("-");
				  if(id.equals(Integer.valueOf(id_num[0]))){  
				   }else{
					  newshops.append(shop).append(",");
				   } 
			}
			shops=newshops.toString().substring(0, newshops.lastIndexOf(","));
		}
	  CookieUtils.setCookieValue(cookieKey,shops, response);
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.portal.service.ShoppingCartService#updateProductFromShoppingCart(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.String, java.lang.Integer)
	 */
	@Override
	public void updateProductFromShoppingCart(HttpServletRequest request, HttpServletResponse response,
			String cookieKey, Integer productId,Integer updateCount) {
		Cookie[] cookies = request.getCookies();
		String shops = CookieUtils.getCookieValue(cookieKey, request);
		System.out.println(shops);
		String[]productArray = shops.split(",");
		StringBuffer newshops = new StringBuffer();
		//遍历商品id ，查找到相同的id就delete
		if(!"".equals(shops)){
		for(String shop : productArray){
			String[]id_num = shop.split("-");
			  if(productId.equals(Integer.valueOf(id_num[0]))){  
				  Integer num=Integer.valueOf(id_num[1]);
	    		   num=updateCount;
                   id_num[1]=num.toString();
                    newshops.append(id_num[0]).append("-").append(id_num[1]).append(",");
			   }else{
			    newshops.append(shop).append(",");
			   }
		}
		shops=newshops.toString().substring(0,newshops.lastIndexOf(","));
	  }else{
		shops=productId+"-"+updateCount;
  }
		CookieUtils.setCookieValue(cookieKey, shops, response);	
	}
   	
}
