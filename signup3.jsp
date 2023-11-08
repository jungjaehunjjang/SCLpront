
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #container{
            border: solid 1px red;
            text-align: left;
            margin: auto;
            width: 200px;
            height: auto;
            
            
        }
    </style>
</head>
<body>


    <!--   회원가입 만들기 -->
<form id="container">
    <div id="box" class="titlebox">
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