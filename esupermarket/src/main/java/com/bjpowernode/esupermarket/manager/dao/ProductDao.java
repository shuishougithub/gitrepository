/**
 * 
 */
package com.bjpowernode.esupermarket.manager.dao;

import java.util.List;

import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.manager.domain.ProductCondition;

/**
 *<p>ClassName:ProductDao<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:39:08
 */
public interface ProductDao {

	/**
	 * 保存商品
	 * @param product
	 */
	void save(Product product);

	/**
	 * 根据id查询商品
	 * @param productId
	 * @return
	 */
	Product getProductById(Integer productId);

	/**
	 * 更新商品
	 * @param product
	 */
	void update(Product product);

	/**
	 * 根据商品id删除商品
	 * @param productIds
	 */
	void deleteByIds(Integer[] productIds);

	/**
	 * 条件查询商品总记录数
	 * @param productCondition
	 * @return
	 */
	Long getTotal(ProductCondition productCondition);

	/**
	 * 条件查询每页记录
	 * @param productCondition
	 * @return
	 */
	List<Product> getProductsByPage(ProductCondition productCondition);

	/**
	 * 根据商品的状态查询商品列表
	 * @param productStatusReliese
	 * @return
	 */
	List<Product> getProductsByStatus(String productStatusReliese);
 
}
