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
	// id가 my_form 대상 submit() 이벤트 
	// alert() id가 name val() 출력  
	// alert() id가 pass val() 출력
	$('#my_form').submit(function(){
		alert($('#name').val());
		alert($('#pass').val());
		// 이름이 비어있으면 "이름입력하세요" 포커스 깜박  되돌아감 
		// 비밀번호이 비어있으면 "비밀번호입력하세요" 포커스 깜박  되돌아감 
		// 둘다 입력이 되었으면  a.jsp 전송
	});
});
</script>
</head>
<body>
<form action="a.jsp" id="my_form">
이름:<input type="text" name="name" id="name"><br>
비밀번호:<input type="password" name="pass" id="pass"><br>
<input type="submit" value="전송">
</form>
</body>
</html>

