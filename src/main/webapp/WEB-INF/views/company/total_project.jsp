<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/judge_project.css">
    <script src="${pageContext.request.contextPath }/static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
    <title>全部项目</title>
</head>

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


            <!-- 全部项目 -->
            <div id="protype">
                <div class="containe">
                    <div class="container-left">
                        <div class="title">
                            <div class="icon"></div>
                            <div class="title-text">全部项目</div>
                        </div>
                        <div class="active type" id=""><a href="total_project.do"><span class="glyphicon glyphicon-chevron-right"></span> 选择项目</div></a>
                            
                    </div>
                    <div class="container-right">
                        <div class="container-right-header">
                            <form style="flex: 1;" action="">
                                <div class="search">
                                    <input type="text" placeholder="请输入查询项目名称关键字">
                                    <button type="button">
                                        <span class="glyphicon glyphicon-search"></span>搜索</button>
                                </div>
                            </form>

                        </div>
                        
                        
                        <div class="show-hide">
                            <div class="container-right-center" id="">
                                <table>
                                	<c:forEach items="${projectList}" var="u"  varStatus="s">
                                		<tr class="item1">
	                                        <th rowspan="2">
	                                            <a href="declare.do?pid=${u.pid }&pname=${u.pname }" class="glyphicon glyphicon-file">申报</a></th>
	                                        <td>项目编号:${u.pid }</td>
	                                    </tr>
	                                    <tr class="item2">
	                                        <td class="blue">项目名称:${u.pname }</td>
	                                    </tr>
                                	</c:forEach>
                                </table>
                            </div>

                        </div>


                        <div style="text-align: center; margin-top:50px;margin-right:30px;">
	                       	<span id="lastpage" style="text-decoration: none;border:1px solid #f9d52b;padding:5px 7px;color:#767675;cursor: pointer;">上一页</span>
	                       	<a id="pages" href="#" style="text-decoration: none;border:1px solid #f9d52b;padding:5px 7px;color:#767675;cursor: pointer;">1${page }</a>
	                       	<span id="nextpage" style="text-decoration: none;border:1px solid #f9d52b;padding:5px 7px;color:#767675;cursor: pointer;">下一页</span>
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

<script type="text/javascript">
	/* 下一页 */
	$("#nextpage").click(function(){
		var page=parseInt($("#pages")[0].text);
		
		$.ajax({
			"url":"all_projects_nextpage.do",
			"data":"page="+page+"&limit="+7,
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				if(obj.state==1){
					var newpage=page+1;
					$("#pages").html(newpage);
					
					var a=document.getElementsByClassName("item1");
					var b=document.getElementsByClassName("item2");


					
					for(var i=0;i<obj.data.length;i++){
						var td=a[i].getElementsByTagName("td");
						td[0].innerText="项目编号:"+obj.data[i].pid;
						$(a[i]).find("a").attr("href","declare.do?pid="+obj.data[i].pid+"&pname="+obj.data[i].pname);
					}
					for(var i=0;i<obj.data.length;i++){
						var td=b[i].getElementsByTagName("td");
						td[0].innerText="项目编号:"+obj.data[i].pname;
					}




					if(obj.data.length<7){
						for(var i=obj.data.length;i<7;i++){
							a[i].style.visibility="hidden";
							b[i].style.visibility="hidden";
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
				"url":"all_projects_lastpage.do",
				"data":"page="+page+"&limit="+7,
				"type":"POST",
				"dataType":"json",
				"success":function(obj){
					if(obj.state==1){
						var newpage=page-1;
						$("#pages").html(newpage);
						
						var a=document.getElementsByClassName("item1"); 
						var b=document.getElementsByClassName("item2");
						
						for(var i=0;i<obj.data.length;i++){
							var td=a[i].getElementsByTagName("td");
							td[0].innerText="项目编号:"+obj.data[7-1-i].pid;
                            $(a[i]).find("a").attr("href","declare.do?pid="+obj.data[7-1-i].pid+"&pname="+obj.data[7-1-i].pname);
						}
						for(var i=0;i<obj.data.length;i++){
							var td=b[i].getElementsByTagName("td");
							td[0].innerText="项目名称:"+obj.data[7-1-i].pname;
						}
						for(var i=0;i<7;i++){
							a[i].style.visibility="visible";
							b[i].style.visibility="visible";
						}
					}
				}
			});
		}
		
	});

</script>





















