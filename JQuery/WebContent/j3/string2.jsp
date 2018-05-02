<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- j3/string2.jsp -->
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
%>
<%=name+" : "+age%>