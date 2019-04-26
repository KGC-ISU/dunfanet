<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<%
	//치환 변수 선언
	pageContext.setAttribute("cr", "\r"); //Space
	pageContext.setAttribute("cn", "\n"); //Enter
	pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
	pageContext.setAttribute("br", "<br/>"); //br 태그
%>
<jsp:include page="../include/head.jsp" />
<body>
	<jsp:include page="../include/header.jsp" />
	<div class="container">
		<div class="item_frame">
			<div class="item_title">
				<img src="https://img-api.neople.co.kr/df/items/${itemInfos.itemId}"
					alt="아이템">
				<p>${itemInfos.itemName}</p>
			</div>
			<div class="item_info">
				<div class="item_damage">
					<c:forEach items="${itemInfos.itemStatus}" var="itemStat">
						<c:if test="${fn:substring(itemStat.name, 3, 4) == '공' || fn:substring(itemStat.name, 3, 4) == '방'}">
							<p>${itemStat.name} +${itemStat.value}</p>
						</c:if>
					</c:forEach>
				</div>
				
				<div class="item_Rarity">
					<p>${itemInfos.itemRarity}</p>
				</div>
				<div class="item_Type">
					<c:choose>
						<c:when test="${itemInfos.itemType == '추가장비'}">
							<p>특수장비</p>
						</c:when>
						
						<c:otherwise>
							<p>${itemInfos.itemType}</p>
						</c:otherwise>
					</c:choose>									
				</div>
				<div class="item_TypeDetail">
					<p>${itemInfos.itemTypeDetail}</p>
				</div>
				<div class="item_level">
					<p>${itemInfos.itemAvailableLevel}레벨</p>
				</div>
				
				<div class="item_stat">
					<c:forEach items="${itemInfos.itemStatus}" var="itemStat">
						<c:if test="${itemStat.name == '힘' || itemStat.name == '지능' || itemStat.name == '체력' || itemStat.name == '정신력' ||itemStat.name == '항마력'}">
							<p>${itemStat.name} +${itemStat.value}</p>
						</c:if>
					</c:forEach>
				</div>
				
				<c:set value="true" var="status" />
				<div class="item_char_stat">
					<c:forEach items="${itemInfos.itemStatus}" var="itemStat">
						<c:if test="${status}">
							<c:if test="${itemStat.name == '적중률' || itemStat.name == '공격속도' || itemStat.name == '이동속도' || itemStat.name == '캐스트속도' || itemStat.name == '명속성강화' || itemStat.name == '공격속성'}">
								<p class="item_char_stat_p">	
									<c:forEach items="${itemInfos.itemStatus}" var="itemStats">
										<c:if test="${itemStats.name == '적중률' || itemStats.name == '공격속도' || itemStats.name == '이동속도' || itemStats.name == '캐스트속도' || itemStats.name == '명속성강화' || itemStats.name == '공격속성'}">
											<c:choose>
												<c:when test="${fn:substring(itemStats.value, 0, 1) == '-'}">
													${itemStats.name} ${itemStats.value}<br>
												</c:when>
												
												<c:when test="${itemStats.name == '공격속성'}">
													${itemStats.name} ${itemStats.value}
												</c:when>
												
												<c:otherwise>
													${itemStats.name} +${itemStats.value}<br>
												</c:otherwise>
											</c:choose>
										</c:if>
									</c:forEach>
								</p>
								<c:set value="false" var="status" />
							</c:if>
						</c:if>
					</c:forEach>
				</div>
				
				<div class="explain_detail">
					<c:if test="${itemInfos.itemReinforceSkill != null}">
						<c:forEach items="${itemInfos.itemReinforceSkill}" var="skill">
							<c:if test="${skill.skills != null}">
								<p class="skill_job_name">${skill.jobName}</p>
								<c:forEach items="${skill.skills}" var="skill_List">
									<p>${skill_List.name} +${skill_List.value}</p>
								</c:forEach>
							</c:if>
							
							<c:if test="${skill.levelRange != null}">
								<c:forEach items="${skill.levelRange}" var="skill_Range">
									<c:choose>
										<c:when test="${skill.jobName == '공통'}">
											<p class="leveling">모든 직업 ${skill_Range.minLevel} ~ ${skill_Range.maxLevel} 레벨 모든 스킬 Lv +${skill_Range.value} (특성 스킬 제외)</p>
										</c:when>
										
										<c:otherwise>
											<p>${skill.jobName} ${skill_Range.minLevel} ~ ${skill_Range.maxLevel} 레벨 모든 스킬 Lv +${skill_Range.value} (특성 스킬 제외)</p>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:if>
							
							<br>
						</c:forEach>
					</c:if>
					
					<c:choose>
						<c:when test="${itemInfos.itemExplainDetail == ''}">
							
						</c:when>
						
						<c:otherwise>
							<div>
								<p>${fn:replace(itemInfos.itemExplainDetail, cn, br)}</p>
							</div>	
						</c:otherwise>
					</c:choose>
					
				</div>
				
				<div class="itemFlavorText">
					<c:choose>
						<c:when test="${itemInfos.itemFlavorText == ''}">
							
						</c:when>
						
						<c:otherwise>
							<div>
								<p>${fn:replace(itemInfos.itemFlavorText, cn, br)}</p>
							</div>	
						</c:otherwise>
					</c:choose>
					<p></p>
				</div>
				
				<div class="item_info_bottom">
					<c:forEach items="${itemInfos.itemStatus}" var="itemStat">
						<c:if test="${itemStat.name == '무게'}">
							<p class="item_kg">${itemStat.name} ${itemStat.value}</p>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${itemInfos.itemStatus}" var="itemStat">
						<c:if test="${itemStat.name == '내구도'}">
							<p class="item_durability">${itemStat.name} ${itemStat.value}</p>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<%-- <div class="container">
		<div class="center">
			<div class="centerBox">
				<div class="item_box">
					<div class="item_moreinfo">
						<div class="item_infoImg">
							<img
								src="https://img-api.neople.co.kr/df/items/${itemInfos.itemId}"
								style="width: 50px; height: 50px;">
						</div>
						<div class="item_infoText">
							<p>${itemInfos.itemName}</p>
							<p>장착 레벨 : ${itemInfos.itemAvailableLevel}</p>
							<p>${itemInfos.itemRarity}</p>
							<p>${itemInfos.itemType}(${itemInfos.itemTypeDetail})</p>
						</div>
					</div>

					<div class="itemExplain">

						<div class="itemStat">
							<c:forEach items="${itemInfos.itemStatus}" var="itemStat">
								<p>${itemStat.name}:${itemStat.value}</p>
							</c:forEach>
						</div>
						<br> <br>
						<div class="explainDetail">
							<p>${fn:replace(itemInfos.itemExplainDetail, cn, br)}</p>
						</div>
						<br> <br>
						<div class="flavorText">
							<p>${itemInfos.itemFlavorText }</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
	<footer class="foot itemfoot">
		<p>
			본 사이트는 소량의 <b>Bootstrap</b> 과 <b>Neople Open Api</b> 만을 사용하여 개발되었습니다.
		</p>
	</footer>
</body>
</html>

