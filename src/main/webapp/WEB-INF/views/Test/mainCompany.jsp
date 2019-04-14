<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Company</title>
	<%@include file="/WEB-INF/views/include/headCompany.jsp" %>
	<script type="text/javascript">
	    function update(){
	     $.ajax({
	      async:false,
	      type:"POST",
	      url:"${pageContext.request.contextPath }/sys/updateCompany",
	      contentType : "application/x-www-form-urlencoded; charset=utf-8",
	      data:$("#update_form").serialize(),
	      dataType:"text",
	      success: function(result){
	    	console.log(result);
	      },
	     error:function(){
	    	
	      }
	     });
	    }
   </script>
</head>
<body>
<!-- 头部 -->
    <div class="header">
        <div class="head_left">
            <img src="../static/images/home.png" alt="">
            <a href="1.html">首页</a>
            <img src="../static/images/notice.png" alt="">
            <a href="../skip_page/WEB-INF/more.html">通知</a>
            <img src="../static/images/guide.png" alt="">
            <a href="../skip_page/WEB-INF/guide.html">业务指南</a>
        </div>

        <div class="head_right">
            <img src="../static/images/user.png" alt="">
            <ul id="userName">${currentUser.name} <span class="caret"></span>
                <li style="display: none;">
                    <a href="${pageContext.request.contextPath }/">注销</a>
                </li>
            </ul>
            <img src="../static/images/info.png" alt="">
            <a href="#">消息</a>
        </div>

    </div>

    <!-- 导航部 -->
    <div class="navBar">
        <ul class="list">
            <li class="active">
                <span class="glyphicon glyphicon-th-list"></span> 全部项目</li>
            <li>
                <span class="glyphicon glyphicon-user"></span> 个人中心</li>
        </ul>
    </div>


    <!-- 主体部 -->
    <div class="main">
        <div class="main_info">


            <!-- 全部项目 -->
            <div id="protype">
                <div class="containe">
                    <div class="container-left">
                        <div class="title">
                            <div class="icon"></div>
                            <div class="title-text">项目分类</div>
                        </div>
                        <div class="active type" id="">
                            <span class="glyphicon glyphicon-chevron-right"></span> 分类1</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> 分类2</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> 分类3</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> 分类4</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> 分类5</div>
                    </div>
                    <div class="container-right">
                        <div class="container-right-header">
                            <div class="icons">
                                <div class="activee item">全部</div>
                                <div class="item">已立项</div>
                                <div class="item">进行中</div>
                                <div class="item">已结项</div>
                            </div>
                            <form style="flex: 1;" action="${pageContext.request.contextPath}/sys/search" method="POST">
                                <div class="search">
                                    <input type="text" name="pro_Name" placeholder="请输入查询项目名称关键字">
                                    <button type="submit">
                                        <span class="glyphicon glyphicon-search"></span>搜索</button>
                                </div>
                            </form>

                        </div>
                        <div class="">
                            <div class="container-right-center" id="">
                            <table>
                               <c:forEach items="${page.rows}" var="page">
                                <tr>
                                    <th rowspan="2"><span class="glyphicon glyphicon-file"></span>项目进度</th>
                                    <td>${page.proName}</td>
                                </tr>
                                <tr>
                                    <td class="blue">${page.proMaker} ${page.status}</td>
                                </tr>
                                </c:forEach>
                            </table>
                            </div>
                            <!-- <div class="container-right-center" id="">
                            <table>
                                <tr>
                                    <th rowspan="2"><span class="glyphicon glyphicon-file"></span>项目进度</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="blue"></td>
                                </tr>
                            </table>
                            </div>
                           <div class="container-right-center" id="">
                            <table>
                                <tr>
                                    <th rowspan="2"><span class="glyphicon glyphicon-file"></span>项目进度</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="blue"></td>
                                </tr>
                            </table>
                            </div>
                            <div class="container-right-center" id="">
                            <table>
                                <tr>
                                    <th rowspan="2"><span class="glyphicon glyphicon-file"></span>项目进度</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="blue"></td>
                                </tr>
                            </table>
                            </div>
                            <div class="container-right-center" id="">
                            <table>
                                <tr>
                                    <th rowspan="2"><span class="glyphicon glyphicon-file"></span>项目进度</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="blue"></td>
                                </tr>
                            </table>
                            </div> -->
                        </div>



                        <div class="container-right-footer">
                            <itcast:page url="${pageContext.request.contextPath }/sys/search" />
                        </div>

                    </div>
                </div>
            </div>



            <div id="all" class="allProject" style="display: none">
                <div class="title">
                    <div class="icon"></div>
                    <span class="title-text">项目申请流程 | 填写申报书</span>
                </div>
                <div class="content">
                    <div class="contentin">
                        <div class="paper"></div>
                        <div class="btnn">
                            <input type="button" class="btn btn-primary" value="申报">
                            <input type="button" class="btn btn-primary" value="跨级申报">
                            <input type="button" class="btn btn-primary" value="保存">
                            <input type="button" class="btn btn-primary" value="退出">
                        </div>
                    </div>
                </div>
            </div>




            <!-- 个人中心 -->
            <div id="user" class="userCenter" style="display: none;">
                <div class="main_left">
                    <img src="./../static/images/photo.png" alt="用户照片" width="185px;">
                    <div>
                        <span class="name">${currentUser.name}</span>
                        <span class="applicant">申报人</span>
                    </div>
                </div>

                <div class="main_right">
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#">我的项目</a>
                        </li>
                        <li>
                            <a href="#">信息管理</a>
                        </li>
                        <li>
                            <a href="#">资质认证</a>
                        </li>
                        <li>
                            <a href="#">修改密码</a>
                        </li>
                        <li>
                            <a href="#">项目管理</a>
                        </li>
                    </ul>

                    <div class="details">


                        <!-- 我的项目 -->
                        <div class="myProject" style="display: block;">
                            <div class="myProject_top">
                                <img src="../static/images/project.png" alt="">
                                <span class="light">项目名称：</span>
                                <p>项目编号：</p>
                                <span class="cor_leader">负责人：</span>
                                <span class="cor_name">单位名称：华东交通大学</span>
                            </div>

                            <div class="operate_btn">
                                <button type="button" class="btn btn-primary manage">后期管理</button>
                                <button type="button" class="btn btn-primary delete">删除</button>
                            </div>

                            <div class="myProject_bot">
                                <div class="myProject-word-lixiang">
                                    <p class="word-title">立项号:</p>
                                    <p></p>
                                </div>
                                <div class="myProject-word-leixing">
                                    <p class="word-title">申报类型:</p>
                                    <p></p>
                                </div>
                                <div class="myProject-word-jibie">
                                    <p class="word-title">申报级别:</p>
                                    <p></p>
                                </div>
                                <div class="myProject-word-zhuangtai">
                                    <p class="word-title">当前级别/状态:</p>
                                    <p></p>
                                </div>
                            </div>
                            <div class="myProject-btn">
                                <button class="btn-previous">&lt;</button>
                                <button class="btn-page">1</button>
                                <button class="btn-next">&gt;</button>
                            </div>
                        </div>

                        <!-- 信息管理 -->
                        <div class="infoManage" style="display: none;">
                            <div class="my-form">
                                <div class="title">
                                    <h3 class="Chinese-title">基本信息
                                        <em class="English-title">Essential information</em>
                                    </h3>
                                </div>
                                <table class="table table-striped table-up">
                                    <tr>
                                        <td class="table-otd">姓名：</td>
                                        <td class="table-ttd">${currentUser.name}</td>
                                        <td class="table-otd">性别：</td>
                                        <td class="table-ttd">${currentUser.gender}</td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">身份证号码：</td>
                                        <td class="table-ttd">${currentUser.idCard }</td>
                                        <td class="table-otd">注册号：</td>
                                        <td class="table-ttd">${currentCompany.registerNum}</td>
                                    </tr>
                                </table>

                                <div class="title">
                                    <h3 class="Chinese-title">详细信息
                                        <em class="English-title">Detailed information</em>
                                    </h3>
                                </div>
                                <table class="table table-striped table-down" id="table1">
                                    <tr>
                                        <td class="table-otd">企业名称：</td>
                                        <td class="table-ttd" id="form-cpname-front">
                                            ${currentCompany.companyName}
                                        </td>
                                        <td class="table-otd">联系方式：</td>
                                        <td class="table-ttd" id="form-phone-front">
											${currentCompany.contact }
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">经营模式：</td>
                                        <td class="table-ttd" id="form-BusinessModel-front">
                                           ${currentCompany.companyType }
                                        </td>
                                        <td class="table-otd">注册时间：</td>
                                        <td class="table-time" id="form-time-front">
                                             
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">注册资本：</td>
                                        <td class="table-ttd" id="form-money-front">
                                          ${currentCompany.registerCapital}
                                        </td>
                                        <td class="table-otd">经营范围：</td>
                                        <td class="table-ttd" id="form-BusinessAOE-front">
                                          ${currentCompany.busiScop}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">企业类型：</td>
                                        <td class="table-ttd" colspan="3" id="form-cptype-front">

                                        </td>

                                    </tr>
                                </table>
                        <form id="update_form" action="">
                        	    <input type="hidden" name="id" value="${currentUser.id}" />
                                <table class="table table-striped table-down form-table2" id="table2">
                                    <tr>
                                        <td class="table-otd">企业名称：</td>
                                        <td class="table-ttd">
                                            <input type="text" class="form-text" id="form-cpname-behind" value="${currentCompany.companyName}" name="companyName">
                                        </td>
                                        <td class="table-otd">联系方式：</td>
                                        <td class="table-ttd">
                                            <input type="text" class="form-text" id="form-phone-behind" value="${currentCompany.contact}" name="contact">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">经营模式：</td>
                                        <td class="table-ttd">
                                            <input type="text" class="form-text" id="form-BusinessModel-behind" value="${currentCompany.companyType}" name="companyType">
                                        </td>
                                        <td class="table-otd">注册时间：</td>
                                        <td class="table-time">
                                            <select id="form-time-behind">

                                            </select>
                                            <label for="planyear">年</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">注册资本：</td>
                                        <td class="table-ttd">
                                            <input type="text" class="form-text" id="form-money-behind" value="${currentCompany.registerCapital}" name="registerCapital">
                                        </td>
                                        <td class="table-otd">经营范围：</td>
                                        <td class="table-ttd">
                                            <input type="text" class="form-text" id="form-BusinessAOE-behind" value="${currentCompany.busiScop}" name="busiScop">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table-otd">企业类型：</td>
                                        <td class="table-ttd" colspan="3">
                                            <label class="cpclass" for="cpname1">
                                                <input type="checkbox" name="cpname" id="cpname1" value="&nbsp&nbsp&nbsp有限责任公司">有限责任公司</label>
                                            <label class="cpclass" for="cpname2">
                                                <input type="checkbox" name="cpname" id="cpname2" value="&nbsp&nbsp&nbsp合伙企业">合伙企业</label>
                                            <label class="cpclass" for="cpname3">
                                                <input type="checkbox" name="cpname" id="cpname3" value="&nbsp&nbsp&nbsp集体合伙企业">集体合伙企业</label>
                                            <label class="cpclass" for="cpname4">
                                                <input type="checkbox" name="cpname" id="cpname4" value="&nbsp&nbsp&nbsp个人独资企业">个人独资企业</label>
                                            <label class="cpclass" for="cpname5">
                                                <input type="checkbox" name="cpname" id="cpname5" value="&nbsp&nbsp&nbsp全民所有制企业">全民所有制企业</label>
                                            <label class="cpclass" for="cpname6">
                                                <input type="checkbox" name="cpname" id="cpname6" value="&nbsp&nbsp&nbsp农民专用合作社">农民专用合作社</label>
                                        </td>

                                    </tr>
                                </table>
                                <div class="personal-button">
                                    <button class="personal-button-left" type="button">编辑</button>
                                    <button class="personal-button-right" type="button" onclick="update()">保存</button>
                                </div>
                                </form>
                            </div>
                        </div>



                        <!-- 资质认证 -->
                        <div class="identify" style="display: none;">
                            <p class="explain">（请在信息完善后进行资质认证）</p>
                            <div class="outcome_1" style="display: block">
                                <img src="../static/images/cursor.png" alt="">
                                <p>请上传工商认证材料，营业执照及其他资质证明材料</p>
                                <form action="uploaddata" method="post">
                                <div class="out_btn">
                                    <input id="" name="" type="file" class="btn btn-primary"/>
                                    <button type="button" class="btn btn-primary">提交</button>
                                </div>
                                </form>
                            </div>

                            <div class="outcome_2" style="display: none">
                                <button type="button" class="close" aria-hidden="true">&times;</button>
                                <p>您已提交成功！</p>
                                <p>之后请等待认证结果</p>
                            </div>

                            <div class="outcome_3" style="display: none;">
                                <p>认证结果还未公布</p>
                                <p>请继续等待</p>
                            </div>

                            <div class="outcome_4" style="display: none;">
                                <img src="../static/images/gou.png" alt="">
                                <p>认证成功！</p>
                                <p>您现在可以开始申报</p>
                            </div>
                        </div>

                        <!-- 修改密码 -->
                        <div class="changeBox" style="display: none;">
                            <div class="change">
                                <form action="" class="form-horizontal" role="form" name="form1">
                                    <div class="form-group">
                                        <label for="firstname" class="col-sm-2 control-label">旧密码</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" id="firstname" placeholder="请输入旧密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="firstname" class="col-sm-2 control-label">新密码</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" id="firstname" placeholder="请输入新密码" name="pwd1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="firstname" class="col-sm-2 control-label">再次确认</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" id="firstname" placeholder="请再次输入新密码" name="pwd2" onchange="checkpwd()">
                                            <div id="warning" style="color: red;"></div>
                                        </div>
                                    </div>

                                    <button type="button" class="btn btn-primary">保存</button>
                                </form>
                            </div>
                        </div>

                        <!-- 项目管理 -->
                        <div class="projectManage" style="display: none;">
                            <ul class="nav nav-pills">
                                <li class="active">
                                    <a href="#">填写项目书</a>
                                </li>
                                <li>
                                    <a href="#">进度报告</a>
                                </li>
                            </ul>

                            <!-- 项目书列表，内容不止一个 -->

                            <div class="pjFill" style="display: block;">
                                <ul id="projectList">
                                    <li>
                                        <a class="projectName" href="#">发来的项目书</a>
                                        <span class="download glyphicon glyphicon-download-alt"></span>
                                    </li>

                                </ul>


                                <form class="uploadArea" action="" name="upload">
                                    <div class="areaLeft">
                                        <span class="folder glyphicon glyphicon-folder-open"></span>
                                        <a class="submit" href="">
                                            点击提交文件
                                            <input id="inputfile" type="file" multiple="multiple">
                                        </a>
                                    </div>


                                    <div class="areaRight">
                                        <span class="tip">已上传的文件</span>
                                    </div>


                                    <button type="button" class="btn btn-primary">提交</button>
                                </form>
                            </div>


                            <div class="pjProgress" style="display: none;">
                                <div class="firstCheck">
                                    <span>中期检查</span>
                                    <ul class="former">
                                        <li>
                                            <a href="#">中期上传的材料</a>
                                        </li>
                                    </ul>
                                </div>


                                <div class="middleCheck">
                                    <span>初步验收</span>
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <td class="txt">企业的说明...</td>
                                            </tr>
                                            <tr>
                                                <td>上传附件</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#">XXX附件1.DOC</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#">XXX附件1.DOC</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                            <!-- 进度报告 -->

                            <div class="pjReport" style="display: none;">
                                <div class="circle">
                                    <span>已提交</span>
                                </div>
                                <div class="line">

                                </div>
                                <div class="circle">
                                    <span>等待审核</span>
                                </div>
                                <div class="line">

                                </div>
                                <div class="circle">
                                    <span>正在审核</span>
                                </div>
                                <div class="line">

                                </div>
                                <div class="circle">
                                    <span>公布结果</span>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <div style="clear: both;"></div>
            </div>


        </div>
    </div>


    <!-- 底部 -->
    <div class="footer">
        <div class="copyRight">
            <p>Copy-right 2010 - 2016 JXCIIT GOV.All Rights Reserved</p>
            <p>主办单位：江西省工业和信息化委员会 地址：南昌市红谷滩新区卧龙路999号西三栋 邮编：330036 联系电邮：jxgxwbgs@jxciit.gov.cn</p>
            <p>赣ICP备10005259号　　　政府网站标识码：3600000013</p>
        </div>
    </div>



</body>
</html>