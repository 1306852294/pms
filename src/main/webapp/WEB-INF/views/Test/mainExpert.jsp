<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Expert</title>
    <%@include file="/WEB-INF/views/include/headExpert.jsp"%>
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
                <span class="glyphicon glyphicon-star"></span> 评审项目</li>
            <li>
                <span class="glyphicon glyphicon-user"></span> 个人中心</li>
        </ul>
    </div>


    <!-- 主体部 -->
    <div class="main">



        <div class="main_info">
            <!-- 评审项目 -->          
            <div id="evalution" style="display: block;">
                    <div class="title">
                            <div class="icon"></div>
                            <div class="title-text">评审项目>开始打分</div>
                        </div>
            
                        <div id="protype" >
                                <div class="containe">
                                    <div class="container-left">
                                        <div>
                                            <div>您需要评审的项目：</div>
                                        </div>
                                        <div class="active type">
                                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                                        <div class="type">
                                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                                        <div class="type">
                                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                                        <div class="type">
                                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                                        <div class="type">
                                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                                    </div>
                
                                    <!-- 评审项目 -->
                                    <div class="eva container-right" style="display: block;">
                                            <div class="rightcon">
                                                <div class="rightcon-header">
                                                    <div class="titleb">
                                                        <div class="iconb"></div>
                                                        <div class="title-textb">系统给出的参考分数是：**</div>
                                                    </div>
                                                    <input type="button" class="btn btn-primary" value="查看评审规则">
                                                </div>
                                                <div class="rightcon-con"></div>
                                            </div>
                                            <div class="container-right-footer">
                                                    <input type="button" class="btn btn-primary" value="开始打分">
                                            </div>
                                    </div>
                
                                    <!-- 评审规则 -->
                                    <div class="rules container-right" style="display: none;">
                                            <div class="rightcon">
                                                <div class="rightcon-header">
                                                    <div class="glyphicon glyphicon-remove"></div>
                                                </div>
                                                <div class="rightcon-con"></div>
                                            </div>
                                            
                                    </div>
                
                
                
                
                
                                    <!-- 开始打分 -->
                                    <div class="marks container-right" style="display: none;">
                                            <div class="rightcon">
                                                <div class="rightcon-header">
                                                    <div class="titleb">
                                                        <div class="iconb"></div>
                                                        <div class="title-textb">系统给出的参考分数是：**</div>
                                                    </div>
                                                    <input type="button" class="btn btn-primary" value="查看评审规则">
                                                </div>
                                                <div class="rightcon-con">
                                                    <div class="text">评审意见</div>
                                                    <div class="opinion">
                                                        <textarea name="opinions" id="opi" cols="30" rows="10" placeholder="请输入评审意见······"></textarea>
                                                    </div>
                                                </div>
                                                <div class="rightcon-btn">
                                                    <input type="button" class="btn btn-primary" value="其他专家意见" >
                                                </div>
                                                <div class="other">
                                                    <textarea name="opinion" id="otherop" cols="100" rows="10" readonly></textarea>
                                                </div>
                                                <div class="table">
                                                    <table border="1">
                                                        <tr>
                                                            <td>序号</td>
                                                            <td>指标名称</td>
                                                            <td>指标内涵</td>
                                                            <td>权系数</td>
                                                            <td>得分</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="4">1</td>
                                                            <td rowspan="4">^^^^</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="4">2</td>
                                                            <td rowspan="4">^^^^</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="4">3</td>
                                                            <td rowspan="4">^^^^</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td><input type="text"></td>
                                                        </tr>
                
                                                        
                                                        <tr>
                                                            <td colspan="3">合计</td>
                                                            <td></td>
                                                            <td><input type="text"></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                
                                            </div>
                                            <div class="container-right-footer">
                                                    <input type="button" class="btn btn-primary" value="确定">
                                            </div>
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
                            <span class="applicant">专家</span>
                        </div>
                    </div>
    
                    <div class="main_right">
                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="#">信息管理</a>
                            </li>
                            <li>
                                <a href="#">修改密码</a>
                            </li>
                        </ul>
    
                        <div class="details">  
                            <!-- 信息管理 -->
                            <div id="infoManage" style="display: block;">
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
                                            <td class="table-otd">专家号：</td>
                                            <td class="table-ttd">${currentExpert.expertNum }</td>
                                        </tr>
                                    </table>
    
                                    <div class="title">
                                        <h3 class="Chinese-title">详细信息
                                            <em class="English-title">Detailed information</em>
                                        </h3>
                                    </div>
                                    <table class="table table-striped table-down" id="table1">
                                        <tr>
                                            <td class="table-otd">手机号：</td>
                                            <td class="table-ttd" id="form-cpname-front">
    											 ${currentUser.phone } 
                                            </td>
                                            <td class="table-otd">地区：</td>
                                            <td class="table-ttd" id="form-phone-front">
    
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-otd">学历：</td>
                                            <td class="table-ttd" id="form-BusinessModel-front">
    
                                            </td>
                                            <td class="table-otd">邮箱：</td>
                                            <td class="table-time" id="form-time-front">
    											${currentUser.email }
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-otd">工作单位：</td>
                                            <td class="table-ttd" id="form-money-front">
                                               ${currentExpert.expertUnit }
                                            </td>
                                            <td class="table-otd">研究方向：</td>
                                            <td class="table-ttd" id="form-BusinessAOE-front">
                                               ${currentExpert.title }
                                            </td>
                                        </tr>                                  
                                    </table>
                                    <table class="table table-striped table-down form-table2" id="table2" style="display: none;">
                                        <tr>
                                            <td class="table-otd">手机号：</td>
                                            <td class="table-ttd">
                                                <input type="text" class="form-text" id="form-cpname-behind">
                                            </td>
                                            <td class="table-otd">地区：</td>
                                            <td class="table-ttd">
                                                <input type="text" class="form-text" id="form-phone-behind">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-otd">学历：</td>
                                            <td class="table-ttd">
                                                <input type="text" class="form-text" id="form-BusinessModel-behind">
                                            </td>
                                            <td class="table-otd">邮箱：</td>
                                            <td class="table-ttd">
                                                <input type="text" class="form-text" id="form-BusinessModel-behind">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-otd">工作单位：</td>
                                            <td class="table-ttd">
                                                <input type="text" class="form-text" id="form-money-behind">
                                            </td>
                                            <td class="table-otd">研究方向：</td>
                                            <td class="table-ttd">
                                                <input type="text" class="form-text" id="form-BusinessAOE-behind">
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="personal-button">
                                        <button class="personal-button-left" id="edit">编辑</button>
                                        <button class="personal-button-right" id="save">保存</button>
                                    </div>
                                </div>
                            </div>
    
    
    
                            <!-- 修改密码 -->
                            <div id="changeBox" style="display: none;">
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

<script>
    let oEdit = document.getElementById("edit"),
        oSave = document.getElementById("save"),
        table2 = document.getElementById("table2")


        // oEdit.onclick = function () {
        //     table2.style.display = "block";
        // }
        // oSave.onclick = function () {
        //     table2.style.display = "none";
        // }
</script>

</html>