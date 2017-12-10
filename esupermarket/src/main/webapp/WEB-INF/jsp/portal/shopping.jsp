<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta property="wb:webmaster" content="8eabb156d1a9cb46">
	<meta name="renderer" content="webkit"/>
 	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>必要平台-购物车 – 我要的，才是必要的 – 必要biyao.com</title>
    <link href="http://static.biyao.com/pc/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="http://static.biyao.com/pc/favicon.ico" rel="icon" type="image/x-icon" />	
	<link href="css/common.css?v=biyao_9cf87cc" rel="stylesheet"/>
	<link href="css/cm_www.css?v=biyao_32104cf" rel="stylesheet"/>
	<link href="css/newBuy.css?v=biyao_dac4785" rel="stylesheet"/>

	<script type="text/javascript" src="js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
	<script type="text/javascript" src="js/jquery.extention.js?v=biyao_98daa33"></script> 
	<script type="text/javascript" src="js/jquery.cookie.js?v=biyao_a5283b2"></script>
	<script type="text/javascript" src="js/common.js?v=biyao_9a586f3"></script>
	<script type="text/javascript" src="js/dialog.js?v=biyao_ba57fb5"></script>
	<script type="text/javascript" src="js/select.js?v=biyao_1dcaa7c"></script>
	<script type="text/javascript" src="js/loadmask.js?v=biyao_5aac5cc"></script>
	<script type="text/javascript" src="js/commonre.js?v=biyao_27f335b"></script>
	<script type="text/javascript" src="js/jquery.cookie.js?v=biyao_a5283b2"></script>
	<script type="text/javascript">
	   $(function(){
		   calculate();
		   
		   var returnURL = window.location.href;
		   
		  //登录功能
		  $("#loginButton").bind("click",function(){
			  window.location.href="${pageContext.request.contextPath}/main/login.do?returnURL="+returnURL;
		  })
		   
		   
		   
		   
			$(function(){
				  $("#registerButton").bind("click",function(){
					   window.location.href = "${pageContext.request.contextPath}/main/register.do?returnURL="+returnURL;
				   })
			})
			 
			
		   //删除商品
		   $(".deleteBtn").bind("click",function(){
	       
	         //1.获取商品的id
	         var id  = $(this).parent().parent().find("input").prop("id");
	         
	        if(!confirm("您确定删除吗")){
	        	return 
	        }
		  
		   $.ajax({
			   url:"shoppingcart/deleteProduct.do",
			   data:{"productId":id},
			   type:"post",
			   beforeSend:function(){ return true;},
			    
			   success:function(data){
				
				  if(data.success){
					  location.replace(location.href)
				  }else{
					  alert("系统繁忙，请稍候重试")
				  }
			   }
		   })
	   })
	   
	   
})
   //计算 商品的总金额
	    function calculate(){
		   var totalPri =0;
		   $.each( $(".subTotal"),function(i,n){
			   totalPri+=parseFloat($(n).text())
		   })
           $("#totalPrice").text(totalPri)
     }
	//更新商品的总数量 
	   function updateCount(productId,flag){
	
		  
		 var purchaseCount=parseInt($("#"+productId).val());
	   var updateCount;
		  if(flag=="plus"){
			  updateCount=purchaseCount+1;
		  }
		 if(flag=="minus"){
			if(purchaseCount==1){
			LT.alertSmall("不能再减了，再减就没了");
				return;
			}
	       updateCount=purchaseCount-1;
		  } 
		 //发送ajax请求
		 
		   
		
		  
		 $.ajax({
			 url:"shoppingcart/updateProduct.do",
			 data:{productId:productId,
				 updateCount:updateCount},
			 type:"post",
			 beforeSend:function(){ return true;},
			   success:function(data){
				
				  if(data.success){
					  location.replace(location.href)
				  }else{
					  alert("系统繁忙，请稍候重试")
				  }
			   }
		 })
	   }
	</script>
   
</head>
<body>

