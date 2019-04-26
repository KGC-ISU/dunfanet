<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="../include/head.jsp" />
<body>
	<jsp:include page="../include/header.jsp" />

	<!-- 상단이동 -->
	<div class="gotoHead">TOP</div>

	<c:set value="true" var="item_status" />

	<c:forEach items="${itemList}">
		<c:set value="false" var="item_status" />
	</c:forEach>

	<div class="container">
		<c:choose>
			<c:when test="${item_status}">
				<div class="wrap">
					<p class="notfound">
						"<%=request.getParameter("name")%>" 의 검색결과가 존재하지않습니다.
					</p>
					<div class="search_box">
						<div class="search_info">
							<h2>장비 아이템 검색</h2>
						</div>
						<div class="middle">
							<select name="level" class="select" form="charForm">
								<option selected value="70">전체</option>
								<option value="70">70Lv</option>
								<option value="75">75Lv</option>
								<option value="80">80Lv</option>
								<option value="85">85Lv</option>
								<option value="90">90Lv</option>
								<option value="95">95Lv</option>
							</select> 
							<form class="item_form">
								<input class="rs" type="text" name="name" placeholder="아이템 이름을 입력해주세요."> 
								<input class="item_rs_btn" type="submit" value="검색">
							</form>
						</div>
						<div class="search_info">
							<h3 class="bottom_h3">
								최소 검색 레벨과 장비 아이템 이름을 정확히 입력하시면 빠르게 찾을 수 있습니다!<br />(85Lv로 설정 할
								시 85Lv ~ 95 Lv 범위로 검색됩니다)
							</h3>
						</div>
					</div>
				</div>
			</c:when>

			<c:otherwise>
				<div class="center">
					<h2 class="keyword_info">
						"<%=request.getParameter("name")%>" 의 검색결과 입니다.
					</h2>
					<div class="scroll">
						<c:forEach items="${itemList}" var="items">
							<c:if
								test="${items.itemType != '스태커블' && items.itemType != '아바타' && items.itemType != '크리쳐'}">
								<div class="items"
									onclick="location.href='/item/info?itemid=${items.itemId}';">
									<div class="item_img_box"
										style="background-image:url(https://img-api.neople.co.kr/df/items/${items.itemId});">
									</div>
									<p>${items.itemName}</p>
									<span class="itemRarity">${items.itemRarity}</span> <span
										class="item_level">${items.itemAvailableLevel}Lv</span>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<footer class="foot">
		<p>
			본 사이트는 소량의 <b>Bootstrap</b> 과 <b>Neople Open Api</b> 만을 사용하여 개발되었습니다.
		</p>
	</footer>
</body>
</html>