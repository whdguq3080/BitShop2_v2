<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <%=application.getContextPath()%> --%>
<link rel="stylesheet" href="${context}/resources/css/style.css "/>
</head>
<body>
	<table id="wrapper">
		<tr>
				<td colspan="2">
					<jsp:include page = "../home/header.jsp"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page = "../home/navi-bar.jsp"/>
			</td>
		</tr>
		<tr style="height: 300px">
			<td>
			<c:if test="${dest eq 'join-form'}">
				<jsp:include page = "side-join.jsp"/>
			</c:if>
			<jsp:include page = "side-menu.jsp"/>
			</td>
			<td>
			<c:choose>
			<c:when test="dest eq 'NONE'">
			
				</c:when>
				<c:when test="dest eq 'join-form'">
					<jsp:include page="join-form.jsp"/>
				</c:when>
				<c:when test="dest eq 'member-detail'">
					<jsp:include page="member-detail.jsp"/>
				</c:when>
				<c:when test="dest eq 'member-update'">
					<jsp:include page="member-update.jsp"/>
				</c:when>
			</c:choose>
			</td>
		</tr>
	</table>
</body>
</html>