<!-- 新版首页 -->
	<div class="header">
	<div>
		<div class="header-nav">
			<ul>
				<li><a href="javascript:void(0);" target="_blank">首页</a><b></b></li>
				<li><a href="javascript:void(0);" id="supCenter">关于我们</a><b></b></li>
			
			</ul>
		</div>
		
		<c:choose>
			<c:when test="${session_customer.phone != null }">
				<div class="header-user">
					<div class="user-out">
						<span>欢迎&nbsp;&nbsp;${session_customer.nickname }&nbsp;&nbsp;来到必要，请</span>
						<ul>
							<li><a href="customer/logout.do" id="logout">退出</a><b></b></li>
						</ul>
					</div>
					<div class="user-center">
						<a href="javascript:void(0)">个人中心<b></b></a> <i></i>
						<ul>
							<li><a href="order.html" target="_blank">我的订单</a></li>
							
						</ul>
					</div>
					<a href="shoppingCart/showShoppingCart.do" target="_blank">购物车<i id="shopCar">${shopCartCount}</i></a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="header-user">
					<div class="user-out">
						<span>欢迎来到必要，请</span>
						<ul>
							<li><a href="javascript:void(0);" id="loginButton">登录</a><b></b></li>
							<li><a href="javascript:void(0);" id="registerButton">注册</a><b></b></li>
						</ul>
					</div>
					<div class="user-center">
						<a href="javascript:void(0)">个人中心<b></b></a> <i></i>
						<ul>
							<li><a href="order.html" target="_blank">我的订单</a></li>
							
						</ul>
					</div>
					<a href="shoppingCart/showShoppingCart.do" target="_blank">购物车<i id="shopCar">${shopCartCount}</i></a>
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
</div>
	
	
  	<div class="bd_bottom_ea">
  		<div class="wrap pub_logo_box clearfix">
  			<div class="pub_logo"><a href="index.html"><img alt="" src="images/logo.png?v=biyao_3251680"></a></div>
  		</div>
  	</div>
</div><div class="wrap relative">
	<div class="shopStepBox">
		<div class="publicStepsbox">
			<div class="car_step_icon car_step1"></div>
			<ul class="clearfix car_step_txt">
				<li class="checked">查看购物车</li>
				<li>确认订单信息</li>
				<li>在线付款</li>
				<li>收货并评价</li>
			</ul>
		</div>
	</div>
</div>
<div class="pd_b40">
<div class="wrap ie78">
	<div class="lineH24 t_l  pd_t30 pd_b10 bd_b_d5c ">
		 <span class="f18 col_666 mg_l10 col_523">购物车</span>
	</div>
	<div class="comment_box">
		<table class="sop_table1" cellpadding="0" cellspacing="0">
			<tr>
				<th align="left" class="col_523">商品信息</th>
				<th width="10%" align="center" class="col_523">单价</th>
				<th width="10%" align="center" class="col_523">数量</th>
				<th width="20%" align="center" class="col_523">包装</th>
				<th width="10%" align="center" class="col_523">小计</th>
				<th width="5%" align="center" class="col_523">操作</th>
			</tr>
		</table>
	</div>
	<div class="shoppingBox ">

		<table class="sop_table1 lastTh tabledel bg_fff" cellpadding="0" cellspacing="0">
	
		     <c:forEach items="${shoppingCartVOList}" var="shoppingCartVO" varStatus="s">
				<tr>
					<!-- 商品图片 -->
					<td width="130" align="left">
						<span class="sop_img inline">
							<a target="_blank" href="javascript:;">
								<img width="100" height="100" src="${shoppingCartVO.image1}" />
							</a>
						</span>
					</td>
					<!-- 商品标题 -->
					<td align="left">
						<a target="_blank" href="javascript:;">
							<span class="col_523">${shoppingCartVO.title}</span>
						</a>
						<br />
						<div class="col_999 mg_t5 w300 escp"> 颜色:粉色</div>
							<!-- 无模型商品和低模普通商品签字 -->
							<!-- 普通高模商品签字 -->
					</td>
					<!-- 商品单价 -->
					<td width="10%" align="center" class="ff6600">¥${shoppingCartVO.price}</td>
					<td width="10%" align="center" class="sizeZero">
						<i class="sign minus inline" onclick="updateCount('${shoppingCartVO.productId}','miuns')"></i>
						<input name ="quantity" type="text" maxlength="3" name="input_7995296"
							value="${shoppingCartVO.purchaseCount}" shopcarid="7995296"
							discount="0.0" price="${shoppingCartVO.price}"
							num="${shoppingCartVO.purchaseCount}" packageprice="0.0"
							modelid="0" supplierid="130091"
							designid="1300915031060000001" 
							sizename="颜色:黑色"
							class="inpCom w40 inline t_c"
							readonly="readonly"
							id="${shoppingCartVO.productId}">
						<i class="sign plus inline" onclick="updateCount('${shoppingCartVO.productId}','plus')"></i>
						<p class="col_b76 mg_t5"></p>	
					</td>
					<!-- 包装 -->
					<td width="20%" align="center" class="col_666">
					<span class="span_package_type">普通包装</span>
						<span class="span_package_price pack_selects">(免费)</span>
					</td>
					<!-- 商品小计 -->
					<td width="10%" align="center"><strong class="ff6600"><span>¥</span><span class="subTotal">${shoppingCartVO.price*shoppingCartVO.purchaseCount}</span></strong></td>
					<td width="5%" align="center"><a href="javascript:void(0);" class="deleteBtn" data="7995296">删除</a></td>
				</tr>
		 </c:forEach>
	
			</table>
	</div>
	<div class="firmbox pd_t10 bg_fff tj_box">
		<div class="lineH30  pd_l10 pd_r10 clearfix ">
			<div class="f_r col_666 f14">
				商品总价：
				<span class=" col_f60 f14" >¥</span><span class="w80 inline col_f60 pd_r5 f14" id="totalPrice"></span>
			</div>
			<span class="inline f_r mg_r30 col_666 f14">商品总数 <em class="col_f60  f14" id="totalNum">${shoppingCartCount}</em> 件</span>
		</div>
		<div class="lineH30  pd_l10 pd_r10 clearfix ">
			<div class="f_r col_666 f14">
			</div>
		</div>	
	</div>
	<div class="tallyBox">
		<a href="index.html" class="inline goonShopping ">继续购物</a>
		<a href="order/orderok.do" class=" tallyBTnPos inline span_submit_calre js_btn">结算</a>
	</div>
