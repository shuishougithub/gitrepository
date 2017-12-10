/**
 * 
 */
package com.bjpowernode.esupermarket.portal.dao;

import com.bjpowernode.esupermarket.manager.domain.ShoppingCart;

/**
 *<p>ClassName:ShoppingCartDao<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午9:28:18
 */
public interface ShoppingCartDao {

	/**
	 * @param shoppingCart
	 */
	void save(ShoppingCart shoppingCart);

	/**
	 * @param newCart
	 * @return
	 */
	ShoppingCart getShoppingCartProduct(ShoppingCart newCart);

	/**
	 * @param newCart
	 */
	void updateShoppingCart(ShoppingCart newCart);

}
