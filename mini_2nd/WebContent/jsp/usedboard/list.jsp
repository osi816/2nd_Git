<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	.title{
		text-align: center;
		font-size: 40px;
		font-weight: bold;
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
	 <div style="
		text-align: center;
		font-size: 40px;
		font-weight: bold;"
	 > 
	 	중고장터 게시판
	 </div>
	    전체 1개<br>
	  <hr>
	  <table class="table">
	  <tr>
	    <th>번호</th>
	    <th>제목</th>
	    <th>글쓴이</th>
	    <th>등록일</th>
	    <th>조회수</th>
	  </tr>
	  <tr>
		<td>1</td>
	    <td><a href='detail.jsp'>캐논 6d 4만컷 60에 팝니다.</a></td>
		<td>중고나라 사기꾼</td>
		<td>2018-04-18</td>
		<td>1</td>
	  </tr>

		  <tr>

		  </tr>

		</table>
		<a href='writeForm.jsp'>글쓰기</a>
</body>
</html>