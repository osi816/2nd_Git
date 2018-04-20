<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html> 
<html>
<head>
  <meta charset='utf-8'>
<title>bit news</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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

</style>
</head>
<body>
	<div class="container-fluid space"></div>
	<div class="container">
		<div class="row tab">
			<div class="col-md-2"></div>
			<div class="col-md-8"><a href="index.html">bit News</a></div>
			<div class="col-md-2"></div>
		</div>
	</div>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Bit News</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
<!--         <li><a href="#">Link <span class="sr-only">(current)</span></a></li> class="active" 클릭시 활성화 -->
        <li><a href="http://localhost:8000/list.do">BLOTER</a></li>
        <li><a href="http://www.hellodd.com/">hellDD</a></li>
        <li><a href="http://localhost:8000/list.do">아이뉴스 24</a></li>
        <li><a href="http://localhost:8000/list.do">디지털 타임스</a></li>
        <li><a href="http://localhost:8000/list.do">ZD Net Korea</a></li>
        <li><a href="http://localhost:8000/list.do">디지털 데일리</a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 유저공간 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="http://localhost:8000/mini_2nd/jsp/freeboard/list.jsp">자유게시판</a></li>
            <li><a href="http://localhost:8000/mini_2nd/jsp/usedboard/list.jsp">중고장터</a></li>
            <li><a href="http://localhost:8000/mini_2nd/jsp/articleboard/list.jsp">시민기사 게시판</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Search</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">회원가입</a></li>
        <li><a href="login.html">로그인</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav> 
	 <hr />
	 번호 :  1<br>
	 글쓴이 : 중고나라 사기꾼<br>
	 말머리 : 팝니다<br>
	 제목 : 캐논 6d 4만컷 60에 팝니다.<br>
	 내용 : 저 사기꾼 아니에요.<br>
	 등록일 : 2018-04-18<br><br>
	 조회수 : 1<br>
	 첨부파일 : 
	 <c:forEach var="file" items="${fileList}">
	 	<a href="/00_board/common/file/down?path=${file.filePath}&sName=${file.systemName}&dName=${file.oriName}">${file.oriName}</a>(${file.fileSize} bytes)<br>
	 </c:forEach>
	 <br>
	 <hr />
	 <a href='updateForm.jsp'>수정</a>
	 <a href='delete.jsp'>삭제</a>
	<a href='list.jsp'>목록</a>
		<div id="comment">
			<form method="post" action="commentRegist">
				<input type="hidden" name="no" value="2" />	
				<table width="70%">
				<tr>
					<td><input type="text" name="writer" /></td>
					<td><textarea name="content" rows="2" cols="60"></textarea></td>
					<td><input type="submit" value="등록" /></td>
				</tr>	
				</table>
			</form>
		</div>
		
		<form action="commentUpdate" method="post">
			<input type="hidden" name="no" value="${board.no}" />
			<input type="hidden" name="commentNo" value="${commentNo}" />
		<div id="commentList">
			
		  <table width='80%' border='1'>
		  <tr>
			<c:forEach var="comment" items="${commentList}">
			<c:choose>
		  		<c:when test="${commentNo eq comment.commentNo}">	
					<tr>
					  <td><c:out value="${comment.writer}" /></td>
					  <td>
					  	<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
					  </td>
					  <td colspan="2">
					  	  <input type="submit" value="수정" />	
					  </td>
					 </tr>
			 	</c:when>
			 	<c:otherwise>
					<tr>
					  <td><c:out value="${comment.writer}" /></td>
					  <td>
					  		<c:out value="${comment.content}" /></td>
					  <td><fmt:formatDate var="regDate" value="${comment.regDate}" 
					                      pattern="yyyy-MM-dd HH:mm:ss" />
					      <c:out value="${regDate}" />
					  </td>
					  <td>
					  	  <a href="commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
					  	  <a href="detail?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	
					  </td>
					 </tr>
			 	</c:otherwise>
			 </c:choose>	
			 </c:forEach>
			 <c:if test="${empty commentList}">
			 <tr>
			    <td colspan='4'>댓글이 존재하지 않습니다.</td>
			 </tr>
		 	</c:if>
		 </table>
		</div>
		</form>
</body>
</html>




