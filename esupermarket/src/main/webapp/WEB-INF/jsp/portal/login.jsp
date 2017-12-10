<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<title>登录首页 – 我要的，才是必要的 – 必要biyao.com</title>
	<link href="picture/favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<link href="picture/favicon.ico" rel="icon" type="image/x-icon" />

	<link type="text/css" href="css/common.css" rel="stylesheet" />
	<link type="text/css" href="css/cm_www.css" rel="stylesheet" />
	<link type="text/css" href="css/new.main.css" rel="stylesheet" />
	<script type="text/javascript"	src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript"	src="js/mastercommon.js"></script>
	<script type="text/javascript"	src="js/jquery.extention.js"></script>  
	<script type="text/javascript" src="js/lazyload.js"></script> 
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript">
     $(function(){
    	 //这里需要加一个 如果session中有值  自动挑转到  index.jsp
    	   checkstatus();
    	 //登录功能
         $("#loginbutton").bind("click",function(){
           var phone = $("#phone").val();
           var password =$("#passwd1").val();
           
           //发送ajax请求
           $.post("customer/login.do",
                   {phone:phone,
            	    password:password},
            	   function(data){
                	 
                	 if(data.success){
                		 window.location.href="${return_url}"
                	 }else{
                		 $("#returnMsg").text(data.errorMsg);
                	 }
                   },
            		"json") 
             
         }) 
         
          //验证手机号   验证密码
     })
     function checkstatus(){
       if(${not empty session_customer}){
    	   window.location.href="main/index.do"
       }
     }
    </script>
</head>

<div class="bd_bottom_ea">
	<div class="wrap pub_logo_box clearfix">
		<div class="pub_logo f_l"><a href="/home/index.html"><img alt="" src="picture/logo.png"></a></div>
		<div class="f_r">
			<ul class="sizeZero merchant_info_box">
				<li class="inline mg_l40 mg_t40">
					<span class="inline col_8c8">欢迎来到必要，请 </span><span class="col_8c8 inline mg_l5">登录 </span><span class="col_8c8 mg_l5 mg_r5 inline">|</span><a class="col_8c8 inline" href="main/register.do?returnURL="+index.jsp>注册</a> 
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="wrap h580">
<div class="loginItem auto ">
   	<form class="loginBox" method="post" id="J_login" onsubmit="return checkForm()">
   		<div class="inline loginTitBox"><i class="inline loginListBg spIcon mg_r10"></i><span class="inline">用户登录</span></div>
	   	<dl class="mg_t20 ">
	   		<dd class="inline mg_r5"><input value="请输入您的手机号码" type="text" name="userName" id="phone" class=" loginTxt  w360 col_999"  /></dd>
	        <dd class="J_validate inline col_f90 "></dd>
	   	</dl>
	   	<dl class=" mg_t20 ">
	   		<dd class="inline mg_r5">
	   		
	   			<input id="passwd1"  type="password"   class=" loginTxt w360 col_999 none"  />
	   			<input id="passwd_show" type="text" value="请输入您的密码"    class=" loginTxt w360 col_999"/>
	   		</dd>
	        <dd class="J_validate inline col_f90" ></dd>
	   	</dl>
	   	<dl class="mg_t20 sizeZero none" id="authCode">
	   		<dd class="inline mg_r20"><input value="请填写右侧的验证码" type="text" name="" id="checkNum" class="loginTxt w160 col_999" maxlength="4"/></dd>
	   		<dd class="inline mg_r20"><img src="picture/grey.gif" height="45" width="120" id="imgVCode" /></dd>
	   		<dd class="inline mg_r5"><a href="javascript:;" id="imgChange" class="col_999 unLine">看不清<br/>换一张</a></dd>
	        <dd class="J_validate_code inline col_f90 "></dd>
	   	</dl>
	   	<dl class="mg_t20 w400 relative">
	      	<!-- <dt class="inline">&nbsp</dt> -->
	       	<dd class="inline">
	           	<span class="inline mg_r10 "><i class="openIcon inline mg_r10" name="checkRememberMe"></i><span class="inline col_8a8a8a">下次自动登录</span></span>
	               <a href="javascript:void(0)" class="inline col_link boxR">忘记密码</a>
	       	</dd>
	   	</dl>
	   	<dl class="mg_t10">
	      	<dd class="J_loginTips inline "><span class="col_f90"></span></dd>
	   	</dl>
	   	<span id ="returnMsg" style="color: red"></span>
	  	<input type="hidden"  id="returnUrlId" name="returnUrl" value="javascript:void(0)"/>
	   	<input type="button"  class="J_login_btn loginBtn w400  inline t_c mg_t10" id="loginbutton" value="登录"/> <br/>
	   	<div class="w400 mg_t40">
	   		<p class="sizeZero">
	   			<span class="col_666 f14 mg_r10 inline">使用第三方账号登录：</span>
