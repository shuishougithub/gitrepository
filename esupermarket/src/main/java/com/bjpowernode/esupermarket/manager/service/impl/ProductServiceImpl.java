/**
 * 
 */
package com.bjpowernode.esupermarket.manager.service.impl;

import java.lang.Thread.State;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjpowernode.esupermarket.manager.dao.ProductDao;
import com.bjpowernode.esupermarket.manager.domain.PaginationVO;
import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.manager.domain.ProductCondition;
import com.bjpowernode.esupermarket.manager.service.ProductService;

/**
 *<p>ClassName:ProductServiceImpl<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午8:39:52
 */
@Service("productService")
public class ProductServiceImpl implements ProductService{
	@Resource(name="productDao")
	private ProductDao productDao;

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.manager.service.ProductService#save(com.bjpowernode.esupermarket.manager.domain.Product)
	 */
	@Override
	public void save(Product product) {
	   productDao.save(product);
	   	
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.manager.service.ProductService#getProductById(java.lang.Integer)
	 */
	@Override
	public Product getProductById(Integer productId) {
		Product product =productDao.getProductById(productId);
		return product;
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.manager.service.ProductService#update(com.bjpowernode.esupermarket.manager.domain.Product)
	 */
	@Override
	public void update(Product product) {
		productDao.update(product);	
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.manager.service.ProductService#deleteByIds(java.lang.Integer[])
	 */
	@Override
	public void deleteByIds(Integer[] productIds) {
		productDao.deleteByIds(productIds);
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.manager.service.ProductService#getProductsByPage(com.bjpowernode.esupermarket.manager.domain.ProductCondition)
	 */
	@Override
	public PaginationVO<Product> getProductsByPage(ProductCondition productCondition) {
		PaginationVO<Product>paginationVO = new PaginationVO<>();
		  Integer skipNo=(productCondition.getPageNo()-1)*productCondition.getPageSize();
		  productCondition.setSkipNo(skipNo);
		 Long total = productDao.getTotal(productCondition);
		 List<Product>dataList=productDao.getProductsByPage(productCondition);
		 paginationVO.setDataList(dataList);
		 paginationVO.setTotal(total);
		return paginationVO;
	}

	/* (non-Javadoc)
	 * @see com.bjpowernode.esupermarket.manager.service.ProductService#getProductByStatus(java.lang.String)
	 */
	@Override
	public List<Product> getProductByStatus(String productStatusReliese) {
		List<Product> productList = productDao.getProductsByStatus(productStatusReliese);
		return productList;
	}
  
}
