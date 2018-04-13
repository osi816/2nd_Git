<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  #buttons{text-align: right;}
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">마이페이지</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">회원정보</a></li>
      <li><a href="#">스크랩</a></li>
      <li><a href="#">내 글</a></li>
      <li><a href="#">내 댓글</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    </ul>
  </div>
</nav>

<footer id="buttons">
<button type="button" class="btn btn-default" onclick="location.href='#'">회원정보 수정</button>
<button type="button" class="btn btn-default" onclick="location.href='#'">비밀번호 변경</button>
<button type="button" class="btn btn-default" onclick="location.href='#'">탈퇴</button>
</footer>
</body>
</html>