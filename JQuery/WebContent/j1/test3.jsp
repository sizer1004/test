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
		//대상.함수()
		//대상.css(속성)
		var col=$('h1').css('color');
		alert(col);//rgb(0,0,0)
		//대상.css(속성,값)
		$('h1').css('color','blue')
//$('h1').css('color','blue').css('background','yellow');
		$('h1').css({
			color:'green',
			background:'yellow'
		});
		//속성값 여러개 적용
		//배열변수 
		var col=['red','pink','orange'];
		$('h1').css('color',function(index){
			alert(index);
			return col[index];
		});
		$('h1').css({
			color:'green',
			background:function(index){
				return col[index];
			}
		});
		
	});
</script>
</head>
<body>
<h1>head-0</h1>
<h1>head-1</h1>
<h1>head-2</h1>
</body>
</html>


