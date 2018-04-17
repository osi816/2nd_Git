<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	 <hr />
	 <form action='update' method='post'>
	   <input type='hidden' name='no' value='1' />
	    제목 : <input type='text' name='title' value='구글 알파고, 바둑 짱먹다.' /><br>
	    글쓴이 : <input type='text' name='writer' readonly value='알파고' /><br>
	    내용 : <br>
	   <textarea name='content' rows='5' cols='70'>내가 이세돌 이김.</textarea><br>
	   <button type='submit'>수정</button>
	 </form>
	 <a href='list'>목록</a>
</body>
</html>