</div>
</div>

<script type="text/javascript" src="js/common.js?v=biyao_9a586f3"></script>
<script type="text/javascript" src="js/dialog.js?v=biyao_ba57fb5"></script>
<script type="text/javascript" src="js/select.js?v=biyao_1dcaa7c"></script>
<script type="text/javascript" src="js/autocomplete.js?v=biyao_bd4725d"></script>
<script type="text/javascript" src="js/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript" src="js/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript"src="js/qrcode.js?v=biyao_8c0b79c"></script>
<script type="text/javascript" src="js/shopcarDes.js?v=biyao_ba3e6ae"></script>
<script type="text/javascript"  src="js/lazyloadIM.js?v=biyao_c5ce53c"></script>
	<script type="text/javascript" src="js/lazyload.js?v=biyao_80d4f78"></script>
	<script type="text/javascript" src="js/materiallistDes.js?v=biyao_21283ab"></script>
<script type="text/template" id="materialsOfProductTemplate">
<div class="pop_bd pd_t15 clearfix">
	<ul class="sizeZero ml_list">
	</ul>
</div>
</script><div data-selector="J_im" id="webIM_showDiv"></div>
<div class="footer_links clearfix J_1200 auto">
    <div class="content wrap sizeZero">
    	<div class="footer_nav_box inline">
    		<ul class="footer_nav_list clearfix"> 
    			<li>
    				<a target="_blank" href="javascript:;">关于必要</a>
    				<span class="bg_line"></span>
    			</li>
    			<li>
    				<a target="_blank" href="javascript:;">加入必要</a>
    				<span class="bg_line"></span>
    			</li>
    			<li>
    				<a target="_blank" href="javascript:;">联系我们</a>
    				<span class="bg_line"></span>
    			</li>
    			<li class="none">
    				<a target="_blank" href="javascript:;">网站地图</a>
    			</li>
    			<li>
    				<a target="_blank" href="javascript:;">官方微博</a>
    				<span class="bg_line"></span>
    			</li>
    			
    		</ul>
    		<p class="col_999 lineH18 mg_t10">◎BIYAO.COM 2015 版权所有   			
			</p>
			<p class="col_999 lineH18 mg_t10"><i class="gwab_icon inline"></i><a class="col_999 inline mg_r5" href="javascript:;" target="_blank">粤公网安备44049102496139号</a> <a class="col_999 inline" href="javascript:;" target="_blank">粤ICP备13088531号</a>   			
			</p>
    	</div>   
    	<div class="footer_evm sizeZero inline">
    		<div class="inline mg_r40 footer_evm_img">
    			<div class="an_bg inline mg_r15"></div>
    			<div class="inline evm_tit_msg">
    				<span class="col_333 f14">扫描二维码下载</span><br/>
					<span class="col_724 f14">必要手机客户端</span>
    			</div>
    		</div>
    		<div class="inline mg_r10 footer_evm_img">
    			<div class="weixin_bg inline mg_r15"></div>
    			<div class="inline evm_tit_msg">
    				<span class="col_333 f14">扫描二维码关注</span><br/>
					<span class="col_724 f14">必要官方微信</span>
    			</div>
    		</div>
    	</div>
    </div>
</div><script type="text/javascript" src="js/common.js?v=biyao_2bb680a"></script>
<script type="text/javascript" src="js/bytrack.js"></script>
</body>

</html>