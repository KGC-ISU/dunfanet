<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<jsp:include page="../include/head.jsp" />

<body>

	<jsp:include page="../include/header.jsp" />

	<div class="container">
		<div class="wrap">
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
	</div>
	<footer class="foot">
		<p>본 사이트는 소량의 <b>Bootstrap</b> 과 <b>Neople Open Api</b> 만을 사용하여 개발되었습니다.</p>
	</footer> 
</body>
</html>