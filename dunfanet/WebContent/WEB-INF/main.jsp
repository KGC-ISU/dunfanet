<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="view/include/head.jsp" />
<body>

	<jsp:include page="view/include/header.jsp" />

	<div class="container">
		<div class="wrap">
			<section class="info">
				<div class="top_info">
					<div class="box">
						<div class="img">
							<img src="./images/login.jpg">
						</div>
					</div>
					<div class="box">
						<div class="nav_info">
							<b>회원이신가요?</b>
							<p>로그인 후</p>
							<p>자신만의 즐겨찾기를 이용해보세요!</p>
							<a href="#">로그인</a>
						</div>
					</div>
				</div>

				<div class="top_info">
					<div class="box">
						<div class="img">
							<img src="./images/register.jpg">
						</div>
					</div>
					<div class="box">
						<div class="nav_info">
							<b>아직 회원이 아니신가요?</b>
							<p>간단한 회원가입 후</p>
							<p>자신만의 즐겨찾기를 만들어보세요!</p>
							<a href="#">회원가입</a>
						</div>
					</div>
				</div>

				<div class="bottom_info">
					<div class="box">
						<div class="b_img">
							<img src="./images/search.jpg">
						</div>
					</div>
					<div class="box">
						<div class="b_nav_info">
							<b>간편한 검색!</b>
							<p>캐릭터 정보를 검색해보세요!</p>
							<a href="/char">캐릭터 검색</a>
						</div>
					</div>
				</div>
				<div class="bottom_info">
					<div class="box">
						<div class="b_img">
							<img src="./images/search.jpg">
						</div>
					</div>
					<div class="box">
						<div class="b_nav_info">
							<b>편리한 검색!</b>
							<p>아이템 정보를 검색해보세요!</p>
							<a href="/item">아이템 검색</a>
						</div>
					</div>
				</div>
				<div class="bottom_info">
					<div class="box">
						<div class="b_img">
							<img src="./images/bookmark.jpg">
						</div>
					</div>
					<div class="box">
						<div class="b_nav_info">
							<b>즐겨찾기!</b>
							<p>자신만의 리스트를 확인해보세요!</p>
							<a href="/asd">즐겨찾기 목록</a>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<footer>
		<p>
			본 사이트는 소량의 <b>Bootstrap</b> 과 <b>Neople Open Api</b> 만을 사용하여 개발되었습니다.
		</p>
		<p>이메일 : overnice2020@gmail.com</p>
	</footer>
</body>
</html>