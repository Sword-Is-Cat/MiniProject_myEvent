$(function() {
	
	
	
	var findMenuName = $(location).attr('href');
	var result = findMenuName.split('/').reverse()[0];
	$('.subMenuList').click(function(){
		//alert( result );
		/*if($(this).attr('href') == result ){
			$('div.mypage-topnav__tab').addclass('.subMenuActive');
		}*/
	});
	
/*	if($(this).attr('href') == result){
			
			$('a').parent().addcClass('.subMenuActive');
	}*/
	

	
	
	
	
});//end