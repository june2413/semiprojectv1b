<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8"/>

<fmt:setBundle basename="june.jdbc"/>
<fmt:message key="url" var="url" />
<fmt:message key="drv" var="drv" />
<fmt:message key="usr" var="usr" />
<fmt:message key="pwd" var="pwd" />
 
 <sql:setDataSource url="${url}" driver="${drv}"
  user="${usr}" password="${pwd}" var="mariadb" />
  
 <sql:update dataSource="${mariadb}" var="cnt">
  insert into board (title, userid, contents)
  values (?, ?, ?)
  <sql:param value="${param.title}"/>
  <sql:param value="${param.userid}"/>
  <sql:param value="${param.contents}"/>
 </sql:update> 
  
<c:if test="${ cnt gt 0 }">
	<c:redirect url="/board/list.jsp"/>
<h2 style="color:red">게시글 작성!!</h2>
</c:if>

<c:if test="${ cnt eq 0 }">
	<script>history.go(-1);</script>
</c:if>



