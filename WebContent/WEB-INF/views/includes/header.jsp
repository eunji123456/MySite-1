<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.UserVo" %>

<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
	
	/* String name = authUser.getName(); */

%>

<div id="header">
	<h1>MySite</h1>
	<ul>
		<!-- 로그인 전 -->
		<%
			if(authUser == null) {
		%>
		<li><a href="/mysite/user?a=loginform">로그인</a></li>
		<li><a href="/mysite/user?a=joinform">회원가입</a></li>
							<%
							} else {
							%>
		<!-- 로그인 후 -->

		<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
		<li><a href="/mysite/user?a=logout">로그아웃</a></li>
		<li><%=authUser.getName()%>님 안녕하세요^^;</li>
			<%} %>
	</ul>
</div>
<!-- /header -->