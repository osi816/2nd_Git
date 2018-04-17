<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
            <li><a href="#">자유게시판</a></li>
            <li><a href="#">중고장터</a></li>
            <li><a href="#">시민기사 게시판</a></li>
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
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10 content">
				<table class="table table-hover">
					<tr>
						<th> </th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<tr onclick='alert(\"hi~\")'>
						<td><img src="http://www.hellodd.com/upload/news/201804/thumb/thumb_120x73_13bae57a535266706771aad9ba9ca3181.png"/></td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Css 라이브러리</td>
						<td>이정훈</td>
						<td>2018.03.30</td>
						<td>123</td>
					</tr>
				</table>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</body>
</html>