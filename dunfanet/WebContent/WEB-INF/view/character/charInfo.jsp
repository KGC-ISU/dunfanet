<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<jsp:include page="../include/head.jsp" />
<body>

	<jsp:include page="../include/header.jsp" />

	<c:set var="items" value="${infos}" />
	<div class="container">
		<div class="switchbtn">
			<ul>
				<li id="first" class="switch_select">장비창</li>
				<li id="second">아바타</li>
				<li id="third">스탯</li>
				<li id="forth">버프강화</li>
			</ul>
		</div>

		<div class="infowrap">
			<div class="infobox">
				<div class="infos">
					<div class="charitems">
						<div class="charitemsimg">
							<div class="imgsalign">
								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '머리어깨'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="머리어꺠">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.PNG" alt="머리어깨">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '상의'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="상의">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="상의">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>

								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '하의'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="하의">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="하의">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '허리'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="허리">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="허리">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>

								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '신발'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="신발">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="신발">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
							</div>
						</div>
						<div class="charimg">
							<img
								src="https://img-api.neople.co.kr/df/servers/<%= request.getParameter("server") %>/characters/${items.characterId}?zoom=2"
								alt="캐릭터이미지">
						</div>
						<div class="charitemsimg">
							<div class="imgsalign">
								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '무기'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="무기">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '칭호'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="칭호">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="칭호">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '팔찌'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="팔찌">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="팔찌">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '목걸이'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="목걸이">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="목걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '보조장비'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="보조장비">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="특수장비">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '반지'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="반지">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="반지">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
								<div class="imgs">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '귀걸이'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="귀걸이">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="itemImageVar" items="${equip}" begin="0"
										end="${fn:length(equip)}" step="1" varStatus="itemImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${itemImageVar.slotName == '마법석'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${itemImageVar.itemId}"
														alt="마법석">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${itemImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="마법석">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
							</div>
						</div>
					</div>

					<div class="charinfo">
						<div class="textalign">
							<p>이름 : ${items.characterName}</p>
							<br>
							<p>서버 : ${korServer}</p>
							<br>
							<p>레벨 : ${items.level}LV</p>
						</div>
						<div class="textalign">
							<p>직업 : ${items.jobGrowName}</p>
							<br>
							<p>모험단 : ${items.adventureName}</p>
						</div>
					</div>
				</div>
				<div class="infos">
					<div class="information">
						<p>강화란을 클릭하시면 마법부여를 볼수있습니다.</p>
					</div>
					<c:forEach items="${equip}" var="equip">
						<c:if test="${equip.slotName != null}">
							<div class="charitemsinfo">
								<div class="itemslot">${equip.slotName}</div>
								<div class="itemname">${equip.itemName}</div>
								<div class="upgrade">
									<c:choose>
										<c:when test="${equip.amplificationName != null}">
											<p style="color: #ff00ff;">+${equip.reinforce}증폭</p>
										</c:when>
										<c:when test="${equip.slotName == '무기'}">
											<p>+${equip.reinforce}강화 (${equip.refine})</p>
										</c:when>
										<c:otherwise>
											<p>+${equip.reinforce}강화</p>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="enchant">
									<c:choose>
										<c:when test="${not empty equip.enchant}">
											<c:forEach var="stat" items="${equip.enchant.status}"
												begin="0" end="${fn:length(equip.enchant.status)}" step="1"
												varStatus="status">
												<c:choose>
													<c:when
														test="${stat.name == '모든 속성 강화' || stat.name.substring(1) == '속성강화'}">
														<p>${stat.name.substring(0, 1)}속강+${stat.value}</p>
													</c:when>
													<c:when test="${fn:substring(stat.name, 3, 6) == '공격력'}">
														<p>${stat.name.substring(0, 1)}공+${stat.value}</p>
													</c:when>
													<c:when
														test="${fn:substring(stat.name, 3, 10) == '크리티컬 히트'}">
														<p>${stat.name.substring(0, 1)}크+${stat.value}</p>
													</c:when>
													<c:when
														test="${fn:substring(stat.name, 2, 4) == '속도' || fn:substring(stat.name, 3, 5) == '속도'}">
														<p>${stat.name.substring(0, 1)}속+${stat.value}</p>
													</c:when>
													<c:otherwise>
														<p>${stat.name}+${stat.value}</p>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:when>
										<c:otherwise>

										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div class="charAvarta">
				<div class="avartaInfos">
					<div class="avartaImg">
						<div class="cImg">
							<img
								src="https://img-api.neople.co.kr/df/servers/<%= request.getParameter("server") %>/characters/${items.characterId}?zoom=2"
								alt="캐릭터이미지">
						</div>
						<div class="aImg">
							<div class="columnImgs"></div>
							<div class="rowImgs">
								<div class="rows">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '무기 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '오라 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
								<div class="rows">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '머리 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '모자 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '얼굴 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>

								<div class="rows">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '목가슴 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '상의 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '스킨 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
								<div class="rows">
									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '허리 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '하의 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />

									<c:set var="loop_flag" value="false" />
									<c:forEach var="avatarImageVar" items="${aOption}" begin="0"
										end="${fn:length(aOption)}" step="1" varStatus="avatarImages">
										<c:if test="${not loop_flag}">
											<c:choose>
												<c:when test="${avatarImageVar.slotName == '신발 아바타'}">
													<img
														src="https://img-api.neople.co.kr/df/items/${avatarImageVar.itemId}"
														alt="무기">
													<c:set var="loop_flag" value="true" />
												</c:when>

												<c:when test="${avatarImageVar.slotName == null}">
													<img src="/images/notfoundicon.png" alt="귀걸이">
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
									<c:remove var="loop_flag" />
								</div>
							</div>
						</div>
					</div>
					<div class="charinfo">
						<div class="textalign">
							<p>이름 : ${items.characterName}</p>
							<br>
							<p>서버 : ${korServer}</p>
							<br>
							<p>레벨 : ${items.level}LV</p>
						</div>
						<div class="textalign">
							<p>직업 : ${items.jobGrowName}</p>
							<br>
							<p>모험단 : ${items.adventureName}</p>
						</div>
					</div>
				</div>
				<div class="avartaInfos">
					<div class="information">
						<p>아바타 이름란을 클릭하시면 엠블럼을 볼수있습니다.</p>
					</div>
					<c:choose>
						<c:when test="${fn:length(aOption) - 2 < 0 }">

						</c:when>

						<c:otherwise>
							<c:forEach items="${aOption}" var="avatar" begin="0"
								end="${fn:length(aOption) - 2}" step="1">
								<div class="charitemsinfo">
									<div class="itemslot">${avatar.slotName.substring(0,3)}</div>
									<div class="itemname">${avatar.itemName}</div>
									<div class="emblem">
										<c:forEach items="${avatar.emblems}" var="eAvatar">
											<p>${eAvatar.itemName}</p>
										</c:forEach>
									</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="charStat">
				<div class="statWrap">
					<div class="baseStat">
						<div class="statName">
							<p>기본 스텟</p>
						</div>
						<c:forEach items="${charStat.status}" var="charStat">
							<c:if
								test="${charStat.name  == '힘' || charStat.name  == '지능' || charStat.name  == '체력' || charStat.name  == '정신력'}">
								<div class="statBox">
									<div class="statDetail">
										<p>${charStat.name}</p>
										<fmt:parseNumber var="RoundVal" value="${charStat.value}"
											integerOnly="true" />
										<p>${RoundVal}</p>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="attackStat">
						<div class="statName">
							<p>공격력</p>
						</div>
						<c:forEach items="${charStat.status}" var="charStat">
							<c:if test="${fn:substring(charStat.name, 3, 5) == '공격'}">
								<div class="statBox">
									<div class="statDetail">
										<p>${charStat.name.substring(0, 2)}공격력</p>
										<fmt:parseNumber var="RoundVal" value="${charStat.value}"
											integerOnly="true" />
										<p>${RoundVal}</p>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="criticalStat">
						<div class="statName">
							<p class="statName">크리티컬</p>
						</div>
						<c:forEach items="${charStat.status}" var="charStat">
							<c:if test="${fn:substring(charStat.name, 3, 5) == '크리'}">
								<div class="statBox">
									<div class="statDetail">
										<p>${charStat.name}</p>
										<p>${charStat.value}%</p>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="utilStat">
						<div class="statName">
							<p>유틸 스텟</p>
						</div>
						<c:forEach items="${charStat.status}" var="charStat">
							<c:if
								test="${fn:substring(charStat.name, 3, 5) == '속도' || charStat.name == '캐스팅 속도' || charStat.name == '항마력'}">
								<div class="statBox">
									<div class="statDetail">
										<p>${charStat.name}</p>
										<p>${charStat.value}%</p>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="elementStat">
						<div class="statName">
							<p>속성 강화</p>
						</div>
						<c:forEach items="${charStat.status}" var="charStat">
							<c:if test="${fn:substring(charStat.name, 4, 7) == '강화'}">
								<div class="statBox">
									<div class="statDetail">
										<p>${charStat.name}</p>
										<fmt:parseNumber var="RoundVal" value="${charStat.value}"
											integerOnly="true" />
										<p>${RoundVal}</p>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="switchItem">
				<c:choose>
					<c:when test="${buffSt == null}">
						<div class="swInnerBox">
							<div class="swLevel">
								<div class="swLevelInnerBox">
									<p>버프강화시스템을 적용하지 않은 모험가입니다.</p>
								</div>
							</div>
							<div class="swItems">
								<div class="swItemImg">
									<div class="infos"></div>
								</div>
								<div class="swAvarta">
									<div class="swLeft"></div>
								</div>
								<div class="swCreature"></div>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="swInnerBox">
							<div class="swLevel">
								<div class="swLevelInnerBox">
									<p>${buffSt.skillName}</p>
								</div>
							</div>
							<div class="swItems">
								<div class="swItemImg">
									<c:choose>
										<c:when test="${buffSt.equipment == null}">
											<div class="infos">
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
											</div>
											<div class="infos">
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이">
											</div>
										</c:when>
										<c:otherwise>
											<div class="infos">
												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '머리어깨'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="머리어깨">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '상의'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="상의">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '하의'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="하의">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '허리'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="허리">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '신발'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="신발">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />
											</div>
											<div class="infos">
												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '무기'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="무기">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '칭호'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="칭호">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '팔찌'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="팔찌">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '목걸이'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="목걸이">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '신발'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="보조장비">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '반지'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="반지">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '귀걸이'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="귀걸이">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swItems" items="${buffSt.equipment}"
													begin="0" end="${fn:length(buffSt.equipment)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swItems.slotName == '마법석'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swItems.itemId}"
																	alt="마법석">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swItems.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />
											</div>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="swAvarta">
									<c:choose>
										<c:when test="${avartaSt == null}">
											<div class="swLeft">
												<img src="/images/notfoundicon.jpg"> <img
													src="/images/notfoundicon.jpg">
											</div>

											<div class="swRight">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이"> 
												<img src="/images/notfoundicon.png" alt="귀걸이">
												<img src="/images/notfoundicon.png" alt="귀걸이">
											</div>
										</c:when>

										<c:otherwise>
											<div class="swLeft">
												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '무기 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="무기">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '오라 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="오라">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />
											</div>

											<div class="swRight">
												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '머리 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="머리">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '모자 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="모자">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '얼굴 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="얼굴">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '목가슴 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="목가슴">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '상의 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="상의">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '스킨 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="피부">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '허리 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="허리">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '하의 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="하의">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />

												<c:set var="loop_flag" value="false" />
												<c:forEach var="swAvartas" items="${avartaSt}" begin="0"
													end="${fn:length(avartaSt)}" step="1"
													varStatus="swItemImages">
													<c:if test="${not loop_flag}">
														<c:choose>
															<c:when test="${swAvartas.slotName == '신발 아바타'}">
																<img
																	src="https://img-api.neople.co.kr/df/items/${swAvartas.itemId}"
																	alt="신발">
																<c:set var="loop_flag" value="true" />
															</c:when>

															<c:when test="${swAvartas.slotName == null}">
																<img src="/images/notfoundicon.png" alt="귀걸이">
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
												<c:remove var="loop_flag" />
											</div>
										</c:otherwise>
									</c:choose>

								</div>
								<div class="swCreature">
									<c:choose>
										<c:when test="${creatureSt == null}">
											<img src="/images/notfoundicon.png" alt="귀걸이">
										</c:when>
										<c:otherwise>
											<img
												src="https://img-api.neople.co.kr/df/items/${creatureSt.itemId}"
												alt="크리처">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>

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