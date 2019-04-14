<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${ctxStatic}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/css/login.css">
    <script src="${ctxStatic}/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="${ctxStatic}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctxStatic}/script/jquery.js"></script>
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h1 class="text-center">
                <small>用户注册</small>
            </h1>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="btn-group">
                        <!-- " id="choose">请选择你的身份： <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span> -->
                        <ul class="menu">
                            <li>
                                <a href="#" id="applicant">申报方</a>
                            </li>

                            <li>
                                <a href="#" id="expert">评审专家</a>
                            </li>
                            <li>
                                <a href="#" id="leader">决策者</a>
                            </li>
                            <li>
                                <a href="#" id="manager" >管理人员</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 申报方 -->
            <div id="more-infoo-applicant">
                <form action="${ctx}/company/register.do"  method="post" name="f1">
                    <table class="table table-bordered">
                        <tr>

                            <!-- <td class="infoo">
                               用户名
                            </td>
                            <td>
                                    <input type="text" class="form-control" value="" style="width: 432px;float: left;">
                                    <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                            </td> -->
                        </tr>

                        <tr class=>
                            <td class="infoo">
                                E-Mail账号：
                            </td>
                            <td>
                                <input name="email" type="text" class="form-control" value="" style="width: 432px;float: left;">
                                <span style="line-height: 36px; color: red">
                                <c:if test="${errname==1}"> *请输入6-16个字符的汉字加英文</c:if>
                                <c:if test="${errname==0}">用户已存在</c:if>
                                <c:if test="${errname==2}">用户名为空</c:if>
                            </span>
                            </td>

                        </tr>
                        <tr >

                            <td class="infoo">
                                初始密码
                            </td>
                            <td>
                                <input name="password" type="password" class="form-control" value="" style="width: 432px;float: left;">
                                <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                            </td>
                        </tr>
                        <tr>

                            <td class="infoo">
                                确认密码
                            </td>
                            <td>
                                <input  name="password2" type="password" class="form-control" value="" style="width: 432px;float: left;">
                                <span style="line-height: 36px; color: red">
                                <c:if test="${errp==1}"> *请输入6-16个字符的汉字加英文</c:if>
                                <c:if test="${errp==0}">俩次密码不正确</c:if>
                            </span>
                            </td>
                        </tr>



                    </table>
                    <table class="table table-bordered">

                        <tr class=>
                            <td class=" infoo">
                                姓名：
                            </td>
                            <td>
                                <input name="cnameManager" type="text" class="form-control" value="">
                            </td>
                            <td class=" infoo">
                                性别：
                            </td>
                            <td>
                                <select name="csex"  class="validate-selection validation-failed form-control">
                                    <option value="">--请选择--</option>
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                            </td>
                        </tr>
                        <tr >
                        </tr>
                        <tr>
                            <td class="infoo">
                                身份证号码：
                            </td>

                            <td>
                                <input name="ccard" type="text" class="form-control" value="">
                            </td>
                            <td class="infoo">
                                手机号：
                            </td>

                            <td>
                                <input name="cphone" type="text" class="form-control" value="">
                            </td>
                        </tr>

                    </table>
                    <table class="table table-bordered" >
                        <tr>
                            <td colspan="4">
                                <p style="font-size: 15px;color: red;text-align: center"> 申报方详细信息</p>
                            </td>
                        </tr>
                        <tr class=>
                            <td class=" infoo">
                                注册号：
                            </td>
                            <td>
                                <!--  -->
                                <input  name="registernum" type="text" class="form-control" value="">
                            </td>

                            <td class=" infoo">
                                公司名称：
                            </td>
                            <td>
                                <input name="cname" type="text" class="form-control" value="">
                            </td>
                        </tr>
                        <tr >

                            <%--<td class="infoo">--%>
                                <%--公司电话:--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<input name="cphone" type="text" class="form-control" value="">--%>
                            <%--</td>--%>
                            <td class=" infoo">
                                公司类型:
                            </td>
                            <td>
                                <input name="ctype" type="text" class="form-control" value="">
                            </td>
                        </tr>
                        <%--<tr>--%>

                            <%--&lt;%&ndash;<td class="infoo">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;法定代表人：&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<input name="" type="text" class="form-control" value="">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td class=" infoo">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;注册资本：&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<!-- name="registerCapital" -->&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<input  name="registerCapital" type="text" class="form-control" value="">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                        <%--</tr>--%>
                        <%--<tr>--%>

                            <%--<td class="infoo">--%>
                                <%--成立日期：--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<input type="text" class="form-control" value="">--%>
                            <%--</td>--%>
                            <%--<td class=" infoo">--%>
                                <%--公司地址：--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<input name="" type="text" class="form-control" value="">--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <tr class="table-last">
                            <td class=" infoo">
                                经营范围：
                            </td>
                            <td colspan="3">
                                <input name="prange" type="text" class="form-control" style="width: 40%">
                            </td>
                        </tr>


                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-default" onclick="document.f1.action=''"  class="submit">清空</button>
                    </div>
                </form>
            </div>

        </div>
        <!-- 管理人员 -->
        <div id="more-infoo-manager">
            <form action="${ctx}/manager/register.do" name="f2" method="post">
                <table class="table table-bordered">
                    <tr>
                    </tr>

                    <tr class=>
                        <td class=" infoo">
                            E-Mail账号：
                        </td>
                        <td>
                            <input name="memail" type="text" class="form-control" value="${m.memail}" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red">
                                <c:if test="${errname==1}"> *请输入6-16个字符的汉字加英文</c:if>
                                <c:if test="${errname==0}">用户已存在</c:if>
                                <c:if test="${errname==2}">用户名为空</c:if>
                            </span>
                        </td>
                    </tr>
                    <tr >

                        <td class="infoo">
                            初始密码
                        </td>
                        <td>
                            <input name="password" type="password" class="form-control" value="${m.password}" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                        </td>
                    </tr>
                    <tr>

                        <td class="infoo">
                            确认密码
                        </td>
                        <td>
                            <input name="password2"  type="password" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red">
                                <c:if test="${errp==1}"> *请输入6-16个字符的汉字加英文</c:if>
                                <c:if test="${errp==0}">俩次密码不正确</c:if>
                            </span>
                        </td>
                    </tr>



                </table>
                <table class="table table-bordered">

                    <tr class=>
                        <td class=" infoo">
                            姓名：
                        </td>
                        <td class="name">
                            <input name="mname" type="text" class="form-control" value="${m.mname}">
                        </td>
                        <td class=" infoo">
                            性别：
                        </td>
                        <td class="gender">
                            <select name="msex"  class="validate-selection validation-failed form-control">
                                <option value="">--请选择--</option>
                                <option value="男" <c:if test="${m.msex=='男'}">selected="selected"</c:if> >男</option>
                                <option value="女" <c:if test="${m.msex=='女'}">selected="selected"</c:if> >女</option>
                            </select>
                        </td>
                    </tr>
                    <tr >
                    </tr>
                    <tr>
                        <td class="infoo">
                            身份证号码：
                        </td>

                        <td>
                            <input name="mcard"type="text" class="form-control" value="${m.mcard}">
                        </td>
                        <td class="infoo">
                            手机号：
                        </td>

                        <td>
                            <input name="mphone" type="text" class="form-control" value="${m.mphone}">
                        </td>
                    </tr>

                </table>
                <table class="table table-bordered" >
                    <table class="table table-bordered" >
                        <tr>
                            <td colspan="4">
                                <p style="font-size: 15px;color: red;text-align: center">管理人员详细信息</p>
                            </td>
                        </tr>

                        <tr class=>
                            <td class="infoo">
                                工作号：
                            </td>
                            <td>
                                <input name="mnum" type="text" class="form-control" value="${m.mnum}">
                            </td>
                            <td class=" infoo">
                                所属部门：
                            </td>
                            <td>
                                <input name="mdepartment" type="text" class="form-control" value="${m.mdepartment}">
                            </td>
                        </tr>
                        <%--<tr >--%>

                            <%--<td class="infoo">--%>
                                <%--职位:--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<input type="text" class="form-control" value="">--%>
                            <%--</td>--%>
                            <%--<td class="infoo">--%>
                                <%--工作类别：--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<input type="text" class="form-control" value="">--%>
                            <%--</td>--%>
                        <%--</tr>--%>


                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-primary" onclick="document.f2.action=''" class="submit">清空</button>
                    </div>
                </table>

            </form>
        </div>



        <!-- 专家 -->
        <div id="more-infoo-expert">
            <form action="${ctx}/sys/register.do" method="POST">
                <table class="table table-bordered">
                    <tr>

                    </tr>

                    <tr class=>
                        <td class=" infoo">
                            E-Mail账号：
                        </td>
                        <td>
                            <input name="email" type="text" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red">
                                <c:if test="${errname==1}"> *请输入6-16个字符的汉字加英文</c:if>
                                <c:if test="${errname==0}">用户已存在</c:if>
                                <c:if test="${errname==2}">用户名为空</c:if>
                            </span>
                        </td>
                    </tr>
                    <tr >

                        <td class="infoo">
                            初始密码
                        </td>
                        <td>
                            <input name="password" type="password" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                        </td>
                    </tr>
                    <tr>

                        <td class="infoo">
                            确认密码
                        </td>
                        <td>
                            <input name="password2"  type="password" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red">
                                <c:if test="${errp==1}"> *请输入6-16个字符的汉字加英文</c:if>
                                <c:if test="${errp==0}">俩次密码不正确</c:if>
                            </span>
                        </td>
                    </tr>



                </table>
                <table class="table table-bordered">

                    <tr class=>
                        <td class=" infoo">
                            姓名：
                        </td>
                        <td>
                            <input name="ename" type="text" class="form-control" value="">
                        </td>
                        <td class=" infoo">
                            性别：
                        </td>
                        <td>
                            <select name="esex"  class="validate-selection validation-failed form-control">
                                <option value="">--请选择--</option>
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </td>
                    </tr>
                    <tr >
                    </tr>
                    <tr>
                        <td class="infoo">
                            身份证号码：
                        </td>

                        <td>
                            <input name="ecard" type="text" class="form-control" value="">
                        </td>
                        <td class="infoo">
                            手机号：
                        </td>

                        <td>
                            <input name="ephone" type="text" class="form-control" value="">
                        </td>
                    </tr>

                </table>
                <table class="table table-bordered" >
                    <table class="table table-bordered" >
                        <tr>
                            <td colspan="4">
                                <p style="font-size: 15px;color: red;text-align: center">评审专家详细信息</p>
                            </td>
                        </tr>
                        <tr class=>
                            <td class=" infoo">
                                专家号：
                            </td>
                            <td>
                                <input name="enumber" type="text" class="form-control" value="">
                            </td>
                            <td class=" infoo">
                                工作单位：
                            </td>
                            <td class="workUnit">
                                <input name="company" type="text" class="form-control" value="">
                            </td>
                        </tr>
                        <tr >

                            <td class="infoo">
                                职称:
                            </td>
                            <td>
                                <input type="text" class="form-control" value="">
                            </td>
                            <td class=" infoo">
                                学历:
                            </td>
                            <td>
                                <input name="eduction" type="text" class="form-control" value="">
                            </td>
                        </tr>
                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-default"  onclick="document.f1.action=''" class="submit">清空</button>
                    </div>
                </table>
            </form>
        </div>
        <!-- 决策者 -->
        <div id="more-infoo-leader">
            <form action="">
                <table class="table table-bordered">
                    <tr>

                        <!-- <td class="infoo">
                           用户名
                        </td>
                        <td>
                                <input type="text" class="form-control" value="" style="width: 432px;float: left;">
                                <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                        </td> -->
                    </tr>

                    <tr class=>
                        <td class=" infoo">
                            E-Mail账号：
                        </td>
                        <td>
                            <input type="text" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                        </td>
                    </tr>
                    <tr >

                        <td class="infoo">
                            初始密码
                        </td>
                        <td>
                            <input type="password" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                        </td>
                    </tr>
                    <tr>

                        <td class="infoo">
                            确认密码
                        </td>
                        <td>
                            <input type="password" class="form-control" value="" style="width: 432px;float: left;">
                            <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                        </td>
                    </tr>



                </table>
                <table class="table table-bordered">

                    <tr class=>
                        <td class=" infoo">
                            姓名：
                        </td>
                        <td>
                            <input type="text" class="form-control" value="">
                        </td>
                        <td class=" infoo">
                            性别：
                        </td>
                        <td>
                            <select name=""  class="validate-selection validation-failed form-control">
                                <option value="">--请选择--</option>
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </td>
                    </tr>
                    <tr >
                    </tr>
                    <tr>
                        <td class="infoo">
                            身份证号码：
                        </td>

                        <td>
                            <input type="text" class="form-control" value="">
                        </td>
                        <td class="infoo">
                            手机号：
                        </td>

                        <td>
                            <input type="text" class="form-control" value="">
                        </td>
                    </tr>

                </table>
                <table class="table table-bordered" >
                    <table class="table table-bordered" >
                        <tr>
                            <td colspan="4">
                                <p style="font-size: 15px;color: red;text-align: center">决策者详细信息</p>
                            </td>
                        </tr>
                        <tr class=>
                            <td class=" infoo">
                                组织机构代码：
                            </td>
                            <td>
                                <input type="text" class="form-control" value="">
                            </td>
                            <td class=" infoo">
                                机构全称：
                            </td>
                            <td>
                                <input type="text" class="form-control" value="">
                            </td>
                        </tr>
                        <tr >

                            <td class="infoo">
                                单位地址:
                            </td>
                            <td>
                                <input type="text" class="form-control" value="">
                            </td>
                            <td class=" infoo">
                                邮政编码:
                            </td>
                            <td>
                                <input type="text" class="form-control" value="">
                            </td>
                        </tr>
                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-default" class="submit">清空</button>
                    </div>
                </table>
            </form>

        </div>
    </div>
</div>
</div>
</body>
</html>