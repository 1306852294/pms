<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en1">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="/WEB-INF/views/include/headManager.jsp" %>
    <title>评审管理</title>
    <style>
        .filesname{
            width: 70%;
            margin-left: 5%;
            height: 30px;
            line-height: 30px;
            overflow: hidden;
            font-size: 14px;
            color: black;
            font-style: normal;

        }
        .container-right-left-upload-img{
            height: 210px;
            margin: 0;
            line-height: 14px;
            padding: 0;

        }
        .container-right-left-upload{
            position: relative;
        }
        .fileinput-button-text{
            padding: 0;
            height: 30px;
            width: 100%;
            font-style: normal;
            line-height: 30px;
            text-align: center;
            margin: 0;

        }
        .fileinput-button{
            height: 30px;
            width: 60%;
            font-family: "微软雅黑";
            border-radius: 5px;
            margin-left: 40px;
            margin-right: 5%;
        }
        .fileinput-button input{
            font-size: 20px;
            width: 100%;
        }
        #add{
            position: absolute;
            right: 0;
            width: 30%;
            height: 30px;
            border-radius: 5px;
            background-color: #3399ea;
            opacity: 1;
            color: black;
            z-index: 155;

        }
        .container-right-right{
            line-height: 30px;
        }
    </style>
</head>

<body>
<!-- 头部 -->
<div class="header">
    <c:import url="head.jsp"></c:import>
</div>
<!-- 导航部 -->
<div class="navBar">
    <c:import url="nav.jsp"></c:import>
</div>


<!-- 主体部 -->
<div class="main">

    <div class="main_info">

        <!-- 评审项目 -->
        <div id="evalution" style="display: block;">
            <div class="title">
                <div class="icon"></div>
                <div class="title-text">评审管理>评审规则</div>
            </div>

            <div id="protype">
                <div class="containe">
                    <div class="container-left">

                        <div>
                            <div>进行项目管理：</div>
                        </div>
                        <%--<div class="active type">--%>
                            <%--<span class="glyphicon glyphicon-chevron-right"></span> ***</div>--%>
                        <!--
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
                        <div class="type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ***</div>
-->
                        <c:import url="judge_project.jsp"></c:import>

                    </div>

                    <!-- 评审管理~~~专家小组 -->

                    <div id="evaManage" class="container-right" style="display: block;">
                        <div class="cr-nav">
                            <div class="cr-nav-icon active"> <a href="tojudge_rule.do">评审规则</a> </div>
                            <div class="cr-nav-icon "> <a href="toexperGroup.do">专家小组</a></div>
                            <div class="cr-nav-icon"> <a href="tojudge_mode.do">评审方式</a> </div>
                            <div class="cr-nav-icon"> <a href="toresult.do">评审结果</a> </div>
                        </div>
                        <!-- 评审管理~~~评审结果 -->
                        <!-- 评审规则第一个 -->
                        <div class="show-hide" id="ps-1" style="display: block">
                            <div class="container-right-center-one">
                                <div class="container-right-left-upload">
                                    <div class="container-right-left-upload-img" id="container-right-left-upload-img">

                                    </div>
                                    <div class="container-right-left-upload-div">
                                        <div class="fileinput-button">
                                            <div class="fileinput-button-text">点击上传文件</div>
                                            <input type="file" multiple="multiple" id="upfiles">

                                        </div>

                                    </div>
                                </div>
                                <div class="container-right-right" id="container-right-right">
                                    已上传文件
                                </div>
                            </div>
                            <div class="submit-audit-div">
                                <input type="button" class="submit-audit" id="JQupload" value="提交审核">
                            </div>
                            <div class="submit-audit-result">

                            </div>
                        </div>
                    </div>

                </div>


                <!-- 中后期管理 -->
                <!-- 个人中心 -->

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
    var Func = document.getElementById('upfiles');
    Func.onchange=add;
    function add() {
        var fileSize = 0;
        var F = document.getElementById('upfiles').files;
        var str = new Array(100);

        for (j = 0; j < F.length; j++) {

            var strFileName = F[j].name.replace(/^.+?\\([^\\]+?)(\.[^\.\\]*?)?$/gi, "$1");
            var strFileName2 = F[j].name.replace(/.+\./, "");
            console.log(strFileName);
            var Fname = (strFileName);

            if (Fname == "") {
                console.log("dasd");
                alert("文件不能为空");
            } else {
                var write = document.getElementById("container-right-right");
                let content = "<p class='filesname'>" + Fname + "</p>";
                // str[i]= Fname;

                write.innerHTML += content;


            }

        }

        var file = document.getElementById('upfiles').files;
        if (file.length != 0) {

            fileSize = file[0].size;
        }
        if (fileSize > 1048576) {
            alert("文件不能大于 1M ");
            return false;
        }



    }

    $("#JQupload").click(function(){
        //找到所有文件,(这里[0]表示转换为了js对象)

        var files=$("#upfiles")[0].files;
        //创建FormData对象
        var frm=new FormData();
        //将文件添加到FormData中
        for(var i=0;i<files.length;i++){
            frm.append("files",files[i]);
        }
        //利用jq的AJAX方法发送FormData对象
        $.ajax({
            url:"addrule.do",
            type:"POST",
            dataType:"json",
            data: frm,//ajax发送FormData对象
            processData:false,//jq不要处理数据
            contentType:false,
            success:function(obj){
                alert(obj.message);
                if(obj.state==1){
                    location.href="toexperGroup.do";
                }
            }


        });
    });



</script>

</html>