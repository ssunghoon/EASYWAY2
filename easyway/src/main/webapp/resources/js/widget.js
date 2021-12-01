/*
$(function () {
    
	// 위젯 썸네일(widget-thumb unselected)을 클릭하면
	// 위젯 영역(widget-area)에  위젯(widget-selected)이 생성
	$('.unselected').on({
		
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



// 테스트 : 썸네일 클릭하면 콘솔 창으로 뭔지 알랴줌 

	

function selectAlert(e) {
	const selected = e.target.firstChild.nodeValue;
	e.stopPropagation();
	console.log(typeof selected);
	console.log(selected);
	

	if ((selected == '') || (selected == null)) {
		console.log("null이란다");
	}

	switch (selected) {
	case "실시간 시계":

		console.log("우왕시계당");
		makeClockWidget();
		
		// Class 변경 : unselected -> selected
		$(document).on('change', '#clock', function(){
			alert("이게 되겠니?");
		});

		break;
	case "공지사항 목록":

		console.log("공지사항 다혜꺼");

		break;
	case "출퇴근 체크":

		console.log("출퇴근 언제하냐");

		break;
	case "결재함 목록":

		console.log("결재차려 김나현!");

		break;
	case "프로젝트 리스트":

		console.log("프로젝트는 성훈이꺼");

		break;
	case "캘린더 일정":

		console.log("캘린더는 경안이꺼");

		break;
	default:
		break;
	}

}


// 이하 썸네일 클릭하면 발생하는 이벤트 핸들러 함수

const widgetSelectedContainer = document.querySelector("#widget-selected-container");

function makeClockWidget() {
	
	var clockHtml = '';
	clockHtml += '<div id="clock" class="widget-selected">';
	clockHtml += '</div>';
	
	widgetSelectedContainer.append(clockHtml);
	

//	init();
}

// 동적으로 생성된 #clock에 시간을 구해서 innerHTML로 넣는 함수
function getTime(){
	const clock = document.querySelector('#clock');
	
    const time = new Date();
    const hour = time.getHours();
    const minutes = time.getMinutes();
    const seconds = time.getSeconds();
    clock.innerHTML = `${hour<10 ? `0${hour}`:hour}:${minutes<10 ? `0${minutes}`:minutes}:${seconds<10 ? `0${seconds}`:seconds}`
}

// 초당 시간 불러오는 함수
function init(){
    setInterval(getTime, 1000);
}



