<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트V1-login</title>
        <link rel="stylesheet" href="/css/base.css">
        <style>
            #loginfrm { width: 300px; margin: 120px auto }
            #loginfrm label { display: inline-block; 
                    width: 115px; text-align: right;
                    font-weight: bold }
            #loginfrm div { padding-bottom: 10px; }
            input, button { padding: 5px }
            button { margin-left: 120px; width: 75px; }
        </style>
    </head>
    <body>
        <div id="wrap">
        <%@ include file="/layout/header.jsp" %>
        <div id="container">
            <h2>로그인</h2>
            <form name="loginfrm" id="loginfrm" method="post">
                <div><label for="userid">아이디</label>
                    <input type="text" name="userid" id="userid">
                </div>

                <div><label for="passwd">비밀번호</label>
                    <input type="password" name="passwd" id="passwd">
                </div>

                <div><button type="button">로그인</button></div>
            </form>
        </div>
        <%@ include file="/layout/footer.jsp" %>
        </div>
    </body>
</html>
