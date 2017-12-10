/**
 * 
 */
package com.bjpowernode.esupermarket.common.utils;

import java.security.MessageDigest;

/**
 *<p>ClassName:MD5Utils<p>
 *<p>Description:<p>
 * @author wang94
 *
 * @date 2017年8月30日 下午5:41:16
 */
public class MD5Utils {
   
	public final static String MD5(String s) {
		try {
			byte[] btInput = s.getBytes();
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			mdInst.update(btInput);
			byte[] md = mdInst.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < md.length; i++) {
				int val = ((int) md[i]) & 0xff;
				if (val < 16)
					sb.append("0");
				sb.append(Integer.toHexString(val));
			}
			return sb.toString();
		} catch (Exception e) {
			return null;
		}
	}
}
