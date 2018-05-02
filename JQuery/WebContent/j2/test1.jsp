<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 대상.bind(이벤트종류,함수)  //대상.이벤트함수()
		$('h1').bind('click',function(){
			//alert('클릭이벤트1');
		});
		// 대상.click()
		$('h1').click(function(){
			//alert('클릭이벤트2')
			// 클릭한 대상  안에 내용을 가져와서  head0++ 변경 클릭대상에 넣기
			// 대상.html()
			$(this).html(function(index,html){
				//alert(html);
				return html+"+";
			});
			//이벤트 한번만 적용 => 이벤트 종료
			$(this).unbind();
		});
		
		// div태그 클릭 이벤트 =>  .append()클릭한 대상 뒤부분에 추가 '클릭'
		$('div').click(function(){
			$(this).append('클릭');
		});
		//이미지  마우스오버이벤트 mouseover()
		// 이미지   .attr()  src 속성 1.gif => 2.gif 변경
		$('img').mouseover(function(){
			$(this).attr('src','2.gif');
		});
		// 이미지  마우스오버이벤트 mouseover() 이미지에
		// mouseout() 이벤트
		// 이미지 .attr() src 속성 2.gif => 1.gif 변경
		$('img').mouseout(function(){
			$(this).attr('src','1.gif');
		});
	});
</script>
</head>
<body>
<img src="1.gif"> 
<div>div0</div>
<div>div1</div>
<div>div2</div>
<h1>head0</h1>
<h1>head1</h1>
<h1>head2</h1>
</body>
</html>
