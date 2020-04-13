<%-- header.jsp --%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="author" content="익명의 동물들">
<meta name="description" content="CAFE:in">
<meta name="keywords" content="JSP, 반응형 웹, 부트스트랩, 커피, 원두, 웹">
<title>CAFE:in - 당신의 여유를 함께합니다</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap-3.4.1.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">/* Bootstrap CDN JavaScript */
</script>
</head>


<body>

	<%-- 헤더 부분 --%>
	<header>
		<img alt="Banner" src="images/CAFE_in_logo_1.png"
			class="img-responsive" id="top_banner">
	</header>

	<%-- 네비게이션 부분 --%>
	<nav class="navbar navbar-default">
		<!-- 상단고정기능 일부러 지워둠 navbar-fixed-top 20-04-01 -->
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					aria-expaned="false" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img alt="Brand"
					src="images/coffee_32px.png">
				</a> <a class="navbar-brand" href="<%=request.getContextPath() %>">CAFE <i>in</i></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="<%=request.getContextPath()%>/info_board.do">정보 <span
							class="sr-only">(current)</span></a></li>

					<li><a href="<%=request.getContextPath()%>/taste_notice.do">원두추천</a></li>


					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">게시판
							<span class="caret"></span>
					</a>
						<div class="dropdown-menu" role="menu">
							<a href="<%=request.getContextPath() %>/faq_list.do"class="dropdown-item" target="view">FAQ</a> <br/>
            <a href="<%=request.getContextPath() %>/qna_list.do" class="dropdown-item" target="view">Q&A</a>
						</div></li>
					<li><a href="#">회원광장</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=request.getContextPath()%>/member.do">로그인/회원가입</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>