<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<meta charset="UTF-8">

<link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/form/jquery.form.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
   $(function(){
$("#saveBtn").bind("click",function(){
	   
	   $("#productForm").submit();
})
//验证商品编号
	  //编号不为空 编号 长度不能超过15个字符  编号由字母；数字字母下划线组成
	  $("#createProductNo").bind("blur",function(){
		    var productNo = this.value;
			var regExp = /^[A-Za-z0-9_-]*$/;
			
			if(productNo==""){
				$("#checkNoMsg").text("商品编号不能为空")
				return
			}
			
			if(productNo.length>15){
				$("#checkNoMsg").text("商品编号不能超过15个字符")
				return
			}
			
			if(regExp.test(productNo)==false){
				$("#checkNoMsg").text("商品编号有字母数字下划线组成")
				return
			}
			$("#checkNoMsg").text("");
	  })
	  
	  //验证商品名称  
		//商品标题不能为空 商品标题长度不能超过15  
		$("#createTitle").bind("blur",function(){
			var title = this.value;
			if(title==""){
			$("#checkTitleMsg").text("商品标题不能为空")
			return 
			}
			if(title.length>15){
				$("#checkTitleMsg").text("商品编号不能超过15个字符")
				return 
			}
			
			$("#checkTitleMsg").text("");
		})
		
		//验证商品单价   
		//商品价格不能为空，必须为数字  必须大于0
		$("#createprice").bind("blur",function(){
			var price =this.value;
			if(price==""){
				$("#checkPriceMsg").text("商品价格不能为空")
				return 
				}
				if(isNaN(price)){
				$("#checkPriceMsg").text("价格必须为数字")
				  return 
				}
				if(price<0){
					$("#checkPriceMsg").text("价格必须为大于零")
					  return 
				}
				$("#checkPriceMsg").text("")
				
		})
		
		$("#createProductNo").bind("blur",function(){
		    var productNo = this.value;
			var regExp = /^[A-Za-z0-9_-]*$/;
			
			if(productNo==""){
				$("#checkNoMsg").text("商品编号不能为空")
				return
			}
			
			if(productNo.length>15){
				$("#checkNoMsg").text("商品编号不能超过15个字符")
				return
			}
			
			if(regExp.test(productNo)==false){
				$("#checkNoMsg").text("商品编号有字母数字下划线组成")
				return
			}
			$("#checkNoMsg").text("");
	  })
	  
	  //验证商品名称  
		//商品标题不能为空 商品标题长度不能超过15  
		$("#createTitle").bind("blur",function(){
			var title = this.value;
			if(title==""){
			$("#checkTitleMsg").text("商品标题不能为空")
			return 
			}
			if(title.length>15){
				$("#checkTitleMsg").text("商品编号不能超过15个字符")
				return 
			}
			
			$("#checkTitleMsg").text("");
		})
		
		//验证商品单价   
		//商品价格不能为空，必须为数字  必须大于0
		$("#createprice").bind("blur",function(){
			var price =this.value;
			if(price==""){
				$("#checkPriceMsg").text("商品价格不能为空")
				return 
				}
				if(isNaN(price)){
				$("#checkPriceMsg").text("价格必须为数字")
				  return 
				}
				if(price<0){
					$("#checkPriceMsg").text("价格必须为大于零")
					  return 
				}
				$("#checkPriceMsg").text("")
				
		})
})  
  function checkImage(){
	var images=$("#productForm input[type='file']")
	var regExp = /(.*).(jpg|bmp|gif|jpeg|png)$/;
	$.each(images,function(i,n){
		if($(n).val()!=""){
			if(!regExp.test($(n).val())){
				$("#checkImages").text("图片仅支持：jpg|bmp|gif|jpeg|png 以上格式！")
				return false
			}
		}
		$.each($(".hidden"),function(i,n){
			if($(n).val()==""){
				$("#checkImages").text("图片不能为空")
				return false 
			}
		})
		$("#checkImages").text("");
	})
} 
 function checkForm(){
	 var flag=true;
 	$(".form-control").blur();
	     checkImage();
	 $.each($(".checkSpan"),function(i,n){
		if($(n).text()!=''){
			flag = false;
			
			  }
		});
	return flag;
}
</script>
</head>
<body>

	<div style="position:  relative; left: 30px;">
		<h3>修改商品信息</h3>
	  	<div style="position: relative; top: -40px; left: 70%;">
			<button type="button" class="btn btn-primary" id="saveBtn">更新</button>
			<button type="button" class="btn btn-default">返回</button>
		</div>
		<hr style="position: relative; top: -40px;">
	</div>

	<form action="product/update.do"  onsubmit="return checkForm()" class="form-horizontal" id="productForm" role="form" enctype="multipart/form-data"  method="post">
		<div class="form-group">
			 <input type="hidden" name="id" value="${product.id}">
			<label for="create-subject" class="col-sm-2 control-label">商品编号<span id="checkNoMsg" class="checkSpan" style="font-size: 15px; color: red;"></span></label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="createProductNo" name="productNo" value="${product.productNo}">
			</div>

			<label for="create-subject" class="col-sm-2 control-label">商品标题<span id="checkTitleMsg" class="checkSpan" style="font-size: 15px; color: red;"></span></label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="createTitle" name="title" value="${product.title}">
			</div>

		</div>
		<div class="form-group">
			<label for="create-expiryDate" class="col-sm-2 control-label">商品单价</label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="createprice" name="price" value="${product.price}">
				<span id="checkPriceMsg" style="color: red" class="checkSpan"></span>
			</div>

			<label for="create-priority" class="col-sm-2 control-label">商品状态</label>
			<div class="col-sm-10" style="width: 300px;">
				<select class="form-control" id="create-Status" name="status">
				  <option value="0">未发布</option>
				  <option value="1">发布</option>
				  <option value="2">失效</option>
				</select>
				
				<script type="text/javascript">
				   $("#create-Status").val("${product.status}")
				</script>
			</div>

		</div>
		
		<div class="form-group">
			<label for="create-describe" class="col-sm-2 control-label">商品卖点</label>
			<div class="col-sm-10" style="width: 70%;">
				<textarea class="form-control" rows="3" id="create-sellPoint" name="sellPoint">${product.sellPoint}</textarea>
			</div>
		</div>
		
		<div style="position: relative; left: 40px; height: 30px; top: 60px;">
			<div style="position: relative;top: 20px; left: 50px;">
				请选择要上传的图片：<small style="color: gray;">[仅支持.jpg或.png格式]</small>
			</div>
			<div style="position: relative;top: 50px; left: 50px;">
				<input type="file" name="images"/>
				<input type="hidden" name="image1" class=".hidden" value="${product.image1}">
				<img src="${product.image1}" style="width:600px;height:300px;"/><br>
				<input type="file" name="images"/>
				<input type="hidden" name="image2" class=".hidden" value="${product.image2}">
				<img src="${product.image2}" style="width:600px;height:300px;"/><br>
				<input type="file" name="images"/>
				<input type="hidden" name="image3" class=".hidden" value="${product.image3}">
				<img src="${product.image3}" style="width:600px;height:300px;"/><br>
				<input type="file" name="images"/>
				<input type="hidden" name="image4" class=".hidden" value="${product.image4}">
				<img src="${product.image4}" style="width:600px;height:300px;"/><br>
				<input type="file" name="images"/>
				<input type="hidden" name="image5" class=".hidden" value="${product.image5}">
				<img src="${product.image5}" style="width:600px;height:300px;"/><br>
				<span id="checkImages" style="color:red;" class="checkSpan"></span>
			</div>
		</div>
	</form>

</body>
</html>