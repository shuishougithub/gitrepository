/**
 * 
 */
package com.bjpowernode.esupermarket.manager.service;

import java.util.List;

import com.bjpowernode.esupermarket.manager.domain.PaginationVO;
import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.manager.domain.ProductCondition;

/**
 *<p>ClassName:ProductService<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:39:21
 */
public interface ProductService {
	/**
	 * 保存创建商品
	 * @param product
	 */
    void save(Product product);
    /**
     * 根据商品id获取商品信息
     * @param productId
     * @return
     */
    Product getProductById(Integer productId);
    /**
     * 更新商品信息
     * @param product
     */
     void update(Product product);
     /**
      * 根据商品的id删除商品
      * @param productIds
      */
     
     void deleteByIds(Integer[] productIds);
     /**
      * 条件分页查询
      * @param productCondition
      * @return
      */
     PaginationVO<Product> getProductsByPage(ProductCondition productCondition);
	/**
	 * 根据商品的状态查询商品
	 * @param productStatusReliese
	 * @return
	 */
	List<Product> getProductByStatus(String productStatusReliese);
	  
}
