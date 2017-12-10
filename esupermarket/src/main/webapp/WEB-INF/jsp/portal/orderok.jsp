<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta property="wb:webmaster" content="8eabb156d1a9cb46">
	<meta name="renderer" content="webkit"/>
 	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>必要平台-订单确认 – 我要的，才是必要的 – 必要biyao.com</title>
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
	
	 
	</script>

</head>
<body>

<!-- 新版首页 -->
	<div class="pub_nav">
  		<div class="wrap clearfix">
  			<div class="f_l">
  				<ul class="pub_nav_list sizeZero">
  					<li class="inline"><a href="http://www.biyao.com/home/index.html">首页</a><span class="bg"></span></li>
  					<li class="inline"><a onclick='LT.skip_to()'>商家中心</a><span class="bg"></span></li>
  					<li class="inline"><a href="http://www.biyao.com/minisite/bzzx">平台政策</a><span class="bg"></span></li>
					<li class="inline last newapp">
  						<a href="#">必要手机版</a>
  						<div class="app_box">
							<span class="inline upArre"></span>
							<div class="con">
								<p class="sj_evm"></p>
								<p class="lineH24 col_999">必要手机版</p>
							</div>
						</div>
	  				</li>
  				</ul>
  			</div>
  			<div class="f_r">
  				<ul class="pub_nav_list sizeZero">
					<li class="inline">
						<a class="login" href="order.html">${session_customer.nickname }</a>
						<a class="regist mg_l10" href="customer/logout">[ 退出 ]</a>
						<span class="bg"></span>
					</li>
					<li class="inline last ">
						<a href="javascript:void(0);" class="">个人中心<i class="inline pep_bg mg_l10"></i></a>
						<div class="app_box">
							<span class="inline upArre"></span>
							<div class="bg_fff down_list_box">
								<a class="inline" href="order.html">我的订单</a>
							</div>
						</div>
					</li>
				    <li class="inline last pd_r0 shopping_cart vTop">
						<a class="inline sizeZero" href="shopping.html">
							<i class="inline"></i>
							<span id="shopcarNumID" class="inline">购物车 0</span>
						</a>
					</li>
				</ul>
  			</div>
  		</div>
  	</div>
  	<div class="bd_bottom_ea">
  		<div class="wrap pub_logo_box clearfix">
  			<div class="pub_logo"><a href="index.html"><img alt="" src="picture/logo.png"></a></div>
  		</div>
  	</div>
</div><script>
var couponList = [];
var unCouponList= [];
var selectCoupon={code:"",amount:0};
</script>
<div class="wrap relative">
	<div class="shopStepBox">
		<div class="publicStepsbox">
			<div class="car_step_icon car_step2"></div>
			<ul class="clearfix car_step_txt">
				<li>查看购物车</li>
				<li class="checked">确认订单信息</li>
				<li>在线付款</li>
				<li>收货并评价</li>
			</ul>
		</div>
	</div>
