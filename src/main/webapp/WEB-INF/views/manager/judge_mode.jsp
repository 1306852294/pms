<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/2/28
  Time: 下午 4:39
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
    <title>评审管理</title>
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
                <div class="title-text">评审管理>评审方式</div>
            </div>

            <div id="protype">
                <div class="containe">
                    <div class="container-left">
                        <div>
                            <div>进行项目管理：</div>
                        </div>
                        <c:import url="judge_project.jsp"></c:import>

                    </div>

                    <!-- 评审管理~~~专家小组 -->
                    <div id="evaManage" class="container-right" style="display: block;">
                        <div class="cr-nav">
                            <div class="cr-nav-icon "> <a href="tojudge_rule.do">评审规则</a> </div>
                            <div class="cr-nav-icon "> <a href="toexperGroup.do">专家小组</a></div>
                            <div class="cr-nav-icon active"> <a href="tojudge_mode.do">评审方式</a> </div>
                            <div class="cr-nav-icon"> <a href="toresult.do">评审结果</a> </div>
                        </div>

                        <!-- 评审管理~~~评审结果 -->

                        <!-- 评审方式第三个 -->

                        <div class="cr-contant" id="ps-3" style="display: block">
                            <div class="cr-c-header">
                                <div class="pot"></div>
                                <div class="title">请选择评审方式：</div>
                            </div>

                            <form action="addmode.do" method="post">
                                <div class="single-select">
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosinline" id="optionsRadios3" value="独立评审"  checked  > 独立评审
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosinline" id="optionsRadios4" value="非独立评审"  > 非独立评审
                                    </label>
                                </div>
                                <div class="check" style="display:none">
                                    <div class="boxa">
                                        <c:forEach items="${expertList}" var="e">
                                            <label class="checkbox-inline">
                                                <input name="eid" type="checkbox"  value="${e.eid}"> ${e.ename}
                                            </label>
                                        </c:forEach>
                                    </div>


                                </div>
                                <div class="cr-btn">
                                    <input type="submit" class="btn btn-primary" id="btn01" value="确定">
                                </div>
                            </form>
                        </div>

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
</body>
<script>
    // window.onload=function(){
    //     // alert("dasdhasudhuiashdusahdjhasjdhuiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiisadasdhuih");
    //     let btn01 = document.getElementById('btn01');
    //     let single_judge = document.getElementById('optionsRadios3');
    //     let group = document.getElementsByClassName("check");
    //     let group1 = document.getElementsByClassName("cr-btn");
    //
    //     btn01.onclick=function(){
    //         let m =single_judge.checked;
    //         if(m){
    //             console.log(m);
    //             console.log("独立");
    //             group[0].style.display="none";
    //             group1[1].style.display="none";
    //         }
    //         else{
    //             console.log(m);
    //             console.log("非独立");
    //             group[0].style.display="block";
    //             group1[1].style.display="block";
    //         }
    //     }
    // }

    window.onload=function(){

        let btn01 = document.getElementById('btn01');
        let single_judge = document.getElementById('optionsRadios3');
        let group = document.getElementsByClassName("check");
        // let group1 = document.getElementsByClassName("cr-btn");
        let radio =document.getElementsByClassName("radio-inline");

        for (let i=0;i<radio.length;i++){
            radio[i].onclick=function(){
                let m =single_judge.checked;
                if(m){
                    console.log(m);
                    console.log("独立");
                    group[0].style.display="none";

                }
                else{
                    console.log(m);
                    console.log("非独立");
                    group[0].style.display="block";

                }
            }
        }

    }



</script>
</html>