<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- header-->
<%@include file="./include/header.jsp"%>

	<div>
		<ul class="nav nav-underline justify-content-center">
			<li class="nav-item"><a class="nav-link ${param.category == '전체' || param.category == null || param.category == '' ? 'active' : ''}" href="/?category=전체" id="clicked1" >전체</a></li>
			<li class="nav-item"><a class="nav-link ${param.category == '공예' ? 'active' : ''}" href="/?category=공예" >공예</a></li>
			<li class="nav-item"><a class="nav-link ${param.category == '운동' ? 'active' : ''}" href="/?category=운동">운동</a></li>
			<li class="nav-item"><a class="nav-link ${param.category == '쿠킹' ? 'active' : ''}" href="/?category=쿠킹">쿠킹</a></li>
			<li class="nav-item"><a class="nav-link ${param.category == '뷰티' ? 'active' : ''}" href="/?category=뷰티">뷰티</a></li>
		</ul>
	</div>
	
<!-- Section-->
<div>
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link ${param.region1 == '전체' || param.region1 == null || param.region1 == '' ? 'active' : ''}" href="/?category=${param.category }&region1=전체&sort=${param.sort}" id="clicked2">전체지역</a></li>
		<li class="nav-item"><a class="nav-link ${param.region1 == '서울' ? 'active' : ''}" href="/?category=${param.category }&region1=서울&region2=경기&sort=${param.sort}" id="clicked2">서울경기</a></li>
		<li class="nav-item"><a class="nav-link ${param.region1 == '경상' ? 'active' : ''}" href="/?category=${param.category }&region1=경상&region2=부산&sort=${param.sort}">경상부산</a></li>
		<li class="nav-item"><a class="nav-link ${param.region1 == '충청' ? 'active' : ''}" href="/?category=${param.category }&region1=충청&region2=대전&sort=${param.sort}">충청대전</a></li>
		<li class="nav-item"><a class="nav-link ${param.region1 == '전라' ? 'active' : ''}" href="/?category=${param.category }&region1=전라&region2=강원&sort=${param.sort}">전라강원</a></li>
		<li class="nav-item"><a class="nav-link ${param.region1 == '제주' ? 'active' : ''}" href="/?category=${param.category }&region1=제주&region2=/&sort=${param.sort}">제주</a></li>
	</ul>
	<ul class="nav justify-content-end">
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">정렬기준</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="/?category=${param.category }&region1=${param.region1 }&region2=${param.region2 }&sort=star">별점순</a></li>
				<li><a class="dropdown-item" href="/?category=${param.category }&region1=${param.region1 }&region2=${param.region2 }&sort=priceDesc">최고가</a></li>
				<li><a class="dropdown-item" href="/?category=${param.category }&region1=${param.region1 }&region2=${param.region2 }&sort=priceAsc">최저가</a></li>
			</ul>
		</li>
	</ul>
</div>

<section class="py-5">
	<!-- 게시물 없음 -->
	<c:if test="${empty list}">
		<h2 class="text-center">
			조건을 만족하는 클래스가 없어요...
		</h2>
	</c:if>
	<!-- 광고 게시물 --------------------------------------- -->
		<c:if test="${!empty list}">
			<div class="container border-bottom">
					<h3>오늘의 추천 클래스</h3>
				<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<!---------------------------------------------  -->
						<c:forEach var="list" items="${list }">
							<c:if test="${list.exp_ad_state eq 1 }">
								<div class="col mb-5" style="cursor:pointer;" onclick="location.href='/exp/info?exp_num=${list.exp_num}';">
									<div class="card h-100">
										<!-- Product image-->
											<img class="card-img-top" src="/exp/thumbDownload?fileName=${list.exp_summary_img}&wid=268&hei=200" style="height: 200px;" alt="이미지 설명">
<!-- 										<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
										<!-- Product details-->
										<div class="card-body p-4">
											<div class="text-center">
												<!-- region -->
												${list.exp_region } <br>
												<!-- category -->
												${list.exp_category } <br>
												<!-- Product name-->
												<h5 class="fw-bolder">${list.exp_name }</h5>
												<!-- star point -->
												★ ${list.rev_avgStar == 0? 0 : list.rev_avgStar }<br>									
												<!-- Product price-->
												<fmt:formatNumber>${list.exp_price }</fmt:formatNumber>원 <br>
											</div>
										</div>
										<!-- Product actions-->
									    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> 
			<!-- 							<div class="text-center"> -->
			<!-- 									<a class="btn btn-outline-dark mt-auto" href="#">장바구니로</a>  -->
			<!-- 								</div> -->
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					<!---------------------------------------------  -->
				</div>
			</div>
		</c:if>
	<!-- 일반 게시물 --------------------------------------- -->
	<c:if test="${!empty list }">
		<div class="container px-4 px-lg-5 mt-5">
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<!---------------------------------------------  -->
					<c:forEach var="list" items="${list }">
						<c:if test="${list.exp_ad_state eq 0 }">
							<div class="col mb-5" style="cursor:pointer;" onclick="location.href='/exp/info?exp_num=${list.exp_num}';">
								<div class="card h-100">
									<!-- Product image-->
<!-- 									<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
										<img class="card-img-top" src="/exp/thumbDownload?fileName=${list.exp_summary_img}&wid=268&hei=200" style="height: 200px;" alt="이미지 설명">
									<!-- Product details-->
									<div class="card-body p-4">
										<div class="text-center">
											<!-- region -->
											${list.exp_region } <br>
											<!-- category -->
											${list.exp_category } <br>
											<!-- Product name-->
											<h5 class="fw-bolder">${list.exp_name }</h5>
											<!-- star point -->
											★ ${list.rev_avgStar == 0? 0 : list.rev_avgStar }<br>									
											<!-- Product price-->
											<fmt:formatNumber>${list.exp_price }</fmt:formatNumber>원 <br>
										</div>
									</div>
									<!-- Product actions-->
								    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> 
		<!-- 							<div class="text-center"> -->
		<!-- 									<a class="btn btn-outline-dark mt-auto" href="#">장바구니로</a>  -->
		<!-- 								</div> -->
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				<!---------------------------------------------  -->
			</div>
		</div>
	</c:if>

</section>
<!-- footer -->
<%@include file="./include/footer.jsp"%>