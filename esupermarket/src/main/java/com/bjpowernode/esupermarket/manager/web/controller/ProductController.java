/**
 * 
 */
package com.bjpowernode.esupermarket.manager.web.controller;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bjpowernode.esupermarket.manager.domain.PaginationVO;
import com.bjpowernode.esupermarket.manager.domain.Product;
import com.bjpowernode.esupermarket.manager.domain.ProductCondition;
import com.bjpowernode.esupermarket.manager.service.ProductService;

/**
 *<p>ClassName:ProductController<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月26日 下午8:21:49
 */
@Controller
@RequestMapping(value="/product")
public class ProductController {
	@Resource(name="productService")
	private ProductService productService;
	/**
	 * 转到index界面
	 * @return
	 */
	@RequestMapping(value="/index.do")
	public String index(){
		return"manager/product/index";
	}
	@RequestMapping(value="/create.do")
	public String saveProduct(){
		return "manager/product/saveProduct";
	}
	/**
	 * 保存创建
	 * @param product
	 * @param images
	 * @param session
	 * @return
	 */
	@RequestMapping(value="save.do")
	@ResponseBody
	public Object add(Product product,@RequestParam MultipartFile[] images,HttpSession session){
		//用来返回结果
	   Map<String, Object> jsonMap = new HashMap<>();
	  //获取图片存路径
	   String path= session.getServletContext().getRealPath("/upload");
	   String newFileName="";
	   //遍历 图片集合 由于下面要用到i所以
	    for(int i=0;i<images.length;i++){
	    	if(!images[i].isEmpty()){
	    		  //获取原文件名
	    		String originalFileName=images[i].getOriginalFilename();
	    		//得到。的位置
	    		Integer pointIndex = originalFileName.lastIndexOf(".");
	    		//得到文件的后缀
	    		String suffix = originalFileName.substring(pointIndex);
	    		//得到一个新名字
	    		newFileName = UUID.randomUUID().toString().replaceAll("-","").toUpperCase();
	    		newFileName+=suffix;
	    		switch (i) {
				case 0:
					product.setImage1("upload/"+newFileName);
					break;
				case 1:
					product.setImage2("upload/"+newFileName);
					break;
				case 2:
					product.setImage3("upload/"+newFileName);
					break;
				case 3:
					product.setImage4("upload/"+newFileName);
					break;
				case 4:
					product.setImage5("upload/"+newFileName);
					break;
				}
	    	 File file = new File(path, newFileName);
	    	  try {
				images[i].transferTo(file);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			    }
	    	}
	      
	    	}
	    //调用service方法处理
    	try{
    	productService.save(product);
    	jsonMap.put("success", true);
    	}catch(Exception e){
    	jsonMap.put("success", false);
	     }
		return jsonMap;
	}
	/**
	 * 分页查询方法
	 * @param proCondition
	 * @return
	 */
	@RequestMapping(value="display.do")
	@ResponseBody
	public Object display(ProductCondition proCondition){
		PaginationVO<Product> paginationVO=productService.getProductsByPage(proCondition);
		return paginationVO;
	}
     /**
      * 删除商品的方法
      * @param ids
      * @return
      */
	@RequestMapping(value="delete.do")
	@ResponseBody
	public Object delete(Integer[]id,HttpServletRequest request){
	     System.out.println(id);
	     for(Integer i :id){
	    	 System.out.println(i);
	     }
	     
		/*String[] strIds = request.getParameterValues("id");
		System.out.println(strIds);
		Integer[] ids =new Integer[strIds.length];
		for(int i = 0;i<strIds.length;i++){
			Integer id = Integer.parseInt(strIds[i]);
			ids[i]=id;
		}
		System.out.println(ids);
		Map<String, Object>jsonMap = new HashMap<>();
		try{
			productService.deleteByIds(ids);
			jsonMap.put("success",true);
		}catch(Exception e){
			jsonMap.put("success",false);
		}
		return jsonMap;*/
		return null;
	}
	@RequestMapping(value="edit.do")
	public ModelAndView edit(Integer id){
		System.out.println(id);
		ModelAndView mv = new ModelAndView();
		Product product = productService.getProductById(id);
		mv.addObject("product",product);
		mv.setViewName("manager/product/editProduct");
		return mv;
	}
	/**
	 * 修改
	 */
	@RequestMapping(value="update.do")
	public String update(Product product,@RequestParam MultipartFile[] images,HttpSession session){
		
	  //获取图片存路径
	   String path= session.getServletContext().getRealPath("/upload");
	   String newFileName="";
	   //遍历 图片集合 由于下面要用到i所以
	    for(int i=0;i<images.length;i++){
	    	if(!images[i].isEmpty()){
	    		  //获取原文件名
	    		String originalFileName=images[i].getOriginalFilename();
	    		//得到。的位置
	    		Integer pointIndex = originalFileName.lastIndexOf(".");
	    		//得到文件的后缀
	    		String suffix = originalFileName.substring(pointIndex);
	    		//得到一个新名字
	    		newFileName = UUID.randomUUID().toString().replaceAll("-","").toUpperCase();
	    		newFileName+=suffix;
	    		switch (i) {
				case 0:
					product.setImage1("upload/"+newFileName);
					break;
				case 1:
					product.setImage2("upload/"+newFileName);
					break;
				case 2:
					product.setImage3("upload/"+newFileName);
					break;
				case 3:
					product.setImage4("upload/"+newFileName);
					break;
				case 4:
					product.setImage5("upload/"+newFileName);
					break;
				}
	    	 File file = new File(path, newFileName);
	    	  try {
				images[i].transferTo(file);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			    }
	    	}
	      
	    	}
	    //调用service方法处理
    	
    	productService.update(product);
    	
		return "redirect:edit.do?id="+product.getId();
	}
	@RequestMapping(value="detail.do")
	public ModelAndView detail(Integer id){
		System.out.println(id);
		ModelAndView mv = new ModelAndView();
		Product product = productService.getProductById(id);
		mv.addObject("product",product);
		mv.setViewName("manager/product/detail");
		return mv;
	}
}
