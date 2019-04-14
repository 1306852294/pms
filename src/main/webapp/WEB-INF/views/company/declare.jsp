<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/declare.css">
    <script src="${pageContext.request.contextPath }/static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/company_script/main.js"></script>
    <title>个人中心</title>
</head>
<style>
	.main .main_info .main_right .projectManage form.uploadArea .areaRight .tip{
		line-height: 30px; 
    font-size: 1.5em;
    color: #666;

	}
</style>
<body>
    

   <!-- 顶部 -->
	<c:import url="header.jsp"></c:import>

    <!-- 导航部 -->
    <div class="navBar">
            <ul class="list">
                <li class="active">
                    <a href="total_project.do"><span class="glyphicon glyphicon-th-list"></span> 全部项目</a>
                </li>
                <li>
                    <a href="personpage.do"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
                </li>
            </ul>
        </div>


    <!-- 主体部 -->
    <div class="main">
        <div class="main_info">


          <!-- 个人中心 -->
            <div id="user" class="userCenter" style="display: block;">
                    <div class="container-left">
                            <div class="title">
                                <div class="icon"></div>
                                <div class="title-text">全部项目</div>
                            </div>
                            <a href="total_project.do"  class="type">
                                <div id="">
                                    <span class="glyphicon glyphicon-chevron-right"></span>选择项目
                                </div>
                            </a>
                            <a href="declare.do" class="active type">
                                <div>
                                    <span class="glyphicon glyphicon-chevron-right"></span>申报项目
                                </div>
                            </a>
                    </div>
    
                    <div class="main_right">
    
                        <div class="details">

                        <!-- 项目管理 -->
                        <div class="projectManage" style="display: block;">
    
                                <!-- 项目书列表，内容不止一个 -->
    
                                <div class="pjFill" style="display: block;">
                                    <ul id="projectList">
                                        <li>
                                            <a class="projectName" href="#" style="float:left">项目发布书</a>
                                            
                                            <form action="download_declare.do" style="float:right">
                                            	<input type="submit" value="下载" style="outline：none;width:60px;height:25px;background:rgb(58,149,245);font-size:10px">
                                            	<span class="download glyphicon glyphicon-download-alt" id="download" style="margin-top:5px "></span>
                                            </form>
                                            
                                        </li>
                                    </ul>
    
    
                                    <form class="uploadArea" action="" name="upload">
                                        <div class="areaLeft">
                                        	<span>项目编号：${pid }</span><br/>
                                        	<span>项目名称：${pname }</span><br/>
                                        	
                                            <span class="folder glyphicon glyphicon-folder-open"></span>
                                            <a class="submit" href="">
                                                点击提交文件
                                                <input id="inputfile" type="file" ><!-- 此处改为了单选,省略了multiple="multiple" -->
                                            </a>
                                        </div>
    
    
                                        <div class="areaRight" id="areaRight">
                                            <span class="tip">要上传的文件</span>
                                        </div>
    
    
                                        <button type="button" class="btn btn-primary" id="JQupload">提交</button>
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

                            </div>
                        </div>
                    </div>
        </div>
        </div>
    </div>
</body>
<script>
	var Fun = document.getElementById('inputfile');
	Fun.onchange = add;
	function add(){
            var fileSize = 0;
            var F = document.getElementById('inputfile').files;
            
            for(j=0;j<F.length;j++){

                var strFileName = F[j].name.replace(/^.+?\\([^\\]+?)(\.[^\.\\]*?)?$/gi,"$1"); 
                var strFileName2 = F[j].name.replace(/.+\./,"");
                console.log(strFileName);
                var Fname = (strFileName);
                
                if(Fname==""){
                    console.log("dasd");
                    alert("文件不能为空");
                }
                else{
                var write = document.getElementById("areaRight");
                let  content="<p class='filesname'>"+Fname+"</p>";
                // str[i]= Fname;
                write.innerHTML+=content;
                }
            }

            var file=document.getElementById('inputfile').files;
            if(file.length!=0){
                fileSize = file[0].size;
            }
            if(fileSize >1048576){
            alert("文件不能大于 1M ");
                return false;
            }
    }
	
	
	$("#JQupload").click(function(){
		//找到所有文件,(这里[0]表示转换为了js对象)
		var files=$("#inputfile")[0].files;
		//创建FormData对象
		var frm=new FormData();
		//将文件添加到FormData中
		for(var i=0;i<files.length;i++){
			frm.append("files",files[i]);
		}
		//利用jq的AJAX方法发送FormData对象
		$.ajax({
			url:"upload_declare.do",
			type:"POST",
			dataType:"json",
			data:frm,//ajax发送FormData对象
			processData:false,//jq不要处理数据
			contentType:false,
			success:function(obj){
				alert(obj.message);
				if(obj.state==1){
					location.href="personpage.do";
				}
			}
		});
	});
</script>
</html>



    