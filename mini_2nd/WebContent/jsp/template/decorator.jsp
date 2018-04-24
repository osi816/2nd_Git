<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title" /></title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<sitemesh:write property="head" />
<style type="text/css">
	.tab {
		height: 100px;
		text-align: center;
		font-size: 48px;
		line-height: 100px;
		font-weight: bold;
	}
	.content{
		height: 100%;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	.space {
		height: 20px;
	}
	.col-md-8 > a:HOVER {
		text-decoration: none;
	}
	li {
		list-style: none;
	}
	.row > ul > li {
		float: left;
	}
	.ck {
		float: left;
		line-height: 20px;
	}
</style>
</head>
<body>
		<div class="header">
			<c:import url="/jsp/decorator/topMenu.jsp" />
		</div>
	
		<div class="content">
			<sitemesh:write property="body" />
		</div>
		
		<div class="footer">
			<c:import url="/jsp/decorator/footer.jsp" />
		</div>
</body>
</html>