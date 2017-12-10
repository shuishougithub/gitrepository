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
	<link rel="stylesheet" type="text/css" href="css/new.index.css"/>
	<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
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
				<li><a href="javascript:void(0);">首页</a><b></b></li>
				<li><a href="javascript:void(0);">关于我们</a><b></b></li>
			   
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
		                    	<a href="portal/product/category.do">女包</a>
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
				<dt><img class="share-code" src="picture/ewm.jpg"/></dt>
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
</div><!-- 轮播图及下方图文说明部分 -->
<div class="banner">
	<ul class="banner-slider">
			<li><a target="_blank" href="javascript:;"><img src="picture/wkhkvvjncluakuhuaacwdyzssq0581.jpg" alt="" /></a></li>
			<li><a target="_blank" href="javascript:;"><img src="picture/wkhkvvjmgj2aarbuaafz-eiinpg883.jpg" alt="" /></a></li>
			<li><a target="_blank" href="javascript:;"><img src="picture/wkhkvvjmgt-avkvraaivhplinko497.jpg" alt="" /></a></li>
			<li><a target="_blank" href="javascript:;"><img src="picture/wkhkvvjmgiyajfvfaahxywfio6c430.jpg" alt="" /></a></li>
			<li><a target="_blank" href="javascript:;"><img src="picture/wkhkvvjmgeeafiycaagght3ny60393.jpg" alt="" /></a></li>
			<li><a target="_blank" href="javascript:;"><img src="picture/wkhkvvjmgwgahofyaahpdy67rt8036.jpg" alt="" /></a></li>
			</ul>
	<ul class="banner-des">
		<li><img src="picture/96a7cff302474a6a9c12b6462b351db3.png" alt="" />直连一线制造  
</li>
		<li><img src="picture/3754469f2abb485eae613e01a7f754e5.png" alt="" />7天无忧退换货</li>
		<li><img src="picture/7aa60b3fef7f4d539013f601a55fbe1c.png" alt="" />平台先行赔付</li>
		<li><img src="picture/9a4a21dfe8914533978d0e848e0b4939.png" alt="" />全品类包邮</li>
		</ul>
</div>
<!-- 专题文章部分 -->
<div class="article">
		<a target="_blank" href="javascript:;">更多原创文章 &gt;</a>
		<div>
			<span><img src="picture/7e33f26345ec426a9787dece458b3492_1.jpg" alt="" /></span>
			<p>
				<span><i>老必</i><i>2017-04-06</i></span> 
				<a target="_blank" href="http://news.biyao.com/pc/article/7508879bdf594ebaa4bccf5afcd74001.html">必要“搜索”功能上线啦</a>
			</p>
			<div>搜索一下，很有必要。<a target="_blank" href="http://news.biyao.com/pc/article/7508879bdf594ebaa4bccf5afcd74001.html">阅读全文 &gt; </a></div>
		</div>
	</div>
