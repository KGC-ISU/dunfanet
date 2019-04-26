<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<jsp:include page="../include/head.jsp" />

<body>

	<jsp:include page="../include/header.jsp" />


	<div class="container">
		<div class="wrap">
			<div class="search_box">
				<div class="search_info">
					<h2>캐릭터 검색</h2>
				</div>
				<div class="middle">
					<select name="server" class="select" form="charForm">
						<option selected value="all">전체</option>
						<option value="cain">카인</option>
						<option value="diregie">디레지에</option>
						<option value="siroco">시로코</option>
						<option value="prey">프레이</option>
						<option value="casillas">카시야스</option>
						<option value="hilder">힐더</option>
						<option value="anton">안톤</option>
						<option value="bakal">바칼</option>
					</select>
					<form class="char_form">
						<input class="rs" type="text" name="name" placeholder="닉네임을 입력해주세요.">
						<input class="rs_btn" type="submit" value="검색">
					</form>
				</div>
				<div class="search_info">
					<h3 class="bottom_h3">서버와 캐릭터이름을 정확히 입력하시면 빠르게 찾을 수 있습니다!</h3>
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