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
  //评审项目+个人中心切换
  let list_1 = document.querySelectorAll(".navBar .list li"),
    evalution = document.querySelector(".main #evalution"),
    evaRight = document.querySelector(".main #evaRight"),
    user = document.querySelector(".main #user"),
    evaManage = document.querySelector(".main #evaManage");
    postManage = document.querySelector(".main #mlmanagement");
    arr = new Array();
    arr[0] = evaRight;
    arr[1] = evaManage;
    arr[2] = postManage;
    arr[3] = user;

  for (let i = 0; i < list_1.length; i++) {
    list_1[i].onclick = function() {
      for (let i = 0; i < list_1.length; i++) {
            list_1[i].className = "";
          this.className = "active";
      }

      switch (i) {
        case 0:
          for (let i = 0; i < arr.length; i++) {
            arr[i].style.display = "none";
          }
          evalution.style.display = "block";
          arr[0].style.display = "block";
          break;

        case 1:
          for (let i = 0; i < arr.length; i++) {
            arr[i].style.display = "none";
          }
          evalution.style.display = "block";
          arr[1].style.display = "block";
          break;

        case 2:
          for (let i = 0; i < arr.length; i++) {
            arr[i].style.display = "none";
          }
          evalution.style.display = "none";
          arr[2].style.display = "block";
          break;
        default:
          for (let i = 0; i < arr.length; i++) {
            arr[i].style.display = "none";
          }
          evalution.style.display = "none";
          arr[3].style.display = "block";
          break;
      }
    };
  }


  // var aname = window.location.href;
  // var getstr = aname.substr(aname.indexOf('?')+1);
  // getstr=parseInt(getstr);
  // console.log(getstr);
  // list_1[getstr].className="active";

  // 评审管理内导航切换
  let list = document.querySelectorAll(".cr-nav-icon"),
      arrM = document.querySelectorAll("#evaManage .cr-nav .cr-nav-icon");
      arrm = new Array();
      arrm[0] = arrM[0];
      arrm[1] = arrM[1];
      arrm[2] = arrM[2];
      arrm[3] = arrM[3];
      console.log(arrm);



  for (let i = 0; i < list.length; i++) {
    list[i].onclick = function() {
      for (let i = 0; i < list.length; i++) {
        list[i].className = "cr-nav-icon";
      }
      list[i].className = "cr-nav-icon active";
      console.log(i);
    };
  }

  //用户名注销
  let on = document.getElementById("userName"),
    show = document.querySelector("#userName li");
  on.onmouseover = function() {
    show.style.display = "block";
  };
  on.onmouseleave = function() {
    show.style.display = "none";
  };

  //信息管理+修改密码切换
  let list_2 = document.querySelectorAll("#user .nav li"),
    infoManage = document.querySelector("#user #infoManage"),
    changeBox = document.querySelector("#user #changeBox");

  for (let i = 0; i < list_2.length; i++) {
    list_2[i].onclick = function() {
      for (let i = 0; i < list_2.length; i++) {
        list_2[i].className = "";
      }
      list_2[i].className = "active";
      if (i == 0) {
        infoManage.style.display = "block";
        changeBox.style.display = "none";
      } else {
        infoManage.style.display = "none";
        changeBox.style.display = "block";
      }
    };
  }

   // 个人信息编辑保存
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
    ocptype = document.getElementById("form-cptype-front"),
    table2 = document.getElementById("table2");
  $(".personal-button-left").click(function () {
    table2.style.display = "block";
  });
  $(".personal-button-right").click(function() {
    table2.style.display = "none";
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


};





 