<!-- 模块部分 -->
<div class="category">
		<div class="category-recommend-2">
						<div class="category-title">
							<dl>
								<dt></dt>
							</dl>
						</div>
						<ul>
							<li><a target="_blank" href="http://www.biyao.com/classify/newProduct.html"><img src="picture/wkhkvvjklraafskdaadp2kjcm4i529_1.jpg" alt="" /></a></li>
							<li><a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=119"><img src="picture/wkhkvvjceuqack9aaadltvpn6gc989_1.jpg" alt="" /></a></li>
							<li><a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=51"><img src="picture/wkhkvfjce6cazbgdaadcc29occu832_1.jpg" alt="" /></a></li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>光学眼镜</dt>
								<dd>依视路集团旗下&nbsp;&nbsp;企业制造</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=122">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/products/1300220424000810000-0.html">
										<img src="picture/d25eb4ecfaaaeaee_1.jpg" alt="" />
									</a>
									<dl>
										<dt>超薄钛架-B</dt>
										<dd>¥279</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/products/1300220197001860000-0.html">
										<img src="picture/b3a450a62a810114_1.jpg" alt="" />
									</a>
									<dl>
										<dt>飞行员太阳镜</dt>
										<dd>¥249</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/products/1300220278001200000-0.html">
										<img src="picture/4cea79c9ae2a474_1.jpg" alt="" />
									</a>
									<dl>
										<dt>英伦复古-B</dt>
										<dd>¥239</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/products/1300220055000300000-0.html">
										<img src="picture/79caf615d25e9e99_1.jpg" alt="" />
									</a>
									<dl>
										<dt>钛架半框-开</dt>
										<dd>¥279</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>品质男装</dt>
								<dd>Hugo Boss、PRADA&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=2">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130106">
										<img src="picture/a603e47df7885572_1.jpg" alt="" />
									</a>
									<dl>
										<dt>三防免烫衬衫五色</dt>
										<dd>¥189</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130084">
										<img src="picture/8335014008575897_1.jpg" alt="" />
									</a>
									<dl>
										<dt>莫代尔长袖T恤</dt>
										<dd>¥169</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130141">
										<img src="picture/c9c8173cc1ce779f_1.jpg" alt="" />
									</a>
									<dl>
										<dt>经典三防男短风衣</dt>
										<dd>¥599</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130053">
										<img src="picture/6810668244469652_1.jpg" alt="" />
									</a>
									<dl>
										<dt>3D定型修身窄脚</dt>
										<dd>¥259</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130106">
										<img src="picture/2365840002486622_1.jpg" alt="" />
									</a>
									<dl>
										<dt>净色微弹工装短裤</dt>
										<dd>¥209</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130093">
										<img src="picture/61b1518c71cff879_1.jpg" alt="" />
									</a>
									<dl>
										<dt>混纺舒适耐磨套西</dt>
										<dd>¥1199</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130114">
										<img src="picture/1895286580666355_1.jpg" alt="" />
									</a>
									<dl>
										<dt>羊皮毛圈拼接夹克</dt>
										<dd>¥598</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130053">
										<img src="picture/1080114805208605_1.jpg" alt="" />
									</a>
									<dl>
										<dt>工装弹力修身衬衫</dt>
										<dd>¥259</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>潮流女装</dt>
								<dd>MaxMara、Diesel&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=8">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130106">
										<img src="picture/5507232761330369_1.jpg" alt="" />
									</a>
									<dl>
										<dt>牛津纺免烫衬衫</dt>
										<dd>¥199</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130090">
										<img src="picture/2194c9f8739816b4_1.jpg" alt="" />
									</a>
									<dl>
										<dt>小开领长袖T恤</dt>
										<dd>¥189</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130043">
										<img src="picture/9521881515478476_1.jpg" alt="" />
									</a>
									<dl>
										<dt>双层雪纺衬衫</dt>
										<dd>¥299</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130053">
										<img src="picture/9507580606862530_1.jpg" alt="" />
									</a>
									<dl>
										<dt>柔软天丝修身直筒</dt>
										<dd>¥269</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130043">
										<img src="picture/8959a11321a0365e_1.jpg" alt="" />
									</a>
									<dl>
										<dt>锥形九分裤</dt>
										<dd>¥249</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130141">
										<img src="picture/2bc3ee625d51302d_1.jpg" alt="" />
									</a>
									<dl>
										<dt>经典女士长款风衣</dt>
										<dd>¥599</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130090">
										<img src="picture/2854556846392627_1.jpg" alt="" />
									</a>
									<dl>
										<dt>七分袖套头衬衫</dt>
										<dd>¥299</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130090">
										<img src="picture/3c535af321462e6d_1.jpg" alt="" />
									</a>
									<dl>
										<dt>丝羊绒毛衫背心</dt>
										<dd>¥199</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>内衣袜子</dt>
								<dd>CK、LA PERLA等&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=108">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130059">
										<img src="picture/3d67891eba80e459_1.jpg" alt="" />
									</a>
									<dl>
										<dt>男士轻奢平底内裤</dt>
										<dd>¥159</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130086">
										<img src="picture/be1789199164dc7f_1.jpg" alt="" />
									</a>
									<dl>
										<dt>茱萸粉刺绣文胸套</dt>
										<dd>¥179</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130129">
										<img src="picture/bea30bdccd901a5_1.jpg" alt="" />
									</a>
									<dl>
										<dt>天鹅绒连裤袜x6</dt>
										<dd>¥89</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130106">
										<img src="picture/f3490deeaa8fe27e_1.jpg" alt="" />
									</a>
									<dl>
										<dt>女士无痕内裤5条</dt>
										<dd>¥209</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130094">
										<img src="picture/ad053ab814969c0f_1.jpg" alt="" />
									</a>
									<dl>
										<dt>防臭商务袜5双装</dt>
										<dd>¥69</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130092">
										<img src="picture/141582e3a9f91686_1.jpg" alt="" />
									</a>
									<dl>
										<dt>天竺棉家居服长袖</dt>
										<dd>¥175</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130106">
										<img src="picture/b9bf34434e19c468_1.jpg" alt="" />
									</a>
									<dl>
										<dt>莫代尔内裤/4条</dt>
										<dd>¥129</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130086">
										<img src="picture/4161146928241116_1.jpg" alt="" />
									</a>
									<dl>
										<dt>无钢圈无痕文胸</dt>
										<dd>¥149</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>母婴儿童</dt>
								<dd>英国皇室御用服装&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=128">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130113">
										<img src="picture/4032596840949578_1.jpg" alt="" />
									</a>
									<dl>
										<dt>女童长袖T恤2条装</dt>
										<dd>¥129</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130120">
										<img src="picture/61dd34ef9a86bb05_1.jpg" alt="" />
									</a>
									<dl>
										<dt>儿童春秋牛仔裤</dt>
										<dd>¥139</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130107">
										<img src="picture/4196512123841513_1.jpg" alt="" />
									</a>
									<dl>
										<dt>圆领条纹亲子T恤</dt>
										<dd>¥169</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130121">
										<img src="picture/46834d96ecb5da02_1.jpg" alt="" />
									</a>
									<dl>
										<dt>骑行滑步一体童车</dt>
										<dd>¥469</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130101">
										<img src="picture/166e63f3d2d4cfe9_1.jpg" alt="" />
									</a>
									<dl>
										<dt>1至4年级减负书包</dt>
										<dd>¥159</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130131">
										<img src="picture/5640328635674374_1.jpg" alt="" />
									</a>
									<dl>
										<dt>春夏季透气女童鞋</dt>
										<dd>¥169</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130107">
										<img src="picture/2972265025671719_1.jpg" alt="" />
									</a>
									<dl>
										<dt>纯棉针织时尚套衫</dt>
										<dd>¥129</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130131">
										<img src="picture/5000685681746644_1.jpg" alt="" />
									</a>
									<dl>
										<dt>春夏季透气网布鞋</dt>
										<dd>¥149</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>男女鞋靴</dt>
								<dd>Armani、LACOSTE&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=35">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130036">
										<img src="picture/88bc9c980364f449_1.jpg" alt="" />
									</a>
									<dl>
										<dt>简约商务休闲男鞋</dt>
										<dd>¥399</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130116">
										<img src="picture/b632e09fabcf38dd_1.jpg" alt="" />
									</a>
									<dl>
										<dt>时尚潮流休闲鞋男</dt>
										<dd>¥199</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130045">
										<img src="picture/0932721784561256_1.jpg" alt="" />
									</a>
									<dl>
										<dt>花朵电绣小白鞋</dt>
										<dd>¥369</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130110">
										<img src="picture/8850862975619691_1.jpg" alt="" />
									</a>
									<dl>
										<dt>澳洲羊绒皮豆豆鞋</dt>
										<dd>¥299</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130045">
										<img src="picture/b79006be9ddd9682_1.jpg" alt="" />
									</a>
									<dl>
										<dt>尖头圆口高跟鞋</dt>
										<dd>¥269</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130116">
										<img src="picture/2164580246633476_1.jpg" alt="" />
									</a>
									<dl>
										<dt>时尚舒适休闲鞋女</dt>
										<dd>¥169</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130045">
										<img src="picture/cea534c45e082b42_1.jpg" alt="" />
									</a>
									<dl>
										<dt>女士休闲板鞋</dt>
										<dd>¥339</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130116">
										<img src="picture/6c81160d7eb1ffd6_1.jpg" alt="" />
									</a>
									<dl>
										<dt>时尚一脚蹬 男款</dt>
										<dd>¥189</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>户外运动</dt>
								<dd>斯凯奇、Saucony等&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=39">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130067">
										<img src="picture/9e5fff0350c9337c_1.jpg" alt="" />
									</a>
									<dl>
										<dt>RUNPRO男士跑鞋</dt>
										<dd>¥269</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130115">
										<img src="picture/2ade3efd0cd6585c_1.jpg" alt="" />
									</a>
									<dl>
										<dt>一体织训练鞋男</dt>
										<dd>¥279</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130142">
										<img src="picture/8646971797022320_1.jpg" alt="" />
									</a>
									<dl>
										<dt>减震耐磨跑步袜×3</dt>
										<dd>¥79</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130089">
										<img src="picture/8290376913855495_1.jpg" alt="" />
									</a>
									<dl>
										<dt>RC男士弹力速干T</dt>
										<dd>¥139</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130151">
										<img src="picture/2023107608208585_1.jpg" alt="" />
									</a>
									<dl>
										<dt>男装跑步黑白T</dt>
										<dd>¥169</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130135">
										<img src="picture/7803742938721478_1.jpg" alt="" />
									</a>
									<dl>
										<dt>进攻型羽毛球拍</dt>
										<dd>¥269</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130094">
										<img src="picture/5426477222766753_1.jpg" alt="" />
									</a>
									<dl>
										<dt>减震护脚运动袜x5</dt>
										<dd>¥69</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130151">
										<img src="picture/5627661207861050_1.jpg" alt="" />
									</a>
									<dl>
										<dt>男装运动速干T2件</dt>
										<dd>¥199</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>皮具配件</dt>
								<dd>COACH、MK&nbsp;&nbsp;制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=153">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130119">
										<img src="picture/7297729818638367_1.jpg" alt="" />
									</a>
									<dl>
										<dt>鸵鸟纹自动扣皮带</dt>
										<dd>¥279</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130091">
										<img src="picture/1161968099039031_1.jpg" alt="" />
									</a>
									<dl>
										<dt>细纹牛皮两用包</dt>
										<dd>¥699</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130105">
										<img src="picture/5d34e102798db6e_1.jpg" alt="" />
									</a>
									<dl>
										<dt>牛皮商务公文包</dt>
										<dd>¥479</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130126">
										<img src="picture/0795418104536180_1.jpg" alt="" />
									</a>
									<dl>
										<dt>大锁扣真皮女包</dt>
										<dd>¥669</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130119">
										<img src="picture/5293614766882479_1.jpg" alt="" />
									</a>
									<dl>
										<dt>男士短款钱夹</dt>
										<dd>¥199</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130091">
										<img src="picture/9626065292387256_1.jpg" alt="" />
									</a>
									<dl>
										<dt>迷你单肩包</dt>
										<dd>¥429</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130119">
										<img src="picture/2459633705156422_1.jpg" alt="" />
									</a>
									<dl>
										<dt>压纹长款钱包</dt>
										<dd>¥299</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130119">
										<img src="picture/5757711399902849_1.jpg" alt="" />
									</a>
									<dl>
										<dt>编织纹男士钱包</dt>
										<dd>¥219</dd>
									</dl>
								</li>
							</ul>
					</div>
				<div class="category-recommend-3">
						<div class="category-title">
							<dl>
								<dt>数码配件</dt>
								<dd>数码配件&nbsp;&nbsp;飞利浦制造商出品</dd>
							</dl>
							<a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=223">更多商品 &gt;</a>
						</div>
						<ul class="category-list">
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130139">
										<img src="picture/7601277708259519_1.jpg" alt="" />
									</a>
									<dl>
										<dt>苹果认证数据线</dt>
										<dd>¥45</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130065">
										<img src="picture/5a5f440f9be303b4_1.jpg" alt="" />
									</a>
									<dl>
										<dt>13"MacBook Air包</dt>
										<dd>¥49</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130139">
										<img src="picture/aee530ff6b43fcce_1.jpg" alt="" />
									</a>
									<dl>
										<dt>USB排插</dt>
										<dd>¥45</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130119">
										<img src="picture/0488332023272688_1.jpg" alt="" />
									</a>
									<dl>
										<dt>头层牛皮键盘垫</dt>
										<dd>¥269</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130139">
										<img src="picture/df2c02df51627a06_1.jpg" alt="" />
									</a>
									<dl>
										<dt>USB车充</dt>
										<dd>¥49</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130139">
										<img src="picture/d06aa7feec3fa73a_1.jpg" alt="" />
									</a>
									<dl>
										<dt>4口USB充电器</dt>
										<dd>¥59</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130139">
										<img src="picture/e24212c07309043b_1.jpg" alt="" />
									</a>
									<dl>
										<dt>尼龙苹果数据线</dt>
										<dd>¥65</dd>
									</dl>
								</li>
							<li>
									<a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130139">
										<img src="picture/d64d9bfdf18c13f0_1.jpg" alt="" />
									</a>
									<dl>
										<dt>安卓通用数据线</dt>
										<dd>¥25</dd>
									</dl>
								</li>
							</ul>
					</div>
				<span id="moreModule">下拉加载更多</span>
	</div>
<!-- 底部栏 -->
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

	<script type="text/javascript"	src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript"	src="js/jquery.cookie.js"></script>
	<script type="text/javascript"	src="js/mastercommon.js"></script>
	<script type="text/javascript" src="js/index.js" ></script><script type="text/javascript" src="js/bytrack.js"></script>

</body> 
</html>