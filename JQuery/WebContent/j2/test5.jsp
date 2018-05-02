<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {width: 50px;height: 50px;background-color: orange;}
</style>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	// animate()
	// div 태그 대상  클릭이벤트 발생하면
	// width = css()  ,  height = css()
	// 그대상에 animate() width+50  height+50
	$('div').click(function(){
		var width=$(this).css('width');
		var height=$(this).css('height');
		//alert(width+":"+height);
		$(this).animate({
			width:parseInt(width)+50,
			height:parseInt(height)+50
		},'slow');
	});
});
</script>
</head>
<body>
<div></div>
</body>
</html>