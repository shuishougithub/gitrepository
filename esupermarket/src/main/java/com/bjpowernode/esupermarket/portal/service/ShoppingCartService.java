/**
 * 
 */
package com.bjpowernode.esupermarket.portal.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 购物车相关业务处理方法
 *<p>ClassName:ShoppingCartService<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午9:25:58
 */
public interface ShoppingCartService {

	/**
	 * 将商品数量加入到cookie中去
	 * @param request
	 * @param purchaseCount
	 * @param id
	 * @param response
	 * @param cookieKey
	 */
	void addProductToCookie(HttpServletRequest request, Integer purchaseCount, Integer id, HttpServletResponse response,
			String cookieKey);

	/**
	 * 显示购物车中物品的方法
	 * @param request
	 * @param cookieKey
	 * @return
	 */
	Map<String, Object> showShoppingCart(HttpServletRequest request, String cookieKey);

	/**
	 * 从购物车 中删除 商品
	 * @param request
	 * @param response
	 * @param cookieKey
	 * @param id
	 */
	void deleteProductFromShoppingCart(HttpServletRequest request, HttpServletResponse response, String cookieKey,
			Integer id);

	/**
	 * 更新购物车中的数量
	 * @param request
	 * @param response
	 * @param cookieKey
	 * @param productId
	 */
	void updateProductFromShoppingCart(HttpServletRequest request, HttpServletResponse response, String cookieKey,
			Integer productId,Integer updateCount);
     
	
}
