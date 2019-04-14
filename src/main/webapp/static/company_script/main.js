//判断密码是否一致
function checkpwd() {
  let oInput_1 = document.form1.pwd1.value, //获取密码框的值
    oInput_2 = document.form1.pwd2.value; //获取重新输入的密码值

  if (oInput_1 != oInput_2) {
    //判断两次输入的值是否一致，不一致则显示错误信息
    document.getElementById("warning").innerHTML =
      "两次输入密码不一致，请重新输入"; //在div显示错误信息
    return false;
  } else {
    //密码一致，可以继续下一步操作
    document.getElementById("warning").innerHTML = "";
  }
}

window.onload = function() {
  let list_1 = document.querySelectorAll(".navBar .list li"),
    list_2 = document.querySelectorAll(".main_right>.nav li"),
    oSpan = document.querySelectorAll(".navBar .list span"),
    oBox = document.querySelector(".main .main_info"),
    oAll = document.getElementById("all"),
    oType = document.getElementById("protype"),
    oUser = document.getElementById("user"),
    tYpe = document.querySelectorAll(".type"),
    iTem = document.querySelectorAll(".item"),
    pAges = document.querySelectorAll(".pages"),
    oDiv = document.querySelectorAll(".details > div");

  //点击切换
  for (let i = 0; i < list_1.length; i++) {
    list_1[i].onclick = function() {
      for (let i = 0; i < list_1.length; i++) {
        list_1[i].className = "";
      }
      list_1[i].className = "active";
      if (i == 0) {
        //点击全部项目
        oType.style.display = "block";
        oUser.style.display = "none";
      } else {
        //点击个人中心
        oType.style.display = "none";
        oUser.style.display = "block";
      }
    };
  }

  for (let i = 0; i < tYpe.length; i++) {
    tYpe[i].onclick = function() {
      for (let i = 0; i < tYpe.length; i++) {
        tYpe[i].className = "type";
      }
      tYpe[i].className = "active";
    };
  }

  for (let i = 0; i < iTem.length; i++) {
    iTem[i].onclick = function() {
      for (let i = 0; i < iTem.length; i++) {
        iTem[i].className = "item";
      }
      iTem[i].className = "activee";
    };
  }

  for (let i = 0; i < pAges.length; i++) {
    pAges[i].onclick = function() {
      for (let i = 0; i < pAges.length; i++) {
        pAges[i].className = "pages";
      }
      pAges[i].className = "active";
    };
  }

  //点击切换
  for (let i = 0; i < list_2.length; i++) {
    list_2[i].onclick = function() {
      for (let i = 0; i < list_2.length; i++) {
        list_2[i].className = "";
      }
      list_2[i].className = "active";
      switch (i) {
        case 0:
          for (let i = 0; i < oDiv.length; i++) {
            oDiv[i].style.display = "none";
          }
          oDiv[0].style.display = "block";
          break;
        case 1:
          for (let i = 0; i < oDiv.length; i++) {
            oDiv[i].style.display = "none";
          }
          oDiv[1].style.display = "block";
          break;
        case 2:
          for (let i = 0; i < oDiv.length; i++) {
            oDiv[i].style.display = "none";
          }
          oDiv[2].style.display = "block";
          break;
        case 3:
          for (let i = 0; i < oDiv.length; i++) {
            oDiv[i].style.display = "none";
          }
          oDiv[3].style.display = "block";
          break;
        default:
          for (let i = 0; i < oDiv.length; i++) {
            oDiv[i].style.display = "none";
          }
          oDiv[4].style.display = "block";
      }
    };
  }

  //填写+进度报告
  let list_3 = document.querySelectorAll(".projectManage>.nav li"),
    pjFill = document.querySelector(".projectManage .pjFill"),
    pjProgress = document.querySelector(".projectManage .pjProgress"),
    pjReport = document.querySelector(".projectManage .pjReport");

  for (let i = 0; i < list_3.length; i++) {
    list_3[i].onclick = function() {
      for (let i = 0; i < list_3.length; i++) {
        list_3[i].className = "list_3";
      }
      list_3[i].className = "active";

      if (i == 0) {
        pjFill.style.display = "block";
        pjReport.style.display = "none";
      } else {
        pjFill.style.display = "none";
        pjReport.style.display = "block";
      }
    };
  }

  // 个人信息编辑保存
  var year = new Date().getFullYear(); //获取当前年份

  var sel = document.getElementById("form-time-behind"); //获取select下拉列表
  for (
    var i = 1949;
    i < year + 3;
    i++ //循环添加1949到当前年份加3年的每个年份依次添加到下拉列表
  ) {
    var option = document.createElement("option");
    option.value = i;
    var txt = document.createTextNode(i);
    option.appendChild(txt);
    sel.appendChild(option);
  }

  $(".personal-button-left").click(function() {
    $(".my-form #table2").removeClass("form-table2");
    $(".my-form #table1").addClass("jq-tablenone");
  });
  var ocpnameb = document.getElementById("form-cpname-behind"),
    ocpnamef = document.getElementById("form-cpname-front"),
    ophoneb = document.getElementById("form-phone-behind"),
    ophonef = document.getElementById("form-phone-front"),
    oBusinessModelb = document.getElementById("form-BusinessModel-behind"),
    oBusinessModelf = document.getElementById("form-BusinessModel-front"),
    omoneyb = document.getElementById("form-money-behind"),
    omoneyf = document.getElementById("form-money-front"),
    oBusinessAOEb = document.getElementById("form-BusinessAOE-behind"),
    oBusinessAOEf = document.getElementById("form-BusinessAOE-front"),
    otimeb = document.getElementById("form-time-behind"),
    otimef = document.getElementById("form-time-front"),
    ocptype = document.getElementById("form-cptype-front");
  $(".personal-button-right").click(function() {
    var valcpnameb = ocpnameb.value;
    ocpnamef.innerHTML = valcpnameb;
    var valphoneb = ophoneb.value;
    ophonef.innerHTML = valphoneb;
    var valBusinessModelb = oBusinessModelb.value;
    oBusinessModelf.innerHTML = valBusinessModelb;
    var valmoneyb = omoneyb.value;
    omoneyf.innerHTML = valmoneyb;
    var valBusinessAOEb = oBusinessAOEb.value;
    oBusinessAOEf.innerHTML = valBusinessAOEb;
    var index = otimeb.selectedIndex;
    var valotimeb = otimeb.options[index].value;
    otimef.innerHTML = valotimeb + "年";

    obj = document.getElementsByName("cpname");
    check_val = [];
    for (k in obj) {
      if (obj[k].checked) check_val.push(obj[k].value);
    }
    ocptype.innerHTML = check_val;
    $(".my-form #table1")
      .removeClass("jq-tablenone")
      .addClass("jq-tableblock");
    $(".my-form #table2").addClass("form-table2");
  });

  
  $(document).ready(function() {
    let i = 1;
    let j = 1;
    function all() {
      $(".container-right-center").hide();
    }

    $(".container-right-center").each(function() {
      this.id = "project" + i;
      i++;
    }); //给每个加id
    $("div[class~=type]").click(function() {
      all();
      var obj1 = $(this).index();
      // alert(obj1);
      $("#project" + obj1).show();
    });
    // $(".container-right-footer div").each(function(){
    //     $(this).text(j);
    //     j++;
    // })
    $(".container-right-footer div").click(function() {
      all();
      var obj2 = $(this).text();
      $("#project" + obj2).show();
    });
  });

  //用户名注销
  let on = document.getElementById("userName"),
    show = document.querySelector("#userName li");
  on.onmouseover = function() {
    show.style.display = "block";
  };
  on.onmouseleave = function() {
    show.style.display = "none";
  };

  //将上传的文件显示在右侧
  $(document).ready(function() {
    $(".uploadArea .areaLeft .submit").change(function() {
      let a = $(".uploadArea .areaLeft .submit #inputfile")
          .val()
          .split("\\"),
        b = a[a.length - 1];

      $(".uploadArea .areaRight").html(b);
    });
  });
};
