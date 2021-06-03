<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${empty sessionScope.userid}">
<script>alert('로그인 하세요!');
		location.href='login.jsp';
		<!--보안설정 로그인하지 않 은 경우 볼수 없도록-->
</script>
</c:if>

<fmt:setBundle basename="june.jdbc"/>
<fmt:message key="url" var="url" />
<fmt:message key="drv" var="drv" />
<fmt:message key="usr" var="usr" />
<fmt:message key="pwd" var="pwd" />
 
 <sql:setDataSource url="${url}" driver="${drv}"
  user="${usr}" password="${pwd}" var="mariadb" />
 
<sql:query var="rs" dataSource="${mariadb}"> 
select name, email, joindate from member
where userid= ?
<sql:param value="${sessionScope.userid}"/>
</sql:query>

<c:forEach var="row" items="${rs.rows}">
	<c:set var="name" value="${row.name}"/>
	<c:set var="email" value="${row.email}"/>
	<c:set var="joindate" value="${row.joindate}"/>
</c:forEach>

<!doctype html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트V1-myinfo</title>
        <link rel="stylesheet" href="/css/base.css">
        <style>
            #myinfo { width: 300px; margin: 125px auto; }
            #myinfo div { padding-bottom: 5px; }
            .label { display:inline-block; width: 120px;
                  text-align: right; font-weight: bold;
                  padding-right: 7px }            
        </style>
    </head>
    <body>
        <div id="wrap">
                <%@ include file="/layout/header.jsp" %>

        <div id="container">
            <h2>회원정보</h2>
            <div id="myinfo">
                <div><span class="label">아이디</span>
                     <span>${sessionScope.userid}</span></div>
                <div><span class="label">이름</span>
                     <span>${name}</span></div>
                <div><span class="label">이메일</span>
                     <span>${email}</span></div>
                <div><span class="label">가입일</span>
                     <span>${joindate}</span></div>
            </div>
        </div>
                <%@ include file="/layout/footer.jsp" %>

        </div>
    </body>
</html>

<!-- 
	1.로그인성공시 회원정보가 myinfo.jsp에 출력되도록 작성
	2. 상단메뉴의 로그인을 로그아웃으로 변경
	2b. 로그아웃한경우 로그아웃을 로그인으로 변경

 -->
