<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <style>
      .outer {
        width: 60%;
        min-width: 650px;
        background: rgb(248, 249, 250);
        box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
        margin: auto;
        margin-top: 70px;
        margin-bottom: 70px;
      }

      #joinForm {
        width: 600px;
        margin: auto;
        padding: 10px;
      }

      #joinForm h1 {
        text-align: center;
      }

      .input_area {
        border: solid 1px #dadada;
        padding: 10px 10px 14px 10px;
        background: white;
      }

      .btnArea {
        text-align: center;
        padding: 50px;
      }

      button {
        width: 100px;
        height: 35px;
        border: 0px;
        color: white;
        background: #282a35;
        margin: 5px;
      }
    </style>
  </head>

  <body>
    <div class="outer">
      <div id="joinInfoArea">
        <form
          id="joinForm"
          method="post"
          onsubmit="return validate();"
        >
          <h1>회원 정보 수정</h1>

          <h4>아이디</h4>
          <span class="id"
            ><input
              class="input_area"
              type="text"
              maxlength="13"
              name="userId"
              value=""
              readonly
          /></span>

          <h4>비밀번호</h4>
          <span class="pw"
            ><input
              class="input_area"
              type="password"
              maxlength="15"
              name="userPwd"
              value=""
          /></span>
          <button
            id="pwchange"
            type="button"
          >
            비밀번호 변경
          </button>

          <h4>이름</h4>
          <span class="name"
            ><input
              class="input_area"
              type="text"
              maxlength="5"
              name="userName"
              value=""
              readonly
          /></span>

          <h4>휴대폰번호</h4>
          <span class="phone"
            ><input
              class="input_area"
              type="tel"
              maxlength="11"
              name="phone"
              placeholder=""
              value=""
          /></span>

          <h4>이메일</h4>
          <span class="email"
            ><input
              class="input_area"
              type="email"
              name="email"
              value=""
          /></span>

          <div class="btnArea">
            <button id="change">변경하기</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
