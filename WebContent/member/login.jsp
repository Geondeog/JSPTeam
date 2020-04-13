<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../header.jsp">
	<jsp:param name="title" value="Page" />
</jsp:include>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/view.css" />
<script src="<%=request.getContextPath()%>/js/jquery.alerts.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jquery.alerts.css" />
<script src="<%=request.getContextPath()%>/js/jquery.form.js"></script>
<script src="<%=request.getContextPath()%>/js/login.js"></script>

<section id="content">

	<div class="container">
		<div class="col-xs-12 col-sm-12 col-md-12 ">
			<hr width="100%" class="title" />
			<h2>LOGIN</h2>
			<hr width="100%" class="title" />
		</div>
		<div class="col-xs-12 col-sm-12 col-md-12 " align="center">
			<div align="center">
				<form method="post">
					<table class="col-xs-5 col-md-5 col-lg-5 table table-line write"
						style="margin-left: 20%; margin-top: 2%; margin-bottom: 2%; width: 60%">
						<tr>
							<th>아이디</th>
							<td><input type="text" name="m_id" id="id" required /></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="m_pwd" id="pwd" required /></td>
						</tr>
						<tr align="center">
							<td colspan="2" align="center"><input type="button"
								value="로그인" class="btn_submit btn btn-defult "> &nbsp; <input
								type="reset" value="취소" class="btn btn-defult" /> &nbsp; <input
								type="button" value="회원가입" class="btn btn-defult"
								onclick="location.href='<%=request.getContextPath()%>/join.do'" />
								&nbsp; <input type="button" class="btn btn-defult" value="비번찾기"
								onclick="pwd_find()" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</section>


<jsp:include page="../footer.jsp" />