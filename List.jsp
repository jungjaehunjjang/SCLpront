<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <title>Document</title>
  </head>
  <style>
    table {
      border-collapse: collapse;
      border-spacing: 0;
    }
    section.notice {
      padding: 80px 0;
    }

    .page-title {
      margin-bottom: 60px;
    }
    .page-title h3 {
      font-size: 28px;
      color: #333333;
      font-weight: 400;
      text-align: center;
    }

    #board-search .search-window {
      padding: 15px 0;
      background-color: #f9f7f9;
      /* border: 1px solid red; */
      height: 60px;
    }
    #board-search .search-window .search-wrap {
      position: relative;
      /* padding-right: 124px; */
      /* margin-right: 0; */
      padding-right: 0;
      width: 30%;
      max-width: 564px;
      /* border: 1px solid red; */
      float: right;
    }
    #board-search .search-window .search-wrap input {
      height: 40px;
      width: 100%;
      font-size: 14px;
      padding: 7px 14px;
      border: 1px solid #ccc;
    }
    #board-search .search-window .search-wrap input:focus {
      border-color: #333;
      outline: 0;
      border-width: 1px;
    }
    #board-search .search-window .search-wrap .btn {
      position: absolute;
      right: 0;
      top: 0;
      bottom: 0;
      width: 80px;
      padding: 0;
      font-size: 16px;
    }
    #board-search .search-window .search-wrap .choice {
      width: 80px;
      height: 40px;
      font-size: 20px;
      position: absolute;
      margin-bottom: 60px;
      margin-left: -400px;
      /* border: 1px solid blue; */
      display: inline-block;
      border-color: #ccc;
    }

    .board-table {
      font-size: 13px;
      width: 100%;
      border-top: 1px solid #ccc;
      border-bottom: 1px solid #ccc;
    }

    .board-table a {
      color: #333;
      display: inline-block;
      line-height: 1.4;
      word-break: break-all;
      vertical-align: middle;
    }
    .board-table a:hover {
      text-decoration: underline;
    }
    .board-table th {
      text-align: center;
    }

    .board-table .th-num {
      width: 100px;
      text-align: center;
    }

    .board-table .th-date {
      width: 200px;
    }

    .board-table th,
    .board-table td {
      padding: 14px 0;
    }

    .board-table tbody td {
      border-top: 1px solid #e7e7e7;
      text-align: center;
    }

    .board-table tbody th {
      padding-left: 28px;
      padding-right: 14px;
      border-top: 1px solid #e7e7e7;
      text-align: left;
    }

    .board-table tbody th p {
      display: none;
    }

    .btn {
      display: inline-block;
      padding: 0 30px;
      font-size: 15px;
      font-weight: 400;
      background: transparent;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      border: 1px solid transparent;
      text-transform: uppercase;
      -webkit-border-radius: 0;
      -moz-border-radius: 0;
      border-radius: 0;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
    }

    .btn-dark {
      background: #555;
      color: #fff;
    }

    .btn-dark:hover,
    .btn-dark:focus {
      background: #373737;
      border-color: #373737;
      color: #fff;
    }

    .btn-dark {
      background: #555;
      color: #fff;
    }

    .btn-dark:hover,
    .btn-dark:focus {
      background: #373737;
      border-color: #373737;
      color: #fff;
    }

    /* reset */

    * {
      list-style: none;
      text-decoration: none;
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }
    .clearfix:after {
      content: '';
      display: block;
      clear: both;
    }
    .container {
      width: 1100px;
      margin: 0 auto;
    }
    .blind {
      position: absolute;
      overflow: hidden;
      clip: rect(0 0 0 0);
      margin: -1px;
      width: 1px;
      height: 1px;
    }
  </style>

  <body>
    <section class="notice">
      <div class="page-title">
        <div class="container">
          <h3>게시판</h3>
        </div>
      </div>

      <!-- board 검색창 -->
      <div id="board-search">
        <div class="container">
          <div class="search-window">
            <form action="">
              <div class="search-wrap">
                <label
                  for="search"
                  class="blind"
                ></label>
                <input
                  id="search"
                  type="search"
                  name=""
                  placeholder="검색어를 입력해주세요."
                  value=""
                />
                <button
                  type="submit"
                  class="btn btn-dark"
                >
                  검색
                </button>
                <select class="choice">
                  <option>제목</option>
                  <option>내용</option>
                  <option>작성자</option>
                  <option>제목+내용</option>
                </select>
              </div>
            </form>
          </div>
        </div>
      </div>

      <!-- board 리스트 영역 -->
      <div id="board-list">
        <div class="container">
          <table class="board-table">
            <thead>
              <tr>
                <th
                  scope="col"
                  class="th-num"
                >
                  번호
                </th>
                <th
                  scope="col"
                  class="th-title"
                >
                  제목
                </th>
                <th
                  scope="col"
                  class="th-date"
                >
                  등록일
                </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>5</td>
                <th>
                  <a href="#!"></a>
                  <p>테스트</p>
                </th>
                <td></td>
              </tr>

              <tr>
                <td>4</td>
                <th><a href="#!"></a></th>
                <td></td>
              </tr>

              <tr>
                <td>3</td>
                <th><a href="#!"></a></th>
                <td></td>
              </tr>
              <tr>
                <td>2</td>
                <th><a href="#!"></a></th>
                <td></td>
              </tr>
              <tr>
                <td>1</td>
                <th><a href="#!"></a></th>
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
