<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap-3.4.1.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/view.css" />
<script src="<%=request.getContextPath()%>/js/jquery.alerts.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jquery.alerts.css" />
</head>
<style type="text/css">
th, td {
	text-align: center;
}
</style>
<body>

	<div class="container">
		<div class="col-xs-12 col-sm-12 col-md-12 "
			style="margin-left: 10%; margin-top: 2%; margin-bottom: 2%; width: 80%">
			<hr width="100%" class="title" />
			<h2>당신의 결과!</h2>
			<hr width="100%" class="title" />
		</div>
		<div>
			<table class="col-xs-5 col-md-5 col-lg-5 table table-line write"
				style="margin-left: 10%; margin-top: 2%; margin-bottom: 2%; width: 80%">

				<tr>
					<th>회원 No.</th>
					<th>향</th>
					<th>산도</th>
					<th>단맛</th>
					<th>쓴맛</th>
					<th>바디</th>
					<th>테스트시행일</th>
					<th>추천원두보기</th>
				</tr>

				<c:if test="${!empty list }">
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.getM_no() }<input type="hidden" id="no"
								value="${dto.getQ_no() }" /></td>
							<td>${dto.getBeans_aroma() }<input type="hidden" id="aroma"
								value="${dto.getBeans_aroma() }" />
							</td>
							<td>${dto.getBeans_acidity() }<input type="hidden"
								id="acidity" value="${dto.getBeans_acidity() }" /></td>
							<td>${dto.getBeans_sweet() }<input type="hidden" id="sweet"
								value="${dto.getBeans_sweet() }" /></td>
							<td>${dto.getBeans_bitter() }<input type="hidden"
								id="bitter" value="${dto.getBeans_bitter() }" /></td>
							<td>${dto.getBeans_body() }<input type="hidden" id="body"
								value="${dto.getBeans_body() }" /></td>
							<td>${dto.getM_date() }</td>
							<td><input type="button" value="당신의 원두!"
								class="btn btn-defult btn_max"></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty list }">
					<tr>
						<td colspan="8"><h3>검색된 레코드가 없습니다.</h3></td>
					</tr>
				</c:if>
			</table>
		</div>
		<c:if test="${!empty beanslist }">
			<div>
				<table class="col-xs-5 col-md-5 col-lg-5 table table-line write"
					style="margin-left: 10%; margin-top: 2%; margin-bottom: 2%; width: 80%">
					<c:forEach items="${beanslist }" var="dto">
						<tr>
							<th class="text-center">제목</th>
						</tr>

						<tr>
							<td><a
								href="info_cont.do?no=${dto.getInfo_no()}&page=${page}&genre=beans">
									${dto.getInfo_title() } </a></td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</c:if>
	</div>

	<script type="text/javascript">
		$(function() {
			$(".btn_max").click(
					function() {
						var no = $("#no").val();
						var arr = [ $("#aroma").val(), $("#acidity").val(),
								$("#sweet").val(), $("#bitter").val(),
								$("#body").val() ];
						var max = Math.max.apply(null, arr);
						location.href = 'beans_list.do?q_no=' + no + '&max='
								+ max;
					});
		});
	</script>


</body>
</html>