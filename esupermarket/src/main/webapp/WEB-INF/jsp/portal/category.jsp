<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。"/>
	<meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋" />
	<meta property="qc:admins" content="35713343766211176375747716" />
	<meta name="renderer" content="webkit"/>
 	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>必要 - 全球首家C2M电子商务平台</title>
	<link href="picture/favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<link href="css/common.css" rel="stylesheet" type="text/css"/>
	<link href="css/new.main.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="css/new.category.css"/>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	$(function(){
		   var returnURL = window.location.href;
		   
		  
		   
			  //登录功能
			  $("#loginButton").bind("click",function(){
				  window.location.href="${pageContext.request.contextPath}/main/login.do?returnURL="+returnURL;
			  })
		    
		  $("#registerButton").bind("click",function(){
			   window.location.href = "${pageContext.request.contextPath}/main/register.do?returnURL="+returnURL;
		   })
	})
	 
	</script>
</head>
<body id="pagebody">
	<!-- 顶部栏 -->
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
<!-- 导航栏 -->
<div class="nav">
	<div class="nav-normal">
		<a href="index.html"></a>
		<p>
			<a href="index.html" target="_blank"><i id="subShopCar">0</i></a>
		</p>
		<div>
			<a href="index.html">首页</a>
			<ul class="nav-main">
				<li class=122>
					<a href="javascript:;">眼镜</a>
						</li>
					<li class=1>
					<a href="javascript:;">服装</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">男装</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">女装</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">内衣袜子</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">配饰</a>
		                    </li>
			        	</ul>
						</li>
					<li class=128>
					<a  href="javascript:;">婴童</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">母婴</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">儿童</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">童鞋</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">书包</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">单车</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">亲子</a>
		                    </li>
			        	</ul>
						</li>
					<li class=35>
					<a  href="javascript:;">鞋靴</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">男鞋</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">女鞋</a>
		                    </li>
			        	</ul>
						</li>
					<li class=39>
					<a  href="javascript:;">运动</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">运动服</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">运动鞋</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">体育用品</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">运动袜</a>
		                    </li>
			        	</ul>
						</li>
					<li class=153>
					<a  href="javascript:;">皮具</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">皮带</a>
		                    </li>
			        	<li>
		                    	<a href="category.html">女包</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">男包</a>
		                    </li>
			        	</ul>
						</li>
					<li class=223>
					<a  href="javascript:;">数码</a>
						<b></b>
							<ul class="nav-sub">
								<li>
		                        	<a  href="javascript:;">数据线</a>
		                        </li>
				        		<li>
		                        	<a  href="javascript:;">充电设备</a>
		                        </li>
				        		<li>
		                        	<a  href="javascript:;">数码配件</a>
		                        </li>
				        		</ul>
							</li>
					<li class=43>
					<a  href="javascript:;">出行</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">休闲包</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">拉杆箱</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">收纳</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">口罩</a>
		                    </li>
			        	</ul>
						</li>
					<li class=54>
					<a  href="javascript:;">个护</a>
						<b></b>
							<ul class="nav-sub">
								<li>
		                        	<a  href="javascript:;">声波振动牙刷</a>
		                        </li>
				        		<li>
		                        	<a  href="javascript:;">剃须刀</a>
		                        </li>
				        		</ul>
							</li>
					<li class=119>
					<a  href="javascript:;">美妆</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">彩妆</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">护肤</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">洗护</a>
		                    </li>
			        	</ul>
						</li>
					<li class=58>
					<a  href="javascript:;">居家</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">床品</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">洗浴</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">日用</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">布艺</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">装饰画</a>
		                    </li>
			        	</ul>
						</li>
					<li class=51>
					<a  href="javascript:;">厨具</a>
						<b></b>
						<ul class="nav-sub">
							<li>
		                    	<a  href="javascript:;">水具</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">咖啡机</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">刀具</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">锅具</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">餐具</a>
		                    </li>
			        	<li>
		                    	<a  href="javascript:;">厨用小件</a>
		                    </li>
			        	</ul>
						</li>

					</ul>
		
			</div>
	</div>
</div>
<!-- 右边栏 -->
<ul class="rightBar">
	<li class="rightBar-share"></li>
	<li class="rightBar-code">
		<div>
			<span></span>
			<dl>
				<dt></dt>
				<dd>扫码下载必要APP</dd>
			</dl>
		</div>
	</li>
	<li class="rightBar-top"></li>
</ul>
<!-- 分享弹框 -->
<div class="shareCon">
	<div>
		<p>分享<b></b></p>
		<div class="share-main">
			<dl>
				<dt><img class="share-code" src="picture/ewm_6.jpg"/></dt>
				<dd>扫一扫，分享给好友！</dd>
			</dl>
			<ul>
				<li class="share-qq"><a target="_blank" href="#"></a><span>QQ空间</span></li>
				<li class="share-sina"><a target="_blank" href="#"></a><span>新浪微博</span></li>
				<li class="share-facebook"><a target="_blank" href="#"></a><span>Facebook</span></li>
				<li class="share-twitter"><a target="_blank" href="#"></a><span>Twitter</span></li>
			</ul>
		</div>
	</div>
