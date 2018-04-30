<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기사 상세페이지</title>
<c:choose>
	<c:when test="${type eq 'hellodd'}">
		<link rel="stylesheet" href="http://www.hellodd.com/views/_css/common.css">
		<link rel="stylesheet" href="http://www.hellodd.com/views/_css/news.css">
		<link rel="stylesheet" href="http://www.hellodd.com/views/_css/template.css">
		<link rel="stylesheet" href="http://www.hellodd.com/views/_css/board.css">
		<link rel="stylesheet" href="http://www.hellodd.com/views/_css/etc.css">
	</c:when>	
<%-- 	<c:otherwise> --%>
	
<%-- 	</c:otherwise> --%>
</c:choose>

</head>
<body>
		<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10 content">
				<div id="newslt">
					<div id="list_area">
						<ul>
						<c:forEach var="list" items="${list}">
							<li>
								<div class="thumb"><a href="newsDetail?no=${list.articleNo}"><img src="${list.articleThumb }" alt="" /></a></div>
								<div class="article">
									<h3><a href="newsDetail?no=${list.articleNo}">${list.articleTitle}</a></h3>
									<span class="txt"><a href="newsDetail?no=${list.articleNo}">${list.articleSummary}</a></span>
									<p class="date_author">${list.articleReporter}<span>|</span>${list.articleDate}</p>
								</div>					
							</li>
						</c:forEach>
						</ul>
					</div> 
				</div> 
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	
</body>
</html>