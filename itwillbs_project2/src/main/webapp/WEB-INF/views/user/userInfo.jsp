<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

   <h1>/user/info.jsp</h1>
   
   <h2> 회원정보 조회 </h2>
   
   ${vo }<hr>
   
   아이디 : ${vo.user_id } <hr>
   이름 : ${vo.user_name }<hr>
   폰번호 : ${vo.user_phone }<hr>
 
   
   <a href="/user/userMain">메인페이지로....</a>
   
   
   
   
<%@include file="../include/footer.jsp"%>