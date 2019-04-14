<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/2/28
  Time: 下午 5:08
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

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>


    <script>

        // 创建一个二维数组
        var arr = new Array(2);
        arr[0] = ["江西省","南昌市","九江市","上饶市","抚州市"];
        arr[1] = ["福建省","福州市","厦门市","漳州市","泉州市"];

        function choose(val){
            // 获取city的select
            var city = document.getElementById("cmbCity");
            // 获取option
            var cityOp = city.getElementsByTagName("option");
            // 设置可操作
            city.disabled = false;
            // 先删除，后添加
            for (var i = 0; i < cityOp.length; i++) {
                var op = cityOp[i];
                // 删除option
                city.removeChild(op);
                //数组长度发生变化，需处理
                i--;
            }

            // 遍历
            for (var i = 0; i < arr.length; i++) {
                //取一维数组
                var arr1 = arr[i];
                //取一维数组的第一个值
                var firstVal = arr1[0];
                //判断
                if(firstVal == val){
                    //遍历
                    for (var j = 1; j < arr1.length; j++) {
                        // 获取城市名
                        var value = arr1[j];
                        // 创建option
                        var optionl = document.createElement("option");
                        // 创建文本
                        var textl = document.createTextNode(value);
                        // 把文本添加到标签
                        optionl.appendChild(textl);
                        alert("添加");
                        //添加到city里面
                        city.appendChild(optionl);
                    }
                }
            }
        }
    </script>

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
                <div class="title-text">评审管理>专家小组</div>
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
                            <div class="cr-nav-icon active"> <a href="toexperGroup.do">专家小组</a></div>
                            <div class="cr-nav-icon"> <a href="tojudge_mode.do">评审方式</a> </div>
                            <div class="cr-nav-icon"> <a href="toresult.do">评审结果</a> </div>
                        </div>
                        <!-- 评审管理~~~评审结果 -->

                        <!-- 专家小组第二个 -->
                        <div class="main col-md-12 column" id="ps-2">

                            <div class="screen page-header">
                                <label for="firstname1" class="col-md-2 control-label" >筛选条件</label>
                            </div>


                            <form action="addexpert.do" class="details form-horizontal" role="form">

                                <div class="area form-group">
                                    <label for="firstname" class="col-sm-2 control-label">地区：</label>
                                    <select class="form-control" id="cmbProvince" name="cmbProvince" ></select>
                                    <select class="form-control" id="cmbCity" name="cmbCity"></select>
                                    <select class="form-control" id="cmbArea" name="cmbArea"></select>

                                <%--<select class="form-control" id="cmbArea" name="cmbArea"></select>--%>
                                </div>


                                <div class="form-group">
                                    <label for="firstname1" class="col-md-2 control-label" >人数：</label>
                                    <div class="col-sm-8">
                                        <input name="num" type="text" class="number form-control" id="firstname1" placeholder="请输入数字">
                                    </div>
                                </div>

                                <%--<div class="education form-group">--%>
                                    <%--<label class="col-sm-2 control-label clear" for="name">学历：</label>--%>
                                    <%--<div style="clear: both;">--%>
                                        <%--<label class="checkbox-inline">--%>
                                            <%--<input type="checkbox" id="inlineCheckbox1" value="option1"> 本科--%>
                                        <%--</label>--%>
                                        <%--<label class="checkbox-inline">--%>
                                            <%--<input type="checkbox" id="inlineCheckbox2" value="option2"> 选项 2--%>
                                        <%--</label>--%>
                                        <%--<label class="checkbox-inline">--%>
                                            <%--<input type="checkbox" id="inlineCheckbox3" value="option3"> 选项 3--%>
                                        <%--</label>--%>
                                    <%--</div>--%>

                                <%--</div>--%>


                                <div class="form-group">
                                    <label class="col-sm-2 control-label clear" for="name">研究方向：</label>
                                    <select name="list"  class="selectpicker col-sm-3" title="请选择研究方向" multiple>
                                        <option value="计算机">计算机</option>
                                        <option value="机械">机械</option>
                                        <option value="生物">生物</option>
                                    </select>

                                </div>

                                <!-- <div class="form-group">
                                      <label class="col-sm-3 control-label">客资类型：</label>
                                       <div class="col-sm-4">
                                           <select id="usertype" name="usertype" class="selectpicker show-tick form-control" multiple data-live-search="false">
                                                   <option value="0">苹果</option>
                                                   <option value="1">菠萝</option>
                                                   <option value="2">香蕉</option>
                                                   <option value="3">火龙果</option>
                                                   <option value="4">梨子</option>
                                                   <option value="5">草莓</option>
                                                   <option value="6">哈密瓜</option>
                                                   <option value="7">椰子</option>
                                                   <option value="8">猕猴桃</option>
                                                   <option value="9">桃子</option>
                                           </select>
                                       </div>
                                     </div> -->


                                <div class="form_footer form-group">
                                    <button type="submit" class="btn btn-primary" style="background-color:rgb(255, 102,50)">随机抽调</button>
                                </div>
                            </form>
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
    $(document).ready(function () {
        addressInit('cmbProvince', 'cmbCity', 'cmbArea');
    });
</script>
</html>