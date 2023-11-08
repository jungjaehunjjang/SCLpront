<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <title>로그인 페이지</title>
    <style>
      /* body*/
      #allbody {
        font-family: 'Arial', sans-serif;
        background-color: #f2f2f2;
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-image: url('img/st2.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
      }

      .login-container {
        opacity: 0.9;
        padding: 20px 40px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: left;
        background-color: #333;
      }

      h2 {
        font-size: 24px;
        margin-bottom: 20px;
        color: white;
      }

      .form-group {
        margin: 10px 0;
      }

      label {
        display: block;
        font-weight: bold;
        color: white;
      }

      input {
        width: 190px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        margin: 0px 1px;
      }

      .login-button {
        background-color: rgba(255, 255, 255, 0.5);
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
        border-radius: 5px;
      }

      .login-button:hover {
        background-color: rgba(255, 255, 255, 0.5);
      }

      .register-link {
        margin-top: 10px;
        color: white;
      }

      a {
        text-decoration: none;
        font-weight: bold;
        color: white;
      }

      /* body 끝 */
    </style>
    <link
      rel="stylesheet"
      href=""
    />
  </head>
  <body>
    <form id="allbody">
      <!-- body 시작 -->
      <div class="login-container">
        <h2>로그인</h2>
        <form>
          <div class="form-group">
            <label for="username"> User ID</label>
            <input
              type="text"
              id="username"
              name="username"
              required
            />
          </div>
          <div class="form-group">
            <label for="password"> Password</label>
            <input
              type="password"
              id="password"
              name="password"
              required
            />
          </div>
          <button
            type="submit"
            class="login-button"
          >
            로그인
          </button>
        </form>
        <p class="register-link">
          계정이 없으신가요? <a href="signUp.jsp">회원 가입</a>
        </p>
      </div>
    </form>
  </body>
</html>
