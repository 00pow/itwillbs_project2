<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp"%>
<style>
  /* footer 고정  */
  .abx{
  height: auto;
  min-height: 100%;
  padding-bottom: 180px;
}	
</style>

    <!-- 로그인 정보가 없으면 로그인 페이지로 이동 -->
    <c:if test="${empty user_id}">
       <c:redirect url="/user/login" />
    </c:if>
    
    <!-- <input type="button" value="로그아웃" onclick=" location.href='/user/logout'; ">
    <hr> 상단에 로그아웃 버튼 있음 -->
   <div class="container mt-5 abx">
	<div class="row">
          <div class="card">
              <!-- 회원정보 확인 -->
               <h3>${vo.user_name }님의 마이페이지 입니다. </h3>
            <div class="card-body pt-3">
              <ul class="nav nav-tabs nav-tabs-bordered" role="tablist">
				
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" data-bs-toggle="tab" onclick= "location.href='/user/update';" aria-selected="true" role="tab">회원 정보 조회 및 수정</button>
                </li>
                <li class="nav-item" role="presentation">
		           <button class="nav-link" data-bs-toggle="tab" onclick= "location.href='/class/paymentList';" aria-selected="false" role="tab" tabindex="-1">클래스 예약 관리</button>
		        </li>
				<c:if test="${user_type eq 1 }">
					<li class="nav-item" role="presentation">
		                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password" aria-selected="false" role="tab" tabindex="-1">사업자 클래스 관리</button>
		            </li>
				</c:if>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" data-bs-toggle="tab" onclick= "location.href='/qna/qnaListAll';" aria-selected="false" role="tab" tabindex="-1">1:1문의</button>
                </li>
              </ul>
              
             <!-- 회원정보 수정 -->
                <div class="tab-pane fade profile-edit pt-3" >

                  <form action="" method="post">
                  
                  	<div class="row mb-3">
                      <label for="user_id" class="col-md-4 col-lg-3 col-form-label">아이디 : </label>
                      <div class="col-md-8 col-lg-9">
                        <input name="user_id" type="text" class="form-control" id="user_id" value="${vo.user_id }" readonly>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="user_name" class="col-md-4 col-lg-3 col-form-label">이름 : </label>
                      <div class="col-md-8 col-lg-9">
                        <input name="user_name" type="text" class="form-control" id="user_name" value="${vo.user_name } ">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="user_phone" class="col-md-4 col-lg-3 col-form-label">휴대폰 번호 : </label>
                      <div class="col-md-8 col-lg-9">
                        <input name="user_phone" type="text" class="form-control" id="user_phone" value="${vo.user_phone }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Job" class="col-md-4 col-lg-3 col-form-label">비밀번호</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="user_pw" type="password" class="form-control" id="user_pw" placeholder="비밀번호를 입력 해 주세요.">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary" id="userUpdate">정보수정하기</button>
                      <button type="button" class="btn btn-primary">회원탈퇴</button>
                    </div>
                  </form>
                </div>
                <!-- 회원정보 수정 -->
               </div>
            </div>
		</div>
					<!-- End Change Password Form -->	
						
              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
        </div>
       
   
    
    
<!--     <h3><a href="/user/info">회원정보 조회</a></h3> -->
   
<!--     <hr><hr> -->
    
<!--     <h3><a href="/user/update">회원정보 수정</a></h3> -->
<!--     <hr><hr> -->
    
<!--     <h3><a href="/user/delete">회원정보 삭제</a></h3> -->
                                  
<%--     <c:if test="${!empty id && id eq 'admin'}"> --%>
<%--     <c:if test="${!empty user_id && user_id.equals('admin1')}"> --%>
<!--        관리자(admin)일때 확인가능한 메뉴  admin 페이지 새로 만듦   -->
<!--        <hr><hr> -->
<!--        <h3><a href="/user/list">회원정보 목록</a></h3> -->
<%--     </c:if> --%>
<%@include file="../include/footer.jsp"%>    
    
