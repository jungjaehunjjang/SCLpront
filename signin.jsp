<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
     <style>
* {padding:0;margin:0;}
input[id="menuicon"] {display:none;}

/* 헤더 */
header {width:100%;background:#aaa;}
header > div {position:relative;width:1200px;height:80px;margin:0 auto;}

/* 각 영역의 라벨(중앙정렬) */
.area_desc {position:absolute;top:900%;left:50%;transform:translate(-50%,-50%);font-size:20px;}

/* 매뉴버튼 */
.menubtn {display:block;width:50px;height:50px;position:absolute;top:50%;right:10px;transform:translateY(-50%);cursor:pointer;}
.menubtn span {display:block;position:absolute;width:80%;height:5px;border-radius:30px;background:#222;transition:all .35s;}
.menubtn span:nth-child(1) {top:20%;left:50%;transform:translateX(-50%);}
.menubtn span:nth-child(2) {top:50%;left:50%;transform:translate(-50%,-50%);} 
.menubtn span:nth-child(3) {bottom:20%;left:50%;transform:translateX(-50%);}

/* 컨텐츠 영역 */
.container {width:100%;height:100%;position:relative;}
.container .contents {width:1200px;margin:0 auto;height:100%;border:1px solid #eee;background:#f1f1f1;}
.container .sidebar {position:fixed;top:0;right:-300px;width:300px;height:100%;background:#666;z-index:30;transition:.35s;}

/* 체크 변화값 */
input[id="menuicon"]:checked ~ header .menubtn {z-index:2;}
input[id="menuicon"]:checked ~ header .menubtn span {background:#fff;}
input[id="menuicon"]:checked ~ header .menubtn span:nth-child(1) {top:50%;left:50%;transform:translate(-50%,-50%) rotate(135deg);}
input[id="menuicon"]:checked ~ header .menubtn span:nth-child(2) {left:50%;transform:translate(-50%,-50%) scale(2);opacity:0;}
input[id="menuicon"]:checked ~ header .menubtn span:nth-child(3) {bottom:50%;left:50%;transform:translate(-50%,50%) rotate(-135deg);}
input[id="menuicon"]:checked ~ .container .sidebar {right:0;}

.menubtn {background:url('./img/btn_bg.png') 0 0 no-repeat;}
input[id="menuicon"]:checked ~ header .menubtn {background:url('./img/btn_bg.png') -50px 0 no-repeat;}

.navi>li{
    float: left;
    list-style-type: none;
    margin-left: 10px;
    
}



/**** 푸터영역 ****/
#footer{
    width: auto;
    background: #eee;
    margin-top: 80px;
    padding: 40px 0px 50px;
}
#footer .foot_guide{
    width: 900px;
    margin: auto;
}
#footer .foot_menu{
    overflow: hidden;
    padding-bottom: 20px;
}
#footer .foot_menu li{
    display: inline-block;
    padding: 0 10px;
    border-left: 1px solid #999;
}


#footer .foot_menu li:first-child{
    border-left: none;
    padding-left: 0;
}
#footer .foot_menu li a{
    color: #777;
    font-size: 12px;
    font-weight: bold;
}
#footer .foot_menu li a:hover{
    color: #ff4f00
}

#footer address{
    font-size: 12px;
    color:#777;
    padding-bottom: 7px;
}
#footer .copyright{ font-size:  11px; }

/* 푸터 영역 끝 */

/*  회원가입 */

.field{
   
    background-color: #aaa;
    font-size: large;
    font-weight: bold;
    text-align: left;
    
}

#container{
  text-align: left;
  margin: 100px;
  
}
</style>


</head>
<body>
   
  <input type="checkbox" id="menuicon">
  <header>
      <div>
          <ul class="navi">
              <li class="logo"><a>상단로고영역</a></li>
              <li><a href="">매뉴1</a></li>
              <li><a href="">매뉴2</a></li>
              <li><a href="">매뉴3</a></li>
              <li><a href="">매뉴4</a></li>
              <li><a href="">매뉴5</a></li>
          </ul>
          <label for="menuicon" class="menubtn">
              <span></span>
              <span></span>
              <span></span>
          </label>
      </div>
  </header>

       <!-- 콘텐츠 영역(map)  -->
  <div class="container">
      <div class="contents">
          <span class="area_desc"></span>
      </div>
      <!-- 콘텐츠 영역 끝 (map)-->

      <!-- 콘텐츠 영역(사이드 바)-->
      <div class="sidebar">
          <span class="area_desc">SIDEBAR 영역</span>
      </div> 
      <!-- 콘텐츠 영역 끝(사이드 바)-->
  </div>

  
  <!--   회원가입 만들기 -->
<form id="container">
    <div id="box">
        <h2> 회원가입 </h2>
    <div class="signin">
        <!-- 맨위 로고(이미지) -->

        <img class="signin-logo" src="#">
        <!-- 회원가입 -->



        <div class="field">
            <b> 아이디 </b>
            <span class="placeghold-text"><input type="text"></span>
        </div>
        <!-- 아이디 중복확인 -->

        <div class="field">
            <button type="button" class="btn btn-primary" id="idCheckBtn">아이디 중복체크</button>
        </div>

        <div class="field">
            <b> 비밀번호 </b>
            <input class="user_pw" type="password">
        </div>
        <div class="field">
            <label for="password-confrim">비밀번호 확인</label>
            <input type="password" class="user_pw" placeholder="비밀번호를 확인해주세요.">
            <span id="pw"></span>
        </div>
        </div>
        <div class="field">
            <b> 이름 </b>
            <input type="text">
        </div>

        <div class="field">
            <label for="hp">휴대폰번호</label>
            <div class="input-group">
                <select name="userPhone1" class="form-control phone1" id="userPhone1">
                    <option>010</option>
                    <option>011</option>
                    <option>017</option>
                    <option>018</option>
                </select>
            <input type="text" name="userPhone2" class="form-control phone2" id="userPhone2" placeholder="휴대폰번호를 입력하세요.">
        </div>
        <div class="field">
            <label for="email">이메일</label><br>
            <div class="input-group">
                <input type="text" name="userEmail1" class="form-control" id="userEmail1" placeholder="이메일">
                <select name="userEmail2" class="form-control" id="userEmail2">
                    <option>@naver.com</option>
                    <option>@daum.net</option>
                    <option>@gmail.com</option>
                </select>
                </div>
    </div>
</form>
    




</body>
</html>

<%@ include file="../S_CL/footer.jsp" %>