</div>
<div class="pd_b40">
	<div class="wrap  ie78">
		<div class="mg_t20">
			<h4 class="nTitle">确认收货地址</h4>
			<ul id="d_address" class="comment_box detailed_address_list clearfix">
			
			<li class="address_box checked" name="receiveChecked" onclick="i_address_n_click(this);" address_id="1124174" area_id="120223">
				<div class="contact_box">
					<span class=" inline col_666 f14">123123</span>&nbsp;&nbsp;
					<span class=" inline col_666 f14">18612341234</span>
				</div>
				<div class="detailed_address_box">
					<p title="天津市县静海县" class=" f14 col_666 mg_t15 w250 escp">天津市&nbsp;&nbsp;静海县</p>
					<p class=" f12 col_666 lineH20">123123</p>
				</div>
				<div class="edit_btn_box ">
					<a class="inline col_link f14 mg_r15" href="javascript:;" onclick="javascript:void(0);">修改</a>
					<a class="inline col_link f14" href="javascript:;" onclick="javascript:void(0);">删除</a>
				</div>
				<span class="inline default_addres ">
					<i class="inline spIcon"></i>
					<span class="inline col_666 f14">默认地址</span>
				</span>
			</li>			
		<li><a class="add_address_box" onclick="s_new_address();"><i class="inline spIcon add_address_bg mg_t40"></i><br><span class="inline f18 col_999 mg_t15">使用新地址<em class="upfile_btn"></em></span></a></li>
			</ul>
		</div>
		<script>

			function s_new_address(){
                $(this).dialogFn({
                    type: "alert",
                    title: '收货地址',
                    height: "250px",
                    width: "750px",
                    btnText: ["寄到该地址"],
                    content: $("#pop_address").html(),
                    showAfter:function(){

					},
                })
			}
		</script>


		<div class="mg_t20">
			<h4 class="nTitle">确认订单</h4>
			<input type="hidden" id="fromId" value="shopcar" /> <input
				type="hidden" id="design_ids" value="[1301265001130000001, 1300915031060000001]" /> <input
				type="hidden" id="product_book_ids" value="[8108547, 7995296]" />
			<div class="clearfix mb_20">
				<div class="comment_box  ">
					<table cellspacing="0" cellpadding="0" class="sop_table1">
						<tbody>
							<tr>
								<th width="60% align="left" colspan="2">
									<!--暂时关闭IM入口，勿删-->
									<a>
										<span class="inline">商家：</span> 
										<span id="J_product_name " class="inline col_666">宝莱施Bolelis皮具</span>
									</a>
									<!--暂时关闭IM入口，临时替换--> 
								</th>
								<th width="10%" align="center" class="col_999">单价</th>
								<th width="18%" align="center" class="col_999">数量</th>
								<th  align="right" class="col_999">
									<span class="mg_r20">小计</span>
								</th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class='suppliergroup'
				data-s='130126'>

				<div class="bg_fff">
					<table cellspacing="0" cellpadding="0" class="sop_table1 tablecount">
						<tbody>
							<tr class="orderListTr">
								<input type="hidden" class="productId" value=""/>
								<td width="17%" align="center">
									<a target="_blank" href="http://www.biyao.com/products/1301265001130000001-0.html">
										<img class="border" width="100" height="100" alt=""	src="picture/f1d56d0b3c34628d_400.jpg" />
									</a>
								</td>
								<td width="35%" align="left">
									<div>
										<a target="_blank" href="http://www.biyao.com/products/1301265001130000001-0.html">
											<span class="col_333">大锁扣头层牛皮多用女包</span>
										</a>
									</div> 
									<input type="hidden" class="sizeno" value=颜色:裸粉>
									<div class="col_999 mg_t5 w300 escp">颜色:裸粉</div>
									<!-- 无模型商品和低模普通商品签字 -->
									<!-- 普通高模商品签字 -->
									<div class="refund_tips"></div>
 								</td>
								<td width="10%" align="center" class="none">
									<span class="col_333">0积分</span>
								</td>
								<td width="12%" align="center" class="col_333">
									<span class="col_666">￥669</span>
								</td>
								<td width="12%" align="center"
									class="col_333 td_buy_num relative"
									data-weight='0.0'
									data-id='8108547'
									data-pt='0' data-pd='0'
									data-pc='0'
									designid="1301265001130000001">
									<span class="col_333">1</span>
								</td>
								<td width="12%" align="center" class="col_333">
									<span class="col_333">普通包装</span> 
									<span class="col_333">(免费)</span>
								</td>
								<td width="12%" align="right">
									<strong	class="  mg_r20">￥669</strong>
								</td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" send_type_value="0"
						id="supplier_IDForDiscountCode" value="1"
						name="order_design_num" expresstype_id="0"
						supplier_id="130126" />
					<div class="backg_f6 clearfix pd_b10">
						<div class="merchantMsgBox">
							<table width="500" cellspacing="0" cellpadding="0" border="0"
								class=" f_l">
								<tbody>
									<tr>
										<td class="vTop col_666 pd_r10">给商家留言</td>
										<td><textarea id="remark" name="express_c"
												supplier_id="130126"
												data-highlight="highlight" maxlength="50"
												placeholder="建议填写内容已提前与商家沟通一致"
												class="J_placeholder textareaCom w390 h73 bdDB"></textarea>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="paybill_title f14">
					<div class="paybilltitleIn">
						<input type="hidden" value="669.0"
							name="order_design_price"
							supplier_id="130126" />
						店铺合计（含运费）：<span class="col_f60 f14 mg_r20"><span
							name="order_price"
							supplier_id="130126">￥669</span></span>
					</div>
				</div>
			</div>



			</div>
		<input type="hidden" id="shop_car_id"
			value="8108547|1,7995296|8" />
		<input type="hidden" id="hid_designids"
			value="1301265001130000001,1300915031060000001" />
		<input type="hidden" id="hid_designnum"
			value="1,8" />
		<div class="shoppingBox mg_t20 border none">
			<div class="order_title col_333 f15">虚拟账户</div>
			<div class="pd20">
				<p>
					<label class="inline"><i
						onclick="i_lose_point_click(this);" id="ck_is_p"
						class="openIcon inline cursor"></i>&nbsp;&nbsp;使用积分</label>
				</p>
				<p id="point_true" class="mg_t15 l_h40 none"></p>
				<div id="is_use_point" class="receipt_box mg_t10 none">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td width="120" height="40" align="right">现有积分：</td>
								<td width="400"><span>0点</span>&nbsp;&nbsp;&nbsp;<span
									id="just_this_point">【本次交易最多可用 0 点】
								</span></td>
							</tr>
							<tr>
								<td height="40" align="right">使用积分：</td>
								<td><input type="text" onafterpaste="lose_point(this);"
									value="" onkeyup="lose_point(this);" maxlength="10"
									class="inpCom w120" id="lose_point_text" />&nbsp;点</td>
							</tr>
							<tr>
								<td height="40" align="right">虚拟账户密码：</td>
								<td><input type="password" class="inpCom w220" value=""
									maxlength="36" id="virtuapwd" /> <a target="_blank"
									href="http://www.biyao.com/MyCenter/ProfileRe"
									class="col_07a6df">忘记密码？</a></td>
							</tr>
							<tr>
								<td></td>
								<td valign="bottom" height="40px"><a onclick="sub_point()"
									href="javascript:void(0)"
									class="publicBtn publicBtn_h31 publicBtn_f60 inline">确定使用</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="none">
					<a data-usepoint="0" id="point_message"></a>
				</div>
			</div>
		</div>
		<div class="bg_fff border mg_t30  relative">
			<div class="experience_entrance none">
				<div id="experienceBtn" class="experience_btn">
					<span class="inline f16 col_724">使用体验码</span> <span
						class="inline tyq_bg tb3"></span>
				</div>
				<div class="experience_con mg_t20 none" id="experienceInputOut">
					<label class="sizeZero"> <input id="experienceInput"
						type="text" class="exper_input inline col_666 mg_r10"
						placeholder="请输入体验码编号" /> <input id="experienceUseBtn"
						type="submit" class="inline experience_use_btn" value="使用" /> <input
						id="experienceCancelBtn" type="submit"
						class="inline experience_use_btn none" value="取消" />
					</label>
					<p id="experienceCheckTips" class="experience_error_msg col_b76"></p>
					<input type="hidden" id="experienceCodeHidden" value="" />
				</div>
			</div>
			<div class="firmbox mg_t20">

				<div class="lineH30  pd_l10 pd_r20 clearfix ">
					<div class="f_r col_666 f14">
						商品总价：<span class="w80 inline t_r col_f60 pd_r5 f14"
							id="total_order_design_price">￥669</span>
					</div>
					<span class="inline f_r mg_r30  col_666">商品总数 <em
						id="productNum" class="col_f60 fb f14">1</em> 件
					</span>
				</div>

				<div class="lineH30  pd_l10 pd_r20 clearfix ">
					<div id="discount_price" class="f_r col_666 f14 "></div>
				</div>
				<div class="clearfix">
					<ul class="firm_ul f_r mg10">

						<li class="f14 col_666">实际支付金额：<strong class="col_f60 ">
								<em class="f18 fb inline w80" id="total_order_price">669</em>元
						</strong></li>
						<input type="hidden" value="6261.0"
							id="total_order_design_price_h" />
						<input type="hidden" value="0" id="h_my_point" />
					</ul>
				</div>
				<div style="display: none;" id="confirmorder_recv_info"
					class="clearfix t_r ">
					<span id="area" class="f14  col_666 mg_r5"></span><br> <span
						id="address" class="f14  col_666 mg_r5"></span><br> <span
						id="name" class="f14  col_666 mg_r5"></span><br> <span
						id="phoneNum" class="f14 col_666 mg_r5"></span>
				</div>
			</div>
			<div class="pd_t10 t_r pd_r20 mg_b20">
				<a href="shopping.html" class=" col_999 back_pay_btn inline f16 mg_r20">返回购物车</a> 
				<a id="submitBtn" href="order/pay.do" class="inline f16 order_qr_btn t_c ">提交订单</a>
			</div>
		</div>
	</div>
