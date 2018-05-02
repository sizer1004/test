<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
//JSONObject == 자바빈 
//JSONArray == List 배열

//1단계 드라이버 로더
Class.forName("com.mysql.jdbc.Driver");

String dburl="jdbc:mysql://localhost:3306/jspdb";
String dbUser="jspid";
String dbPass="jsppass";
//2단계 디비 연결
Connection con=null;
con=DriverManager.getConnection(dburl,dbUser,dbPass);
//3단계 sql 객체 생성 select * from member
String sql="";
PreparedStatement pstmt=null;
sql="select * from member";
pstmt=con.prepareStatement(sql);

//4단계 rs 실행결과 저장
 ResultSet rs=null;
 rs=pstmt.executeQuery();
//5단계 rs데이터 있으면
//    자바빈 변수 <= rs 열 데이터

JSONArray arr=new JSONArray();
while(rs.next()){
//  자바빈 객체 생성    //JSONObject 객체 생성
	JSONObject jobj=new JSONObject();
	jobj.put("id",rs.getString("id"));
	jobj.put("pass",rs.getString("pass"));
	jobj.put("name",rs.getString("name"));
//  배열  한칸에 저장
	arr.add(jobj);
}
%>
<%=arr%>