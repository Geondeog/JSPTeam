<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../header.jsp">
	<jsp:param name="title" value="Page" />
</jsp:include>

<section id="content">

	<div class="col-sm-2">
		<div class="panel panel-default">
			<div class="panel-heading">Board</div>
			<div class="panel-body" align="left">
				<ul style="list-style-type: none; padding-inline-start: 0px;">
					<li><a
						href="<%=request.getContextPath()%>/info_list.do?genre=info"
						target="listview">INFORMATION</a></li>
					<li><a
						href="<%=request.getContextPath()%>/info_list.do?genre=beans"
						target="listview">BEANS</a></li>
					<li><a
						href="<%=request.getContextPath()%>/info_list.do?genre=country"
						target="listview">COUNTRY</a></li>
					<li><a
						href="<%=request.getContextPath()%>/info_list.do?genre=extra"
						target="listview">EXTRACTION</a></li>
					<li><a
						href="<%=request.getContextPath()%>/cff_list.do"
						target="listview">COFFEE FOOD</a></li>
					<li><a href="<%=request.getContextPath()%>/info_find.do"
						target="listview">CAFE SEARCH</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="col-sm-10">
		<iframe src="<%=request.getContextPath()%>/info.do" name="listview"
			style="display: block; width: 100%; height: 100vh; border: 0;">
		</iframe>
	</div>

</section>

<jsp:include page="../footer.jsp" />