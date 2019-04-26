<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<jsp:include page="../include/head.jsp" />
	
<body>

	<jsp:include page="../include/header.jsp" />
	
	<!-- 상단이동  -->
	<div class="gotoHead">TOP</div>

	<c:set value="true" var="setitem_status" />
	
	<c:forEach items="${setItemList}">
		<c:set value="false" var="setitem_status" />
	</c:forEach>

	<div class="container">
		<c:choose>
			<c:when test="${setitem_status}">
				<div class="wrap">
					<p class="notfound">
						"<%=request.getParameter("name")%>" 의 검색결과가 존재하지않습니다.
					</p>
					<div class="search_box">
						<div class="search_info">
							<h2>세트아이템 검색</h2>
						</div>
						<div class="middle">
							<form class="setitem_form">
								<input class="rs" type="text" name="name" placeholder="세트명을 입력해주세요">
								<input class="setitem_rs_btn" type="submit" value="검색">
							</form>
						</div>
					</div>
				</div>
			</c:when>
			
			<c:otherwise>
				<div class="center">
					<h2 class="keyword_info">
						"<%=request.getParameter("name")%>" 의 검색결과 입니다.
					</h2>
					<div class="setitemscroll">
						<c:forEach items="${setItemList}" var="setitems">
							<div class="setitems" onclick="location.href='/setitem/info?setitemid=${setitems.setItemId}';">
								<span>${setitems.setItemName}</span>
							</div>
						</c:forEach>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<footer class="foot">
		<p>
			본 사이트는 소량의 <b>Bootstrap</b> 과 <b>Neople Open Api</b> 만을 사용하여
			개발되었습니다.
		</p>
	</footer>
</body>
</html>