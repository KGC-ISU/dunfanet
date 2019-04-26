$(document).ready(function() {

	$(".char_form").submit(function() {
		
		let server = $(".select option:selected").val();
		let name = $(".rs").val();
		
		if(name == '') {
			Swal.fire({
				title: 'Error!',
				text: '장비 이름을 입력하세요',
				type: 'error',
				confirmButtonText: '알겠어요'
			});
			return false;
		}
		
		
		window.location.href = '/char/result?server=' + server + '&name=' + name;
		
		return false;
		
	});
	
	$(".item_form").submit(function() {
		
		let level = $(".select option:selected").val();
		let name = $(".rs").val();
		
		if(name == '') {
			Swal.fire({
				title: 'Error!',
				text: '장비 이름을 입력하세요',
				type: 'error',
				confirmButtonText: '알겠어요'
			});
			//alert('장비 이름을 입력해주세요.');
			return false;
		}
		
		
		window.location.href = '/item/result?name=' + name + '&level=' + level;
		
		return false;
		
	});
	
	$(".setitem_form").submit(function() {
		
		let name = $(".rs").val();
		
		if(name == '') {
			Swal.fire({
				title: 'Error!',
				text: '장비 이름을 입력하세요',
				type: 'error',
				confirmButtonText: '알겠어요'
			});
			return false;
		}
		
		
		window.location.href = '/setitem/result?name=' + name;
		
		return false;
		
	});

});