/**
 * 
 */
package com.bjpowernode.esupermarket.portal.domain;

/**
 * 购物车实体类
 *<p>ClassName:ShoppingCartVO<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月29日 下午10:18:14
 */
public class ShoppingCartVO {
  
 private Integer productId;
 private String title;
 private Double price;
   //购买数量
 private Integer purchaseCount;
 private String  image1;
/**
 * @return the productId
 */
public Integer getProductId() {
	return productId;
}
/**
 * @param productId the productId to set
 */
public void setProductId(Integer productId) {
	this.productId = productId;
}
/**
 * @return the title
 */
public String getTitle() {
	return title;
}
/**
 * @param title the title to set
 */
public void setTitle(String title) {
	this.title = title;
}
/**
 * @return the price
 */
public Double getPrice() {
	return price;
}
/**
 * @param price the price to set
 */
public void setPrice(Double price) {
	this.price = price;
}
/**
 * @return the purchaseCount
 */
public Integer getPurchaseCount() {
	return purchaseCount;
}
/**
 * @param purchaseCount the purchaseCount to set
 */
public void setPurchaseCount(Integer purchaseCount) {
	this.purchaseCount = purchaseCount;
}
/**
 * @return the image1
 */
public String getImage1() {
	return image1;
}
/**
 * @param image1 the image1 to set
 */
public void setImage1(String image1) {
	this.image1 = image1;
}
 
}
