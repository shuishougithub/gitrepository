/**
 * 
 */
package com.bjpowernode.esupermarket.common;

/**
 * 系统常量类
 *<p>ClassName:ApplicationConstance<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月28日 下午9:38:39
 */
public class ApplicationConstant {
   /**
    * 商品status的常量
    */
	public static final  String PRODUCT_STATUS_UNRELIESE="0";
	public static final  String  PRODUCT_STATUS_RELIESE="1";
	public static final  String  PRODUCT_STATUS_INVALID="2";
	
	/**
	 * seesion中用户的key
	 */
    public static final String SESSION_CUSTOMER="session_customer";
    /**
     * 定义cookie在应用中存在的值
     */
    public static final String COOKIE_KEY ="cookie_key";
    /**
     * 定义购物车中商品的总数量
     */
    public static final String SHOP_CART_COUNT="shoppingCartCount";
    /**
     * 定义购物车中商品的状态
     */
    public static final String SHOP_CART_PRODUCT_ORDERED="0";
    public static final String SHOP_CART_PRODUCT_UNORDERED="1";
    /**
     * 定义返回地址
     */
    public static final String RETURN_URL="return_url";
}
