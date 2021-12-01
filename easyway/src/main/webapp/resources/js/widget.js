/*
$(function () {
    
	// 위젯 썸네일(widget-thumb unselected)을 클릭하면
	// 위젯 영역(widget-area)에  위젯(widget-selected)이 생성
	$('.unselected')d.on({
		
		// 위젯 썸네일(widget-thumb unselected) 클릭 이벤트
		click:function(){
			
			var selectedWidget = $(this);
			
			
			var widgetHtml = '';
			widgetHtml += '<div class="widget-selected">';
			widgetHtml += '		<>';
			widgetHtml += '</div>';
			
			
		}, // end click 이벤트
		
		hover:function(){
			
			
			
		} // end hover 이벤트
		
		
	}); //end .unselected 이벤트
	
});
*/


const thumbContainer = document.querySelector('.widget-thumb-container');

function selectAlert(e) {
    const selected = e.target.value;
    alert(selected);
}

thumbContainer.addEventListener('onclick', selectAlert);