</div><!-- 面包屑 -->
<div class="cateBread">
	<span>女包：</span>
	<ul>
		<li>
				<span data-jumpid="211">挎包</span>
					</li>
		<li>
				<span data-jumpid="210">钱包手包</span>
					</li>
		</ul>
</div>
<!-- 类目商品列表 -->
<ul class="list-container">
	<li>
			<div class="category-title" id="211">
				<dl>
					<dt>挎包</dt>
					<dd>Prada等制造商出品</dd>
				</dl>
			</div>
			<ul class="category-list">
				<li>
						<a target="_blank" href="javascript:;">
							<img src="picture/1161968099039031_2.jpg" alt="" />
							</a>
						<dl>
							<dt>细纹牛皮两用包</dt>
							<dd>¥699</dd>
						</dl>
					</li>
		<c:if test="${not empty productList}">
		   <c:forEach items="${productList}" var="product" varStatus="s">
		     <li>
						<a target="_blank" href="portal/product/detail.do?id=${product.id }">
							<img src="${product.image1}"/>
							</a>
						<dl>
							<dt>${product.title}</dt>
							<dd>${product.price}</dd>
						</dl>
					</li>
				
		   </c:forEach>
		</c:if>
	<li>
			<div class="category-title" id="210">
				<dl>
					<dt>钱包手包</dt>
					<dd>Prada等制造商出品</dd>
				</dl>
			</div>
			<ul class="category-list">
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1300915029140000001-0.html">
							<img src="picture/322b728e2672970.jpg" alt="" />
							</a>
						<dl>
							<dt>长款菱格拉链钱包</dt>
							<dd>¥319</dd>
						</dl>
					</li>
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1301235003030000001-0.html">
							<img src="picture/3b9fb4ec161fb946.jpg" alt="" />
							</a>
						<dl>
							<dt>头层十字纹真皮包</dt>
							<dd>¥219</dd>
						</dl>
					</li>
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1300915028060000001-0.html">
							<img src="picture/440142cbaaf6d161.jpg" alt="" />
							</a>
						<dl>
							<dt>长款菱格纹钱包</dt>
							<dd>¥339</dd>
						</dl>
					</li>
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1301265003010000001-0.html">
							<img src="picture/cd07d5e02b3ff27e.jpg" alt="" />
							</a>
						<dl>
							<dt>十字纹女款信封包</dt>
							<dd>¥259</dd>
						</dl>
					</li>
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1300915027060000001-0.html">
							<img src="picture/86817a40e3799338.jpg" alt="" />
							</a>
						<dl>
							<dt>短款菱格纹钱包</dt>
							<dd>¥299</dd>
						</dl>
					</li>
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1301235002060000001-0.html">
							<img src="picture/ef7cfd76f370d9dd.jpg" alt="" />
							</a>
						<dl>
							<dt>头层荔枝纹皮钱包</dt>
							<dd>¥209</dd>
						</dl>
					</li>
				<li>
						<a target="_blank" href="http://www.biyao.com/products/1301235004110000001-0.html">
							<img src="picture/5ec3a3760670f2fa.jpg" alt="" />
							</a>
						<dl>
							<dt>牛皮十字纹钱包</dt>
							<dd>¥249</dd>
						</dl>
					</li>
				</ul>
		</li>
	</ul><!-- 底部栏 -->
<div class="footer">
    <div class="footer-info">
        <ul>
            <li><a target="_blank" href="http://www.biyao.com/minisite/ljby">关于必要</a></li>
            <li><a target="_blank" href="http://www.biyao.com/help/8.html">加入必要</a></li>
            <li><a target="_blank" href="http://www.biyao.com/help/tel.html">联系我们</a></li>
            <li><a target="_blank" href="http://weibo.com/biyaoshangcheng">官方微博</a></li>
        </ul>
        <span>◎BIYAO.COM 2015 版权所有</span>
        <p>
            <i></i>
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44049102496139" target="_blank">粤公网安备44049102496139号</a>
            <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">粤ICP备13088531号</a>
        </p>
    </div>
    <ul class="footer-code">
        <li>
            <span class="code-down"></span>
            <dl>
                <dt>扫描二维码下载</dt>
                <dd>必要手机客户端</dd>
            </dl>
        </li>
        <li>
            <span class="code-active"></span>
            <dl>
                <dt>扫描二维码关注</dt>
                <dd>必要官方微信</dd>
            </dl>
        </li>
    </ul>
</div>
<script type="text/javascript">
		window.ControllerSite ="http://www.biyao.com";
		window.ApiSite = "http://api.biyao.com";    
		window.loginUserId = "0";
	</script>
	<script type="text/javascript"	src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript"	src="js/jquery.cookie.js"></script>
	<script type="text/javascript"	src="js/mastercommon.js"></script>
<script>
	classifyGuy.firstClass = 153;
	classifyGuy.secondClass = 209;
	classifyGuy.thirdClass = 211;
	classifyGuy.categoryId = 209;
	classifyGuy.isAnchorType = true;
	$(function(){
		classifyGuy.category();
		//为分享按钮添加事件
		shareHandle('http://m.biyao.com/classify/categoryList?categoryId=209&title=女包');
	});
</script>
</body> 
</html>