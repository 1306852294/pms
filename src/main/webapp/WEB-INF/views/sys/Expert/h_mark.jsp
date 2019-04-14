<%--
  Created by IntelliJ IDEA.
  User: Xzh
  Date: 2019/1/20
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/expert_css/reset.css">
    <link rel="stylesheet" href="../static/expert_css/judge_project.css">
    <script src="../static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="../static/script/main.js"></script>
    <title>评审项目</title>
</head>


<script>

    function sum(){
        var text=new Array(12);
        var n=0;
        var sum=0;
        for (var i=0;i<text.length;i++) {
            text[n] = document.getElementById("text" + (n + 1)).value;
            sum+=parseInt(text[n]);
            n++;
        }
        document.getElementById("text13").value=sum;
        <%--$.ajax({--%>
            <%--async:false,--%>
            <%--type:"POST",--%>
            <%--url:"${pageContext.request.contextPath}/sys/proExperCom",--%>
            <%--contentType:"application/x-www-form-urlencoded; charset=utf-8",--%>
            <%--data:$("#mark_form").serialize(),--%>
            <%--dataType:"text",--%>
            <%--success: function(result){--%>
                <%--console.log(result);--%>
            <%--},--%>
            <%--error:function(){--%>

            <%--}--%>
        <%--});--%>
    }


</script>

<body>
<!-- 头部 -->
<div class="header">
    <div class="head_left">

        <img src="../static/images/expert/home.png" alt="">
        <a href="${pageContext.request.contextPath }/index.do">首页</a>
        <img src="../static/images/expert/notice.png" alt="">
        <a href="#">通知</a>
        <img src="../static/images/expert/guide.png" alt="">
        <a href="${pageContext.request.contextPath }/guide.do">业务指南</a>

    </div>

    <div class="head_right">
        <img src="../static/images/expert/user.png" alt="">
        <ul id="userName">${currentExpert.ename}
            <span class="caret"></span>
            <li style="display: none;">
                <a href="${pageContext.request.contextPath }/logoff.do">注销</a>
            </li>
        </ul>
        <img src="../static/images/expert/info.png" alt="">
        <a href="#">消息</a>
    </div>

</div>

<!-- 导航部 -->
<div class="navBar">
    <ul class="list">
        <li >
            <a href="${pageContext.request.contextPath}/sys/select.do"><span class="glyphicon glyphicon-star"></span> 评审项目</a>
        </li>
        <li class="active">
            <a href="${pageContext.request.contextPath}/sys/personage.do" methods="POST"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
        </li>
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
                            <span class="glyphicon glyphicon-chevron-right"></span>${project.pname}</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span></div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span></div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                    </div>

                    <!-- 开始打分 -->
                    <div class="marks container-right" style="display: block;">
                        <form action="${pageContext.request.contextPath}/sys/mark.do" method="POST">
                            <input type="hidden" name="pid" value="${project.pid}">
                            <input type="hidden" name="cid" value="${company.cid}">
                            <input type="hidden" name="eid" value="${eid}">
                        <div class="rightcon">
                            <div class="rightcon-header">
                                <div class="titleb">
                                    <div class="iconb"></div>
                                    <div class="title-textb">系统给出的参考分数是：**</div>
                                </div>
                                <a href="${pageContext.request.contextPath}/sys/rule.do">查看评审规则</a>
                            </div>
                            <div class="rightcon-con">
                                <div class="text">评审意见</div>
                                <div class="opinion">
                                    <textarea name="suggestion" id="opi" cols="30" rows="10" placeholder="请输入评审意见······"></textarea>
                                </div>
                            </div>
                            <div class="rightcon-btn">
                                <span class="label label-info">其他专家意见</span>
                            </div>
                            <div class="other">
                                <textarea name="opinion" id="otherop" cols="100" rows="10" readonly>
                                   <c:forEach items="${views}" var="view">
                                       专家号：${view.eid}
                                       专家意见:${view.suggestion}
                                   </c:forEach>
                                </textarea>
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
                                        <td><input type="text" id="text1"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text2"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text3"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text4"></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="4">2</td>
                                        <td rowspan="4">^^^^</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text5"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text6"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text7"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text8"></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="4">3</td>
                                        <td rowspan="4">^^^^</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text9"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text10"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text11"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="text" id="text12"></td>
                                    </tr>


                                    <tr>
                                        <td colspan="3">合计</td>
                                        <td></td>
                                        <td><input type="text" id="text13" name="score" readonly="readonly"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="container-right-footer">
                            <input type="submit" class="btn btn-primary" value="确定" onclick="sum()">
                        </div>
                        </form>
                    </div>
                </div>
            </div>
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
