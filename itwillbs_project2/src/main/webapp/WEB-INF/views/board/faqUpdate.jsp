<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="/WEB-INF/views/include/header.jsp"%>
  
<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">공지사항 수정</h5>
 
					<!-- 공지사항 수정 Form -->
					<form method="post" role="form">
						<div class="row mb-3">
							<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="enf_title"
									id="inputTitle" value="${faqList.enf_title}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputDate" class="col-sm-2 col-form-label">작성일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputDate"
									value="<fmt:formatDate value="${faqList.enf_regdate}" pattern="yyyy-MM-dd"/>"
									disabled>
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputContent" class="col-sm-2 col-form-label">내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="enf_content"
									id="inputContent" rows="3">
                                    <c:out
										value="${faqList.enf_content}" />
                                </textarea>
							</div>
						</div>

						<input type="hidden" name="enf_faq_num"
							value="${faqList.enf_notice_num}">
						<div class="row mb-3">
							<div class="col-sm-10 offset-sm-2">
								<button type="submit" class="btn btn-primary btn-update">수정하기</button>
								<button type="button" class="btn btn-secondary btn-cancel">수정취소</button>
							</div>
						</div>
					</form>
					<!-- End 공지사항 수정 Form -->

				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		var updateForm = $('form');

		// 수정하기 버튼 클릭
		$('.btn-update').click(function() {
			updateForm.submit();
		});

		// 취소하기 버튼 클릭
		$('.btn-cancel').click(function() {
			window.history.back();
		});
	});
</script>




<%@include file="/WEB-INF/views/include/footer.jsp"%>