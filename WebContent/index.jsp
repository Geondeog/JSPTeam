<%-- index.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="./header.jsp">
	<jsp:param name="title" value="Page" />
</jsp:include>

<section id="content">
	<div align="center">
		<iframe name="view" id="view"
			style="display: block; width: 100%; height: 100vh; border: 0; scrolling: no;"> </iframe>
	</div>
</section>


<jsp:include page="./footer.jsp" />