</div>
</div>
<script type="text/template" id="pop_address">
<form id="form_address">
<input type="hidden" id="i_address_id" value="0"/>
<table class="per_table" width="100%" cellspacing="10">
    <tr>
        <td width="20%" align="right">
            <span class="col_ee5b47"></span>收货人姓名：&nbsp;
        </td>
        <td width="80%">
            <input id="i_receiver" type="text" value="" name="i_n_receiver" maxlength="12" class="inpCom w200 permy" onkeypress="return ValidateSpecialCharacter()"/>
			<span id="receiver_msg"></span>
        </td>
    </tr>

    <tr>
        <td align="right">
            <span class="col_ee5b47"></span>详细地址：&nbsp;
        </td>
        <td>
            <input id="i_address" type="text" value="" name="i_n_address" maxlength="31" class="inpCom w200 permy" onkeypress="return ValidateSpecialCharacter()" onkeyup="checkAddressLength();"/>
			<span id="address_msg"></span>
        </td>
    </tr>
    <tr>
        <td align="right">
            <span class="col_ee5b47"></span>手机号码：&nbsp;
        </td>
        <td>
            <input id="i_phone" type="text" value="" name="i_n_phone" maxlength="11" class="inpCom w200 permy"/>
			<span id="phone_msg"></span>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="isdefault">
            <div class="openIcon inline cursor checkedc"></div>
            <input type="checkbox" id="i_default_address" />
            <label id="default_address_html" class="col_000">
                设为默认地址</label>
        </td>
    </tr>
