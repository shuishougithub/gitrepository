<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<meta charset="UTF-8">

<link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="jquery/bs_pagination/css/jquery.bs_pagination.min.css" type="text/css" />

<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery/bs_pagination/js/jquery.bs_pagination.min.js"></script>
<script type="text/javascript" src="jquery/bs_pagination/js/localization/en.js"></script>
<script rype="text/javascipt">
   $(function(){
	   display(1,3);
	   
		$("#checkALlBox").click(function(){
			$("#productBody :checkbox").prop("checked",this.checked);
		});
		//显示修改页面
		$("#editBtn").bind("click",function(){
			
			if( $("#productBody :checkbox:checked").length!=1){
				$("#chooseMsg").text("请选择一个要修改的商品")
				 return 
			   }
			$("#chooseMsg").text("")
			 var id =$("#productBody :checkbox:checked").val();
			 window.location.href = "product/edit.do?id="+id;
		})
		//删除  这里用数组接受就好很多
		$("#deleteBtn").bind("click",function(){
			if( $("#productBody :checkbox:checked").length<1){
				$("#chooseMsg").text("请选择要删除的商品")
				 return 
			}
			$("#chooseMsg").text("")
			var ids = "";
			$.each($("#productBody :checkbox:checked"),function(i,n){
				ids += "id="+$(n).val()+"&"
			})
			
			 $.ajax({
				 url:"product/delete.do",
				 data:ids,
				 type:"get",
				 success:function(data){
					if(data.success){
					location.replace(location.href);
					}else{
						alert("删除失败！");
					}
				 }
			 })
		})
   })
   //分页方法
   function display(pageNo,pageSize){
	    var productNo = $("#productNo").val();
	   var title = $("#productTitle").val();
	   var price= $("#productPrice").val();
	   var sellPoint=$("#productSellPoint").val();
	   var status = $("#productStatus").val();
	   
	  //发送 ajax
	  $.ajax({
		  url:"product/display.do",
		  data:{
			  pageNo:pageNo,
			  pageSize:pageSize,
			  productNo:productNo,
			  title:title,
			  price:price,
			  sellPoint:sellPoint,
			  status:status
		      }, 
		  type:"get",
	      success:function(data){
	    	  $("#productBody").empty();
	    	  //首先确定有数据 没查到给予提示
	    	  if(data.total>0){
	    		  var htmlStr="";
	    		  $.each(data.dataList,function(i,n){
	    			  var status="";
	    			  if(n.status=="0"){
	    				  status="未发布";
	    			  }else if(n.status=="1"){
	    				  status="发布";
	    			  }else if(n.status=="2"){
	    				  status="失效";
	    			  }
	    			  htmlStr+='<tr>';
	    			  htmlStr+='<td><input type="checkbox" value="'+n.id+'" onclick="checkAllOrCancelAll()"/></td>';
	    			  htmlStr+='<td><a style="text-decoration: none; cursor: pointer;" onclick="window.location.href=\'product/detail.do?id='+n.id+'\';">'+n.productNo+'</a></td>';
	    			  htmlStr+='<td>'+n.title+'</td>';
	    			  htmlStr+='<td>'+n.price+'</td>';
	    			  htmlStr+='<td>'+status+'</td>';
	    			  htmlStr+='<td>'+n.sellPoint+'</td>';
	    			  htmlStr+='</tr>';  
	    		  })
	    		  $("#productBody").append(htmlStr);
	    		  
	    		     if(data.total%pageSize==0){
						totalPages=data.total/pageSize;
					}else{
						totalPages=parseInt(data.total/pageSize)+1;
					}
					$("#paginationDiv").bs_pagination({
						  currentPage: pageNo, //当前页号
						  rowsPerPage: pageSize,//每页显示条数
						  totalRows: data.total,//总条数
						  totalPages:totalPages, //总页数
						  
						  visiblePageLinks: 2,//显示的卡片数
						  
						  showGoToPage: true,//是否显示 跳转到第几页
						  showRowsPerPage: true,//是否显示 每页显示多少条
						  showRowsInfo: true, //是否显示记录信息
						  
						  /*
						  	当切换页面时，触发执行本函数.
						  	event:代表页面切换的事件.
						  	pageObj:代表页面信息对象。主要是用来获取rowsPerPage和rowsPerPage的。
						  */
						  onChangePage: function(event,pageObj) { // returns page_num and rows_per_page after a link has clicked
							  //alert(pageObj.currentPage);
						  	  //alert(pageObj.rowsPerPage);
						  	  display(pageObj.currentPage,pageObj.rowsPerPage);
						  }
					  });
	    	  }else{
	    		  alert("没有您查找的数据");
	    	  }  
	    	 
	 
	      }
	  }) 
   }
   
   //全选全不选
   function checkAllOrCancelAll(){
	  $("#checkALlBox").prop("checked",$("#productBody :checkbox").length==
		  $("#productBody :checkbox:checked").length)
   }
