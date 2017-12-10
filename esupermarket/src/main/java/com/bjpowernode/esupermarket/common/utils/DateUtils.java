/**
 * 
 */
package com.bjpowernode.esupermarket.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *<p>ClassName:DateUtils<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月30日 下午5:43:32
 */
public class DateUtils {
    
   /**
    * 获取时间戳
    */
	public static String getTimemark(){
		String timeMarker = new SimpleDateFormat("yyyyMMddHHmmsss").format(new Date());
		
		return timeMarker;
	}
	/**
	 * 获取当前时间
	 */
	public static String getSystemTime(){
		String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:sss").format(new Date());
		return time;
	}
}
