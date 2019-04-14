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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/personpage.css">
    <script src="${pageContext.request.contextPath }/static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/company_script/main.js"></script>
    <title>个人中心</title>
</head>

<body>
    <!-- 顶部 -->
	<c:import url="header.jsp"></c:import>

    <!-- 导航部 -->
    <div class="navBar">
        <ul class="list">
            <li>
                <a href="total_project.do"><span class="glyphicon glyphicon-th-list"></span> 全部项目</a>
            </li>
            <li class="active">
                <a href="personpage.do"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
            </li>
        </ul>
    </div>


    <!-- 主体部 -->
    <div class="main">
        <div class="main_info" >


          <!-- 个人中心 -->
            <div id="user" class="userCenter" style="display: block;">
                    <div class="main_left">
                        <img src="../static/images/company/photo.png" alt="用户照片" width="185px;">
                        <div>
                           <span class="name">${cname }</span> <span class="applicant">申报人</span>
                        </div>
                    </div>
    
                    <div class="main_right">
                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="personpage.do">我的项目</a>
                            </li>
                            <li>
                                <a href="information.do">信息管理</a>
                            </li>
                            <li>
                                <a href="qualification.do">资质认证</a>
                            </li>
                            <li>
                                <a href="password.do">修改密码</a>
                            </li>
                            <li>
                                <a href="project_book.do">项目管理</a>
                            </li>
                        </ul>
                        
                        <c:if test="${NoProjectYet!=null}">
                        	<span style="color:#ccc ">${NoProjectYet}</span>
                   		</c:if>

    					<c:forEach items="${projects}" var="u"  varStatus="s">
	                        <div class="details">
								
		                        <!-- 我的项目 -->
		                        <div class="myProject" style="display: block;height:100px;">
		                                <div class="myProject_top">
		                                    <img src="../static/images/company/project.png" alt="">
		                                    
		                                    <p class="light" style="display: inline;">项目名称：${u.pname }</p>
		                                    
		                                  	<p style="display: inline;">项目编号：${u.pid }</p>
		                                  
		                                    <p class="cor_leader">负责人：${cname }</p>
		                                    
		                                </div>
		    
		                                <div class="operate_btn">
		                                    <a href="project_book.do"><button type="button" class="btn btn-primary manage">后期管理</button></a>
		                                </div>
		    
		                                <div class="myProject_bot">
		                                    <div class="myProject-word-lixiang">
		                                        <p class="word-title">立项号:${u.pid}</p>
		                                    </div>
		                                    <div class="myProject-word-leixing">
		                                        <p class="word-title">申报类型:${u.type}</p>
		                                    </div>
		                                    <div class="myProject-word-jibie">
		                                        <p class="word-title">申报级别:${u.rank }</p>
		                                    </div>
		                                    <div class="myProject-word-zhuangtai">
		                                        <p class="word-title">当前级别/状态:${u.state}</p>
		                                    </div>
		                                </div>
								
	                        	</div>
	                        </div>
                      </c:forEach>
                      
	                    <div style="text-align: center; margin-top:50px;margin-right:30px;">
	                       	<span id="lastpage" style="text-decoration: none;border:1px solid #f9d52b;padding:5px 7px;color:#767675;cursor: pointer;">上一页</span>
	                       	<a id="pages" href="#" style="text-decoration: none;border:1px solid #f9d52b;padding:5px 7px;color:#767675;cursor: pointer;">${page }</a>
	                       	<span id="nextpage" style="text-decoration: none;border:1px solid #f9d52b;padding:5px 7px;color:#767675;cursor: pointer;">下一页</span>
                        </div>
                     
                    </div>
        </div>
        </div>
    </div>
</body>
<style>
	.details{
		height:250px;
	}
</style>
<script type="text/javascript">
	/* 下一页 */
	$("#nextpage").click(function(){
		var page=parseInt($("#pages")[0].text);
		
		$.ajax({
			"url":"nextpage.do",
			"data":"page="+page+"&limit="+2,
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				if(obj.state==1){
					var newpage=page+1;
					$("#pages").html(newpage);
					
					var a=document.getElementsByClassName("details"); 
					for(var i=0;i<a.length;i++){
						var p=a[i].getElementsByTagName("p");
						p[0].innerText="项目名称："+obj.data[i].pname;
						p[1].innerText="项目编号："+obj.data[i].pid;
						/* p[2]为负责人  不更改,项目表中没有此数据 */
						p[3].innerText="立项号:"+obj.data[i].pid;
						p[4].innerText="申报类型:"+obj.data[i].type;
						p[5].innerText="申报级别:"+obj.data[i].rank;
						p[6].innerText="当前级别/状态:"+obj.data[i].state;
						if(obj.data.length==1){
							a[1].style.visibility="hidden";
							break;
						}
					}
				}else{
					alert(obj.message);
				}
			}
		});
	});
	
		
	/* 上一页 */
	$("#lastpage").click(function(){
		var page=parseInt($("#pages")[0].text);
		
		if(page>1){
			$.ajax({
				"url":"lastpage.do",
				"data":"page="+page+"&limit="+2,
				"type":"POST",
				"dataType":"json",
				"success":function(obj){
					if(obj.state==1){
						var newpage=page-1;
						$("#pages").html(newpage);
						
						var a=document.getElementsByClassName("details"); 
						a[1].style.visibility="visible";
						for(var i=0;i<a.length;i++){
							var p=a[i].getElementsByTagName("p");
							p[0].innerText="项目名称："+obj.data[i].pname;
							p[1].innerText="项目编号："+obj.data[i].pid;
							/* p[2]为负责人  不更改,项目表中没有此数据 */
							p[3].innerText="立项号:"+obj.data[i].pid;
							p[4].innerText="申报类型:"+obj.data[i].type;
							p[5].innerText="申报级别:"+obj.data[i].rank;
							p[6].innerText="当前级别/状态:"+obj.data[i].state;
						}
					}
				}
			});
		}
		
	});

</script>





