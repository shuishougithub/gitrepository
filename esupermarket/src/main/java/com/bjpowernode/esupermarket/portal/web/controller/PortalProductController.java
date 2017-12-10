/**
 * 
 */
package com.bjpowernode.esupermarket.portal.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjpowernode.esupermarket.common.ApplicationConstant;
import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.manager.service.ProductService;

/**
 * 商品分类
 *<p>ClassName:PortalProductController<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午8:39:35
 */
@RequestMapping("/portal/product")
@Controller
public class PortalProductController {
	@Resource(name="productService")
	private ProductService productService;
    @RequestMapping("category.do")
	public String showCategory(Model model){
       List<Product>productList = productService.getProductByStatus(ApplicationConstant.PRODUCT_STATUS_RELIESE);
       System.out.println(productList);
       model.addAttribute("productList",productList);
		return "portal/category";
	}
    @RequestMapping("detail.do")
    public String detail(Integer id,Model model){
    	 Product product = productService.getProductById(id);
    	 model.addAttribute("product", product);
    	return "portal/details";
    }
}
