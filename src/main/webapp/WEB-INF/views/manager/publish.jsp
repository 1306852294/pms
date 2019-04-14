<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/3/4
  Time: 下午 7:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="/WEB-INF/views/include/headManager.jsp" %>

    <title>发布管理</title>
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
    <ul class="list">
        <li class="active" >
            <a href="topublish.do"  class="glyphicon glyphicon-open">发布管理</a> </li>
        <li >
            <a href="tojudge.do"  class="glyphicon glyphicon-bullhorn">评审管理</a> </li>
        <li>
            <a href="#" class="glyphicon glyphicon-stats" >中后期管理</a> </li>
        <li>
            <a href="toinformaction.do" class="glyphicon glyphicon-user">个人中心</a> </li>
    </ul>
</div>


<!-- 主体部 -->
<div class="main">
    <div class="main_info">
        <!-- 发布管理 -->
        <div id="newProject" class="submitManage">
            <div class="title">
                <div class="icon"></div>
                <div class="title-text">发布管理</div>
                <div class="title-text">&gt;发布新项目</div>
            </div>
            <div class="containe">
                <div class="container-left">
                    <a href="topublish.do">发布新项目</a>
                    <a href="topublish_wait.do">待审核的项目</a>
                    <a href="topublish_saw.do">已审核的项目</a>
                </div>
                <div class="container-right">
                    <div class="submit">

                            <div class="form-group">
                                <label for="name">标题</label>
                                <input id="pname" type="text" class="form-control" placeholder="请输入项目标题">
                            </div>


                            <div class="form-group">
                                <label for="name">项目内容</label>
                                <textarea id="content" class="form-control" rows="15"></textarea>
                            </div>

                        <div class="container-right-center-one">
                            <div class="container-right-left-upload">
                                <div class="container-right-left-upload-img" id="container-right-left-upload-img">

                                </div>
                                <div class="container-right-left-upload-div">
                                    <div class="fileinput-button">
                                        <div class="fileinput-button-text">点击上传文件</div>

                                        <input id="upfiles"  type="file" multiple="multiple" >

                                    </div>

                                </div>
                            </div>
                            <div class="container-right-right" id="container-right-right">
                                已上传文件
                            </div>
                        </div>

                        <div class="submitBot">
                            <button type="button" class="btn btn-primary" id="JQupload">提交</button>
                        </div>
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
        var parm="pname="+$("#pname").val()+"&content="+$("#content").val();

        var files=$("#upfiles")[0].files;
        //创建FormData对象
        var frm=new FormData();
        //将文件添加到FormData中
        for(var i=0;i<files.length;i++){
            frm.append("files",files[i]);
        }
        //利用jq的AJAX方法发送FormData对象
        $.ajax({
            url:"addproject.do?"+parm,
            type:"POST",
            dataType:"json",
            data: frm,//ajax发送FormData对象
            processData:false,//jq不要处理数据
            contentType:false,
            success:function(obj){
                alert(obj.message);
                if(obj.state==1){
                    location.href="topublish.do";
                }
            }


        });
    });





</script>
</body>

</html>