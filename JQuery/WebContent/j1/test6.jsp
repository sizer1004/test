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
		//대상.append() 대상 안쪽 뒤부분에 추가
		$('body').append('<h1>뒤부분에 추가</h1>');
		// table 뒤부분에 추가   1   안녕
		$('table').append('<tr><td>1</td><td>안녕</td></tr>');
		//이미지  width 250 변경
		$('img').css('width',250);
		// div 태그 뒤부분에 추가 ( 이미지태그 첫번째 .first())
		setInterval(function() {
			$('div').append($('img').first());
		}, 2000);
	});
</script>
</head>
<body>
본문
<table border="1">
<tr><td>번호</td><td>제목</td></tr>
</table>
<div>
<img src="1.gif">
<img src="2.gif">
<img src="3.gif">
<img src="4.jpg">
<img src="5.jpg">
</div>
</body>
</html>

