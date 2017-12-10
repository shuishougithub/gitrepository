/**
 * 
 */
 //文件已经被修改,
package com.bjpowernode.esupermarket.manager.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bjpowernode.esupermarket.manager.dao.ProductDao;
import com.bjpowernode.esupermarket.manager.domain.PaginationVO;
import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.manager.domain.ProductCondition;
import com.bjpowernode.esupermarket.manager.service.ProductService;

/**
 *<p>ClassName:ProductServiceImplTest<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月25日 下午10:02:22
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationdao.xml","classpath:spring/applicationservice.xml","classpath:spring/applicationtrans.xml"})
public class ProductServiceImplTest {
	
	@Resource(name="productService")
	private ProductService productService;
	/**
	 * Test method for {@link com.bjpowernode.esupermarket.manager.service.impl.ProductServiceImpl#save(com.bjpowernode.esupermarket.manager.domain.Product)}.
	 */
	@Test
	public void testSave() {
		for (int i = 0; i < 10; i++) {
			Product product = new Product();
			product.setProductNo("HW_000" + i);
			product.setTitle("荣耀9Plus");
			product.setPrice(1599.0);
			product.setSellPoint("高清，5寸大屏！");
			product.setStatus("0");
			product.setImage1("测试数据");
			product.setImage2("测试数据");
			product.setImage3("测试数据");
			product.setImage4("测试数据");
			product.setImage5("测试数据");
			
			productService.save(product);
			
			System.out.println(productService);
		}
	}

	/**
	 * Test method for {@link com.bjpowernode.esupermarket.manager.service.impl.ProductServiceImpl#getProductById(java.lang.Integer)}.
	 */
	@Test
	public void testGetProductById() {
		System.out.println(productService.getProductById(3));
	}

	/**
	 * Test method for {@link com.bjpowernode.esupermarket.manager.service.impl.ProductServiceImpl#update(com.bjpowernode.esupermarket.manager.domain.Product)}.
	 */
	@Test
	public void testUpdate() {
		Product product = new Product();
		product.setId(3);
		product.setProductNo("fadsf" );
		product.setTitle("apple");
		product.setPrice(1599.0);
		product.setSellPoint("高清，5寸大屏！");
		product.setStatus("0");
		product.setImage1("测试数据");
		product.setImage2("测试数据");
		product.setImage3("测试数据");
		product.setImage4("测试数据");
		product.setImage5("测试数据");
		
		productService.update(product);
	}

	/**
	 * Test method for {@link com.bjpowernode.esupermarket.manager.service.impl.ProductServiceImpl#deleteByIds(java.lang.Integer[])}.
	 */
	@Test
	public void testDeleteByIds() {
		Integer[] ids ={10,11,12,13,14,15,16,17};
		productService.deleteByIds(ids);
	}

	/**
	 * Test method for {@link com.bjpowernode.esupermarket.manager.service.impl.ProductServiceImpl#getProductsByPage(com.bjpowernode.esupermarket.manager.domain.ProductCondition)}.
	 */
	@Test
	public void testGetProductsByPage() {
		ProductCondition productCondition = new ProductCondition();
		productCondition.setPageNo(1);
		productCondition.setPageSize(3);
		/*productCondition.setProductNo("p");
		productCondition.setTitle("7");
		productCondition.setPrice(1099.0);
		productCondition.setSellPoint("10寸");
		productCondition.setStatus("1");*/
		PaginationVO<Product> paginationVO = productService.getProductsByPage(productCondition);
		long total = paginationVO.getTotal();
		List<Product> dataList = paginationVO.getDataList();
	}

}
