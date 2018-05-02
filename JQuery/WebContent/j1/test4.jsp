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
		//대상.attr()
		var s=$('img').attr('width');
		alert(s);
		// width 300변경
		$('img').attr('width',300);
		// width 500 height 500
		$('img').attr({
			width:500,
			height:500
		});
		// width 100 200 300 적용
		$('img').attr('width',function(index){
			return (index+1)*100;
		});
	});
</script>
</head>
<body>
<img src="1.gif" width="200">
<img src="2.gif">
<img src="3.gif">
</body>
</html>