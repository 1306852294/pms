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
						<li class="active"><a href="information.do">信息管理</a></li>
						<li><a href="qualification.do">资质认证</a></li>
						<li><a href="password.do">修改密码</a></li>
						<li><a href="project_book.do">项目管理</a></li>
					</ul>

					<div class="details">

						<!-- 信息管理 -->
						<div class="infoManage" style="display: block;">
							<div class="my-form">
								<div class="title">
									<h3 class="Chinese-title">
										基本信息 <em class="English-title">Essential information</em>
									</h3>
								</div>
								<table class="table table-striped table-up">
									<tr>
										<td class="table-otd">姓名：</td>
										<td class="table-ttd">${company.cnameManager }</td>
										<td class="table-otd">性别：</td>
										<td class="table-ttd">${company.csex }</td>
									</tr>
									<tr>
										<td class="table-otd">身份证号码：</td>
										<td class="table-ttd">${company.ccard}</td>
										<td class="table-otd">注册号：</td>
										<td class="table-ttd">${company.registernum }</td>
									</tr>
								</table>

								<div class="title">
									<h3 class="Chinese-title">
										详细信息 <em class="English-title">Detailed information</em>
									</h3>
								</div>
								<table class="table table-striped table-down" id="table1">
									<tr>
										<td class="table-otd">企业名称：</td>
										<td class="table-ttd" id="form-cpname-front">${company.cname }</td>
										<td class="table-otd">联系方式：</td>
										<td class="table-ttd" id="form-phone-front">${company.cphone }</td>
									</tr>
									<tr>
										<td class="table-otd">经营模式：</td>
										<td class="table-ttd" id="form-BusinessModel-front">${company.model }</td>
										<td class="table-otd">注册时间：</td>
										<td class="table-time" id="form-time-front">${company.regisTime }</td>
									</tr>
									<tr>
										<td class="table-otd">注册资本：</td>
										<td class="table-ttd" id="form-money-front"></td>
										<td class="table-otd">经营范围：</td>
										<td class="table-ttd" id="form-BusinessAOE-front">${company.prange }</td>
									</tr>
									<tr>
										<td class="table-otd">企业类型：</td>
										<td class="table-ttd" id="form-cptype-front">${company.ctype }</td>

									</tr>
								</table>


								<form id="tableInfo" method="post" action="">
									<table class="table table-striped table-down form-table2"
										id="table2">
										<tr>
											<td class="table-otd">企业名称：</td>
											<td class="table-ttd"><input type="text"
												class="form-text" id="form-cpname-behind"  name="cname"/></td>
											<td class="table-otd">联系方式：</td>
											<td class="table-ttd"><input type="text"
												class="form-text" id="form-phone-behind"  name="cphone"/></td>
										</tr>
										<tr>
											<td class="table-otd">经营模式：</td>
											<td class="table-ttd"><input type="text"
												class="form-text" id="form-BusinessModel-behind"  name="model"/></td>
											<td class="table-otd">注册时间：</td>
											<td class="table-time"><select id="form-time-behind" name="regisTime">
											</select> <label for="planyear">年</label></td>
										</tr>
										<tr>
											<td class="table-otd">注册资本：</td>
											<td class="table-ttd"><input type="text"
												class="form-text" id="form-money-behind" /></td>
											<td class="table-otd">经营范围：</td>
											<td class="table-ttd"><input type="text"
												class="form-text" id="form-BusinessAOE-behind"  name="prange"/></td>
										</tr>
										<tr>
											<td class="table-otd">企业类型：</td>
											<td class="table-ttd">
												<select name="ctype">
													<option>有限责任公司</option>
													<option>合伙企业</option>
													<option>集体合伙企业</option>
													<option>个人独资企业</option>
													<option>全民所有制企业</option>
													<option>集体合伙企业</option>
													<option>农民专用合作社</option>
												</select>
											</td>
											
										</tr>
									</table>
								</form>


								<div class="personal-button">
									<button class="personal-button-left">编辑</button>
									<button class="personal-button-right" id="save" onclick="save()">保存</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function save(){
		$.ajax({
			"url":"change_information.do",
			"data":$("#tableInfo").serialize(),
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				location.href="information.do";
			}
		});
	}

</script>











