<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<jsp:include page="../include/head.jsp" />

<body>

	<jsp:include page="../include/header.jsp" />

	<div class="gotoHead">TOP</div>

	<c:set value="true" var="char_status" />

	<c:if test="${char_status}">
		<c:forEach items="${cain}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${diregie}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${siroco}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${prey}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${casillas}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${hilder}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${anton}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<c:if test="${char_status}">
		<c:forEach items="${bakal}">
			<c:set value="false" var="char_status" />
		</c:forEach>
	</c:if>

	<div class="container">
		<c:choose>
			<c:when test="${server == 'all'}">
				<c:choose>
					<c:when test="${char_status}">
						<div class="wrap">
							<p class="notfound">
								"<%=request.getParameter("name")%>" 의 검색결과가 존재하지않습니다.
							</p>
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
					</c:when>

					<c:otherwise>
						<div class="center">
							<h2 class="keyword_info">
								"<%=request.getParameter("name")%>" 의 검색결과 입니다.
							</h2>
							<div class="scroll">
								<c:forEach items="${cain}" var="cain">
									<c:if test="${cain.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=cain&charid=${cain.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/cain/characters/${cain.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${cain.characterName}</span>
											<span class="server_name">${cain.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${diregie}" var="diregie">
									<c:if test="${diregie.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=diregie&charid=${diregie.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/diregie/characters/${diregie.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${diregie.characterName}</span>
											<span class="server_name">${diregie.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${siroco}" var="siroco">
									<c:if test="${siroco.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=siroco&charid=${siroco.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/siroco/characters/${siroco.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${siroco.characterName}</span>
											<span class="server_name">${siroco.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${prey}" var="prey">
									<c:if test="${prey.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=prey&charid=${prey.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/prey/characters/${prey.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${prey.characterName}</span>
											<span class="server_name">${prey.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${casillas}" var="casillas">
									<c:if test="${casillas.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=casillas&charid=${casillas.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/casillas/characters/${casillas.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${casillas.characterName}</span>
											<span class="server_name">${casillas.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${hilder}" var="hilder">
									<c:if test="${hilder.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=hilder&charid=${hilder.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/hilder/characters/${hilder.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${hilder.characterName}</span>
											<span class="server_name">${hilder.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${anton}" var="anton">
									<c:if test="${anton.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=anton&charid=${anton.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/anton/characters/${anton.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${anton.characterName}</span>
											<span class="server_name">${anton.server}</span>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${bakal}" var="bakal">
									<c:if test="${bakal.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=bakal&charid=${bakal.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/bakal/characters/${bakal.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${bakal.characterName}</span>
											<span class="server_name">${bakal.server}</span>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</c:otherwise>
				</c:choose>

			</c:when>
			<c:otherwise>
				<%
					int nullCk = 0;
				%>
				<c:set var="forCk" value="true" />
				<c:forEach items="${chars}" var="items">
					<c:if test="${forCk}">
						<c:if test="${items.level >= 90}">
							<%
								nullCk++;
							%>
							<c:set var="forCk" value="false" />
						</c:if>
					</c:if>
				</c:forEach>
				<%
					request.setAttribute("nullCk", nullCk);
				%>
				<c:choose>
					<c:when test="${nullCk == 0}">
						<div class="wrap">
							<c:choose>
								<c:when test="${not empty nameNull}">
									<p class="notfound">닉네임을 입력해주세요</p>
								</c:when>

								<c:when test="${empty notFoundChar}">
									<p class="notfound">
										"<%=request.getParameter("name")%>" 의 검색결과가 존재하지않습니다.
									</p>
								</c:when>

								<c:otherwise>
									<p class="notfound">"${notFoundChar}" 의 검색결과가 존재하지않습니다.</p>
								</c:otherwise>
							</c:choose>
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
									<form action="/char/result" id="charForm" method="post">
										<input class="rs" type="text" name="name"
											placeholder="닉네임을 입력해주세요."> <input class="rs_btn"
											type="submit" value="검색">
									</form>

								</div>
								<div class="search_info">
									<h3 class="bottom_h3">서버와 캐릭터이름을 정확히 입력하시면 빠르게 찾을 수 있습니다!</h3>
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
								<c:forEach items="${chars}" var="items">
									<c:if test="${items.level >= 90}">
										<div class="chars"
											onclick="location.href='/char/info?server=<%= request.getParameter("server") %>&charid=${items.characterId}';">
											<img
												src="https://img-api.neople.co.kr/df/servers/<%= request.getParameter("server") %>/characters/${items.characterId}?zoom=%3Czoom%3E"
												alt="캐릭터"> <span class="char_name">${items.characterName}</span>
											<span class="server_name">${korServer}</span>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
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