</script>
</head>
<body>

	<div style="width: 80%">
		<div style="position: relative; left: 10px; top: -10px;">
			<div class="page-header">
				<h3>商品列表</h3>
			</div>
		</div>
	</div>
	
	<div style="position: relative; top: -20px; left: 0px; width: 100%; height: 100%;">
	
		<div style="width: 80%; position: absolute;top: 5px; left: 10px;">
		
			<div class="btn-toolbar" role="toolbar" style="height: 80px;">
				<form class="form-inline" role="form" style="position: relative;top: 8%; left: 5px;">
				  
				  <div class="form-group">
				    <div class="input-group">
				      <div class="input-group-addon">商品编号</div>
				      <input class="form-control" type="text" id="productNo">
				    </div>
				  </div>
				  
				   <div class="form-group">
				    <div class="input-group">
				      <div class="input-group-addon">商品标题</div>
				      <input class="form-control" type="text" id="productTitle">
				    </div>
				  </div>
				  
				   <div class="form-group">
				    <div class="input-group">
				      <div class="input-group-addon">商品单价</div>
				      <input class="form-control" type="text" id="productPrice">
				    </div>
				  </div>
				  
				  <br>
				  
				  <div class="form-group">
				    <div class="input-group">
				      <div class="input-group-addon">商品卖点</div>
				      <input class="form-control" type="text" id="productSellPoint">
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <div class="input-group">
				      <div class="input-group-addon">商品状态</div>
					  <select class="form-control" id="productStatus">
					  	<option></option>
					    <option value="0">未发布</option>
					    <option value="1">已发布</option>
					    <option value="2">失效</option>
					  </select>
				    </div>
				  </div>
				  
				  <button type="button" class="btn btn-default">查询</button>			  
				   <span id="message" style="color:red;font-size:16px;"></span>
				</form>
			</div>

			<div class="btn-toolbar" role="toolbar" style="background-color: #F7F7F7; height: 50px; position: relative;top: 5px;">
				<div class="btn-group" style="position: relative; top: 18%;">
				  <button type="button" class="btn btn-primary" onclick="window.location.href='product/create.do';"><span class="glyphicon glyphicon-plus"></span> 创建</button>
				 
				  <button type="button" class="btn btn-default" id="editBtn"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
				  <button type="button" class="btn btn-danger" id="deleteBtn"><span class="glyphicon glyphicon-minus"></span> 删除</button>
				  <span id="chooseMsg" style="color: red;"></span>
				</div>
			</div>

			<div style="position: relative;top: 10px;" >
				<table class="table table-hover">
					<thead>
						<tr style="color: #B3B3B3;">
							<td><input type="checkbox" id="checkALlBox"/></td>
							<td>商品编号</td>
							<td>商品标题</td>
							<td>商品单价</td>
							<td>商品状态</td>
							<td>商品卖点描述</td>
						</tr>
					</thead>
					<tbody id="productBody">
						
					</tbody>
				</table>
				<div id="paginationDiv"></div>
			</div>
			
		</div>
		
	</div>
</body>
</html>