<!-- 	   			<a onclick="return window.open('https://graph.qq.com/oauth2.0/authorize?client_id=101235242&response_type=token&scope=all&redirect_uri=http%3A%2F%2Fqzonestyle.gtimg.cn%2Fqzone%2Fopenapi%2Fredirect.html', 'oauth2Login_10000' ,'height=525,width=585, toolbar=no, menubar=no, scrollbars=no, status=no, location=yes, resizable=yes')" href="javascript:;" class="inline pd_r10 qq_login"> QQ</a> -->
	   			<a class="inline weix_login" href="javascript:void(0);" style="border-left:1px solid #ddd">微信</a>
	   		<a  class="qq_login inline mg_l10 "href="javascript:void(0);" onclick="qqLogin();" >qq</a>
	   		</p>
	   	</div>
		
		</form>
</div>
</div>
<!-- <script type="text/javascript" src="js/qc.js" charset="utf-8" ></script>   -->
<script>
function qqLogin(){
	var returnUrl = $("#returnUrlId").val();
	var url = "http://www.biyao.com/account/qqlogin.html?returnUrl="+returnUrl;
	window.location.href=url;
}
</script>
<script type="text/javascript">
// 调用QC.Login方法，指定btnId参数将按钮绑定在容器节点中  
// 	QC.Login.getMe(function(openId, accessToken) {
// 		$.ajax({
// 			url:'/account/qqlogin.html',
// 			data:{"openid":openId,"access_token":accessToken,"platform":"pc"},
// 			dataType:'json',
// 			type:'post',
// 			async:false,
// 			success:function(result){
// 				if(result.success==1){
// 					window.location.href=$("#returnUrlId").val();
// 				}
// 			},
// 			error:function(XMLHttpRequest, textStatus, errorThrown){
				
// 			}
// 		});
// 	});
//登录 验证码  

</script>



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
<script src="js/common.js" type="text/javascript"></script>
	<script src="js/common.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
		
	 	 $(".loginTxt").focus(function(){
				 if ($(this).val() == $(this)[0].defaultValue) {
					    $(this).val("");
				  }
				
			});

	 	 	$("#passwd_show").focus(function(){
	 	 		$(this).addClass("none");
	 	 		$("#passwd1").removeClass("none").focus();
	 	 	});
	 	 	$("#passwd1").blur(function(){
	 	 		if ($.trim($(this).val()) == "") {
		 	 		$("#passwd_show").removeClass("none");
		 	 		$(this).addClass("none")
		 	 	}
	 	 	});
			$(".loginTxt").blur(function(){
				  if ($.trim($(this).val()) == "") {
					    $(this).val($(this)[0].defaultValue);
					   }
			});
	});
	
</script>
<script src="js/validate.js"></script>
<script type="text/javascript">
	$(function(){
		setTimeout(function(){
			LT.temp.loginFn.changeVcode();
		},100);
		
		$('form').find("[name='checkRememberMe']").click(function(){
			$(this).parent().toggleClass('checked');
			if($(this).parent().hasClass('checked')){
				$(this).next().text("请勿在公用电脑上勾选此选项");
			}else{
				$(this).next().text("下次自动登录");
			}
		})
		LT.temp.loginFn.login($("#J_login"));
		isLoginError();
		/* $(".J_login_btn").click(function(){ 
			isLoginError();
		}); */
		$("#imgChange").bind('click',function(){
			LT.temp.loginFn.changeVcode();
		});
		
	})
	function register(){
		parent.window.open('http://www.biyao.com/account/register.html?returnUrl='+parent.window.location.href);
	}
	function findpwd(){
		parent.window.open('http://www.biyao.com/findpwd/index?returnUrl='+parent.window.location.href);
	}
	
//判断是否显示验证码登录 
function isLoginError(){
	
	if(parseInt($.cookie("loginErrorTimes"))>=2){
		
			$("#authCode").removeClass("none");
		
	}
}

</script>
</body>
</html>