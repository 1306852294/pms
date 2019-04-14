<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/company_css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/company_css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/company_css/personpage.css">
<script
	src="${pageContext.request.contextPath }/static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/static/company_script/main.js"></script>
<title>个人中心</title>
</head>

<body>
	<!-- 顶部 -->
	<c:import url="header.jsp"></c:import>

	<!-- 导航部 -->
	<div class="navBar">
		<ul class="list">
			<li><a href="total_project.do"><span
					class="glyphicon glyphicon-th-list"></span> 全部项目</a></li>
			<li class="active"><a href="personpage.do"><span
					class="glyphicon glyphicon-user"></span> 个人中心</a></li>
		</ul>
	</div>


	<!-- 主体部 -->
	<div class="main">
		<div class="main_info">


			<!-- 个人中心 -->
			<div id="user" class="userCenter" style="display: block;">
				<div class="main_left">
					<img src="./../static/images/company/photo.png" alt="用户照片"
						width="185px;">
					<div>
						<span class="name">${cname }</span> <span class="applicant">申报人</span>
					</div>
				</div>

				<div class="main_right">
					<ul class="nav nav-pills">
						<li><a href="personpage.do">我的项目</a></li>
						<li><a href="information.do">信息管理</a></li>
						<li><a href="qualification.do">资质认证</a></li>
						<li class="active"><a href="password.do">修改密码</a></li>
						<li><a href="project_book.do">项目管理</a></li>
					</ul>

					<div class="details">

						<!-- 修改密码 -->
						<div class="changeBox" style="display: block;">
							<div class="change">
								<form action="" class="form-horizontal" role="form" name="form1">
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">旧密码</label>
										<div class="col-sm-10">
											<input type="password" class="form-control" id="old_password"
												placeholder="请输入旧密码">
											<span class="change_hint" id="old_password_hint"></span>
										</div>
									</div>
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">新密码</label>
										<div class="col-sm-10">
											<input type="password" class="form-control" id="new_password"
												placeholder="请输入新密码" name="pwd1">
												 <span class="change_hint" id="new_password_hint"></span>
										</div>
									</div>
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">再次确认</label>
										<div class="col-sm-10">
											<input type="password" class="form-control" id="confirm_password"
												placeholder="请再次输入新密码" name="pwd2" >
											<span class="confirm_hint" id="confirm_password_hint"></span>
										</div>
									</div>

									<button type="button" class="btn btn-primary" onclick="changePassword()">保存</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<style>
	.msg-error{
		background:#f00;
		color:#fff;
		font-size: 10px;
	}
	.msg-correct{
		background:#0f0;
		color:#fff;
		font-size: 10px;
	}
</style>
<script type="text/javascript">
// =====修改密码相关验证=====
// 规则1：密码至少6位
// 规则2：两次输入的密码必须一致

// 事件1：适用于三个密码输入框，丢失焦点时验证 规则1
// 事件2：适用于两个新密码输入框，丢失焦点时验证 规则2

function checkPasswordLength(pwd){
	return pwd.length>=6;
}

function checkPasswordEquals(){
	var pwd1=$("#new_password").val();
	var pwd2=$("#confirm_password").val();
	$("#confirm_password_hint").show();
	if(pwd1==pwd2){
		$("#confirm_password_hint").html("密码一致");
		$("#confirm_password_hint").attr("class","msg-correct");
		return true;
	}else{
		$("#confirm_password_hint").html("两次输入密码不一致");
		$("#confirm_password_hint").attr("class","msg-error");
		return false;
	}
}


//原密码丢失焦点
$("#old_password").blur(function(){
	//获取原密码
	var pwd=$("#old_password").val();
	$("#old_password_hint").show();
	//判断长度
	if(checkPasswordLength(pwd)){
		$("#old_password_hint").html("密码格式正确");
		$("#old_password_hint").attr("class","msg-correct");
	}else{
		$("#old_password_hint").html("密码必须6位以上");
		$("#old_password_hint").attr("class","msg-error");
	}
});

//新密码丢失焦点
$("#new_password").blur(function(){
	//获取新密码
	var pwd=$("#new_password").val();
	$("#new_password_hint").show();
	//判断长度
	if(checkPasswordLength(pwd)){
		$("#new_password_hint").html("密码格式正确");
		$("#new_password_hint").attr("class","msg-correct");
		checkPasswordEquals();
		return true;
	}else{
		$("#new_password_hint").html("密码必须6位以上");
		$("#new_password_hint").attr("class","msg-error");
		return false;
	}
	
});

//"确认"密码丢失焦点
$("#confirm_password").blur(function(){
	//获取新密码
	var pwd=$("#confirm_password").val();
	$("#confirm_password_hint").show();
	//判断长度
	if(checkPasswordLength(pwd)){
		$("#confirm_password_hint").html("密码格式正确");
		$("#confirm_password_hint").attr("class","msg-correct");
		checkPasswordEquals();
		return true;
	}else{
		$("#confirm_password_hint").html("密码必须6位以上");
		$("#confirm_password_hint").attr("class","msg-error");
		return false;
	}
});

function changePassword(){
	var pwd1=$("#old_password").val();
	var pwd2=$("#new_password").val();
	var pwd3=$("#confirm_password").val();
	//基本判断
	if(checkPasswordLength(pwd1)
		&&checkPasswordLength(pwd2)
		&&checkPasswordLength(pwd3)
		&&checkPasswordEquals()){
		//同时满足两个规则
		$.ajax({
			"url":"handle_change_password.do",
			"data":"old_password="+pwd1+"&new_password="+pwd2,
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				alert(obj.message);
				$("#old_password").val("");
				$("#new_password").val("");
				$("#confirm_password").val("");
				$("#old_password_hint").hide();
				$("#new_password_hint").hide();
				$("#confirm_password_hint").hide();
			},
			"error":function(){
				location.href="../company/password.do";
			}
		});
	}else{
		alert("请检查错误,修改后再提交");
	}
}


</script>

</html>
