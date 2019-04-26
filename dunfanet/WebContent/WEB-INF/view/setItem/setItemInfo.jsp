<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<jsp:include page="../include/head.jsp" />

<body>

<%
	//치환 변수 선언
	pageContext.setAttribute("cr", "\r"); //Space
	pageContext.setAttribute("cn", "\n"); //Enter
	pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
	pageContext.setAttribute("br", "<br/>"); //br 태그
%>

	<jsp:include page="../include/header.jsp" />
	<div class="gotoHead">TOP</div>

	<div class="container">
		<div class="center">
			<h3 style="margin-bottom: 20px;">아이템 박스를 클릭하시면 아이템 상세정보로 이동 가능합니다.</h3>
			<div class="setCenter">
				<c:set var="set" value="${setItemInfos}" />
				<c:forEach items="${set.setItems}" var="setitems">
					<div class="setItemList"
						onclick="location.href='/item/info?itemid=${setitems.itemId}';">
						<span class="slotName">${setitems.slotName}</span> <img
							src="https://img-api.neople.co.kr/df/items/${setitems.itemId}"
							width="50px" height="50px"> <span class="itemName">${setitems.itemName}</span>
					</div>
				</c:forEach>
			</div>
			<div class="optiondiv">
				<h3 style="border-bottom: 1.5px solid rgba(0, 0, 0, 0.4); width: 400px; text-align: center; padding: 10px;">세트 옵션</h3>
				<div class="setOptionBox">
				<c:forEach items="${set.setItemOption}" var="sop">
					<div class="setOption">
						<span class="opno">${sop.optionNo}세트 효과</span> 
						<span class="sopExplain">${fn:replace(sop.explain, cn, br)}</span>
						<c:forEach items="${sop.status}" var="sopStat">
							<span class="sopStatus">${sopStat.name} +${sopStat.value}</span>
						</c:forEach>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<footer class="foot">
		<p>
			본 사이트는 소량의 <b>Bootstrap</b> 과 <b>Neople Open Api</b> 만을 사용하여 개발되었습니다.
		</p>
	</footer>
</body>
</html>