$(document).ready(function() {

	$("#first").css("cursor", "default");

	$(".upgrade").on("click", function() {
		$(".upgrade").css("display", "none");
		$(".enchant").css("right", "0px");
	});

	$(".enchant").on("click", function() {
		$(".upgrade").css("display", "flex");
		$(".enchant").css("right", "-27%");
	});
	
	$(".avartaInfos .itemname").on("click", function() {
		$(".avartaInfos .itemname").css("display", "none");
		$(".emblem").css("display", "flex");
	});
	
	$(".emblem").on("click", function() {
		$(".emblem").css("display", "none");
		$(".avartaInfos .itemname").css("display", "flex");
	});

	$("#first").on("click", function() {
		charItems();
	});

	$("#second").on("click", function() {
		charAvatar();
	});

	$("#third").on("click", function() {
		charStat();
	});

	$("#forth").on("click", function() {
		charSwitchItem();
	});
	
	$(".gotoHead").on("click", function() {
		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
	});

});

var elementId = "first";
var elementClass = "infobox";

// 장비창
function charItems() {

	$("#" + elementId).removeClass("switch_select");
	$("#" + elementId).css("cursor", "pointer");
	$("." + elementClass).css("display", "none");
	$("#first").addClass("switch_select");
	$("#first").css("cursor", "default");
	$(".infobox").css("display", "flex");
	elementId = "first";
	elementClass = "infobox";

}

// 아바타
function charAvatar() {

	$("#" + elementId).removeClass("switch_select");
	$("#" + elementId).css("cursor", "pointer");
	$("." + elementClass).css("display", "none");
	$("#second").addClass("switch_select");
	$("#second").css("cursor", "default");
	$(".charAvarta").css("display", "flex");
	elementId = "second";
	elementClass = "charAvarta";

}

// 캐릭터 스탯
function charStat() {

	$("#" + elementId).removeClass("switch_select");
	$("#" + elementId).css("cursor", "pointer");
	$("." + elementClass).css("display", "none");
	$("#third").addClass("switch_select");
	$("#third").css("cursor", "default");
	$(".charStat").css("display", "flex");
	elementId = "third";
	elementClass = "charStat";

}

// 스위칭 장비
function charSwitchItem() {

	$("#" + elementId).removeClass("switch_select");
	$("#" + elementId).css("cursor", "pointer");
	$("." + elementClass).css("display", "none");
	$("#forth").addClass("switch_select");
	$("#forth").css("cursor", "default");
	$(".switchItem").css("display", "flex");
	elementId = "forth";
	elementClass = "switchItem";

}