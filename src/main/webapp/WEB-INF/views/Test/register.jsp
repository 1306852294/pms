<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>register</title>

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
        <form action="${pageContext.request.contextPath }/sys/registerComplete" method="post" >
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="btn-group">
                             <!-- " id="choose">请选择你的身份： <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span> -->
                            <ul class="menu">
                                    <li class="">
                                            <a href="#" id="applicant">申报方</a>
                                    </li>
                               
                               
                                <li class="">
                                         <a href="#" id="expert">评审专家</a>
                                </li>
                                <li>
                                        <a href="#" id="leader">决策者</a>
                                </li>
                                <li>
                                        <a href="#" id="manager" >管理人员</a>
                                </li>
                                <!-- <li class="submit">
                                        <button class="btn btn-default ">提交</button>
                                </li> -->
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <table class="table table-bordered">
                        <tr class="">
                            
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
                            <td class="">
                                        <input type="text" name="email" class="form-control" value="" style="width: 432px;float: left;">
                                        <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                            </td>
                        </tr>
                        <tr >
                            
                            <td class="infoo">
                               初始密码
                            </td>
                            <td>
                                <input type="password" name="password" class="form-control" value="" style="width: 432px;float: left;">
                                <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                            </td>
                        </tr>
                        <tr class="">
                            
                            <td class="infoo">
                               确认密码
                            </td>
                            <td>
                                <input type="password" name="surePassword" class="form-control" value="" style="width: 432px;float: left;">
                                <span style="line-height: 36px; color: red"> *请输入6-16个字符的汉字加英文</span>
                            </td>
                        </tr>
                        
                        
                   
                </table>
                <table class="table table-bordered" id="basic-infoo">
                 
                        <tr class=>
                            <td class=" infoo">
                               姓名：
                            </td>
                            <td class="">
                                    <input type="text" class="form-control" value="" name="name">
                             </td>
                            <td class=" infoo">
                                    性别：
                            </td>
                            <td class="">
                                <select name="gender" id="" class="validate-selection validation-failed form-control">
                                            <option value="">--请选择--</option>
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                </select>
                            </td>
                        </tr>
                        <tr >
                            
                            <!-- <td class="infoo">
                                    企业在地区:
                            </td>
                            <td>
                                <select name="" id="" class="form-control"> 
                                        <option value="请选择">请选择</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                </select>
                            </td>
                            <td class=" infoo">
                                所属单位:
                            </td>
                            <td class="">
                                 <input type="text" class="form-control" value="">
                                </td> -->
                        </tr>
                        <tr class="">
                            <td class="infoo">
                                   身份证号码：
                                </td>
                            
                            <td>
                                    <input type="text" class="form-control" value="" name="idCard">
                             </td>
                             <td class="infoo">
                                    手机号：
                            </td>
                            
                                <td class="">
                                <input type="text" class="form-control" value="" name="phone">
                            </td>
                        </tr>
                        <!-- <tr class="">
                                <td class=" infoo">
                                        办公电话：
                                </td>
                                
                                <td>
                                        <input type="text" class="form-control" value="">
                                </td>
                                <td class=" infoo">
                                        邮政编码：
                                    </td>
                                    <td class="">
                                         <input type="text" class="form-control" value="">
                           </td>
                        </tr> -->
                            <!-- <tr class="table-last">
                                <td class=" infoo">
                                        通讯地址：
                                    </td>
                                    <td colspan="3">
                                         <input type="text" class="form-control" style="width: 40%">
                                    </td>
                            </tr> -->
                        
                   
                </table>
                <div id="more-infoo-applicant">
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
                                <td class="">
                                        <input type="text" class="form-control" value="" name="registerNum">
                                 </td>  
                                <td class=" infoo">
                                        公司名称：
                                </td>
                                <td class="">
                                        <input type="text" class="form-control" value="" name="companyName">
                                </td>
                            </tr>
                            <tr >
                                
                                <td class="infoo">
                                        公司电话:
                                </td>
                                <td>      
                                    <input type="text" class="form-control" value="" name="contact">       
                                </td>
                                <td class=" infoo">
                                    公司类型:
                                </td>
                                <td class="">
                                     <input type="text" class="form-control" value="" name="companyType">
                                 </td>
                            </tr>
                            <tr class="">
                                
                                <td class="infoo">
                                        法定代表人：
                                </td>
                                <td>
                                        <input type="text" class="form-control" value="" name="legalRepresentative"> 
                                 </td>
                                <td class=" infoo">
                                        注册资本：
                                    </td>
                                    <td class="">
                                         <input type="text" class="form-control" value="" name="registerCapital">
                           </td>
                            </tr>
                            <tr class="">
                                
                                    <td class="infoo">
                                            成立日期：
                                    </td>
                                    <td>
                                            <input type="text" class="form-control" value="" name="registerTime">
                           </td>
                                    <td class=" infoo">
                                            公司地址：
                                        </td>
                                        <td class="">
                                             <input type="text" class="form-control" value="" name="companyAddress">
                               </td>
                            </tr>
                                <tr class="table-last">
                                    <td class=" infoo">
                                            经营范围：
                                        </td>
                                        <td colspan="3">
                                             <input type="text" class="form-control" style="width: 40%" name="busiScop">
                                        </td>
                                </tr>
                            
                       
                        </table>
                        <div class="bottom">
                            <button class="btn btn-primary" class="submit">提交</button>
                            <button class="btn btn-default" class="submit">清空</button>
                        </div>
                    </div>
                </div>
                <div id="more-infoo-manager">
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
                            <td class="">
                                    <input type="text" class="form-control" value="" name="jobNum">
                            </td>
                            <td class=" infoo">
                                    所属部门：
                            </td>
                            <td class="">
                                <!-- <select name="" id="" class="validate-selection validation-failed">
                                            <option value="">--请选择--</option>
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                </select> -->
                                <input type="text" class="form-control" value="" name="department">
                            </td>
                        </tr>
                        <tr >
                            
                            <td class="infoo">
                                    职位:
                            </td>
                            <td>
                                <!-- <select name="" id="">
                                        <option value="请选择">请选择</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                </select> -->
                                <input type="text" class="form-control" value="" name="position">
                            </td>
                            <td class="infoo">
                                工作类别：
                             </td>
                             <td>
                                     <input type="text" class="form-control" value="" name="manageType">
                              </td>
                        </tr>
                        <!-- <tr class="">
                            
                            <td class="infoo">
                               工作类别：
                            </td>
                            <td>
                                    <input type="text" class="form-control" value="">
                             </td>
                            <td class=" infoo">
                                    办公电话：
                                </td>
                                <td class="">
                                     <input type="text" class="form-control" value="">
                       </td>
                        </tr> -->
                        <!-- <tr class="">
                            
                                <td class="infoo">
                                   身份证号码：
                                </td>
                                <td>
                                        <input type="text" class="form-control" value="">
                       </td>
                                <td class=" infoo">
                                        邮政编码：
                                    </td>
                                    <td class="">
                                         <input type="text" class="form-control" value="">
                           </td>
                        </tr>
                            <tr class="table-last">
                                <td class=" infoo">
                                        通讯地址：
                                    </td>
                                    <td colspan="3">
                                         <input type="text" class="form-control" style="width: 40%">
                                    </td>
                            </tr> -->
                        
                   
                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-default" class="submit">清空</button>
                    </div>
                </div>
                
                <div id="more-infoo-expert">
                            
                    <table class="table table-bordered" id="">
                        <tr>
                                <td colspan="4">
                                        <p style="font-size: 15px;color: red;text-align: center">评审专家详细信息</p>
                                </td>
                            </tr>
                        <tr class=>
                            <td class=" infoo">
                               专家号：
                            </td>
                            <td class="">
                                    <input type="text" class="form-control" value="" name="expertNum">
                   </td>
                            <td class=" infoo">
                                    工作单位：
                            </td>
                            <td class="">
                                    <input type="text" class="form-control" value="" name="expertUnit">
                            </td>
                        </tr>
                        <tr >
                            
                            <td class="infoo">
                                    职称:
                            </td>
                            <td>
                                <!-- <select name="" id="">
                                        <option value="请选择">请选择</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                </select> -->
                                <input type="text" class="form-control" value="" name="title">
                            </td>
                            <td class=" infoo">
                                    评审经历:
                            </td>
                            <td class="">
                                 <input type="text" class="form-control" value="" name="experience">
                            </td>
                        </tr>
                        <!-- <tr class="">
                            
                            <td class="infoo">
                               手机：
                            </td>
                            <td>
                                    <input type="text" class="form-control" value="">
                            </td>
                            <td class=" infoo">
                                    办公电话：
                                </td>
                                <td class="">
                                     <input type="text" class="form-control" value="">
                       </td>
                        </tr>
                        <tr class="">
                            
                                <td class="infoo">
                                   身份证号码：
                                </td>
                                <td>
                                        <input type="text" class="form-control" value="">
                                </td>
                            <td class=" infoo">
                                        邮政编码：
                                    </td>
                                    <td class="">
                                         <input type="text" class="form-control" value="">
                           </td>
                        </tr>
                            <tr class="table-last">
                                <td class=" infoo">
                                        通讯地址：
                                    </td>
                                    <td colspan="3">
                                         <input type="text" class="form-control" style="width: 40%">
                                    </td>
                            </tr> -->
                        
                   
                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-default" class="submit">清空</button>
                    </div>
                </div>
                <div id="more-infoo-leader">
                    <table class="table table-bordered" id="">
                        <tr>
                                <td colspan="4">
                                        <p style="font-size: 15px;color: red;text-align: center">决策者详细信息</p>
                                </td>
                            </tr>
                        <tr class=>
                            <td class=" infoo">
                                    组织机构代码：
                            </td>
                            <td class="">
                                    <input type="text" class="form-control" value="" name="unitId">
                   </td>
                            <td class=" infoo">
                                    机构全称：
                            </td>
                            <td class="">
                                <!-- <select name="" id="" class="validate-selection validation-failed">
                                            <option value="">--请选择--</option>
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                </select> -->
                                <input type="text" class="form-control" value="" name="unitName">
                            </td>
                        </tr>
                        <tr >
                            
                            <td class="infoo">
                                    单位地址:
                            </td>
                            <td>
                                <!-- <select name="" id="">
                                        <option value="请选择">请选择</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                        <option value="南昌">南昌</option>
                                </select> -->
                                <input type="text" class="form-control" value="" name="address">
                            </td>
                            <td class=" infoo">
                                    邮政编码:
                            </td>
                            <td class="">
                                 <input type="text" class="form-control" value="" name="zipCode">
                            </td>
                        </tr>
                        <!-- <tr class="">
                            
                            <td class="infoo">
                               手机：
                            </td>
                            <td>
                                    <input type="text" class="form-control" value="">
                   </td>
                            <td class=" infoo">
                                    办公电话：
                                </td>
                                <td class="">
                                     <input type="text" class="form-control" value="">
                       </td>
                        </tr>
                        <tr class="">
                            
                                <td class="infoo">
                                   身份证号码：
                                </td>
                                <td>
                                        <input type="text" class="form-control" value="">
                       </td>
                                <td class=" infoo">
                                        邮政编码：
                                    </td>
                                    <td class="">
                                         <input type="text" class="form-control" value="">
                           </td>
                        </tr>
                            <tr class="table-last">
                                <td class=" infoo">
                                        通讯地址：
                                    </td>
                                    <td colspan="3">
                                         <input type="text" class="form-control" style="width: 40%">
                                    </td>
                            </tr> -->
                        
                   
                    </table>
                    <div class="bottom">
                        <button class="btn btn-primary" class="submit">提交</button>
                        <button class="btn btn-default" class="submit">清空</button>
                    </div>
                </div>
            </div>
           </form>
        </div>
</body>
<!-- <script type="text/javascript">
    if ('${result}'== 2) {
        alert("注册成功，将跳转到登录页面！")
        location.href = '/sys/login'
    }
    if ('${result}' == 0) {
        alert("请填写邮箱！")
    }
    if ('${result}' == 1) {
        alert("请填写密码及验证密码!")
    }
</script> -->
</html>