</table>
</form>
</script>
<script src="js/jquery.validate.js?v=biyao_3051366"></script>
<script src="js/jquery.tabso.js?v=biyao_e358f64"
type="text/javascript"></script>
<script type="text/javascript"
	src="js/ConfirmOrderDes.js?v=biyao_7d2e462"></script>
<script type="text/javascript"
	src="js/lazyload.js?v=biyao_80d4f78"></script>
 <script type="text/javascript"
	src="js/lazyloadIM.js?v=biyao_c5ce53c"></script>
<script type="text/javascript" src="js/materiallistDes.js?v=biyao_21283ab"></script>
<script type="text/javascript"
	src="js/jquery.cookie.js?v=biyao_a5283b2"></script>
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
    				<a target="_blank"  href="javascript:;">联系我们</a>
    				<span class="bg_line"></span>
    			</li>
    			<li class="none">
    				<a target="_blank"  href="javascript:;">网站地图</a>
    			</li>
    			<li>
    				<a target="_blank"  href="javascript:;">官方微博</a>
    				<span class="bg_line"></span>
    			</li>
    			
    		</ul>
    		<p class="col_999 lineH18 mg_t10">◎BIYAO.COM 2015 版权所有   			
			</p>
			<p class="col_999 lineH18 mg_t10"><i class="gwab_icon inline"></i><a class="col_999 inline mg_r5" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44049102496139" target="_blank">粤公网安备44049102496139号</a> <a class="col_999 inline" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">粤ICP备13088531号</a>   			
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