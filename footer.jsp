<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
/**** 푸터 영역 끝 ****/
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

/*  푸터 영역 끝*/
</style>



<footer id="footer">
    <div class="foot_guide">
        <ul class="foot_menu">
            <li><a href="">개인정보취급방침</a></li>
            <li><a href="">웹회원 이용약관</a></li>
            <li><a href="">책임한계와 법적고지</a></li>
            <li><a href="">이메일 무단수집 거부</a></li>
        </ul>
        <address>
            서울특별시 
            대표이사: 유훈모
            고객상담: 1234-5678
            FAX: 02-1234-5678 (평일 09:00~17:00)
        </address>
        <p class="copyright">
            Copyright (c) 2023 HM Culture.
        </p>
    </div>
</footer>
<!--  하단영역 끝 -->