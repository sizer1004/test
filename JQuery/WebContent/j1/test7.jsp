<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<style type="text/css">
	.high_0{background: yellow;}
	.high_1{background: orange;}
	.high_2{background: blue;}
	.high_3{background: green;}
	.high_4{background: red;}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		//대상.each()  .each(변수대상, ) 반복
		$('h1').each(function(index){
			//alert(index);
			//alert($(this).html());
			$(this).addClass('high_'+index);
		});
		
		var arr=[
			{num:'1',subject:'안녕하세요'},
			{num:'2',subject:'반갑습니다'},
			{num:'3',subject:'즐겁습니다'},
			{num:'4',subject:'행복합니다'}
		];
		
		$.each(arr,function(index,item){
			//alert(index+":"+item.subject);
			// table 태그 뒤부분에  배열변수 내용 추가
$('table').append('<tr><td>'+item.num+'</td><td>'+item.subject+'</td></tr>');
		});
	});
</script>
</head>
<body>
<table border="1">
<tr><td>번호</td><td>제목</td></tr>
</table>

<h1>item-0</h1>
<h1>item-1</h1>
<h1>item-2</h1>
<h1>item-3</h1>
<h1>item-4</h1>
</body>
</html>