<%@page import="org.json.simple.JSONObject"%>
<%@page import="vo.CafeBean"%>
<%@page import="svc.CafeDetailService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
CafeDetailService cds = new CafeDetailService();
JSONObject cafeBean = cds.getCafeDetail(cafe_num);
%>
<%= cafeBean%>