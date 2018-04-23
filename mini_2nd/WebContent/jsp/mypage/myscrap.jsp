<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">마이페이지</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="userinfo.jsp">회원정보 수정</a></li>
      <li class="active"><a href="#">스크랩</a></li>
      <li><a href="usedboard.jsp">내 글</a></li>
      <li><a href="mycomment.jsp">내 댓글</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    </ul>
  </div>
</nav>

<h1>나의 스크랩</h1>
<br>

<div class="w3-container">

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>클립 번호</th>
        <th>제목</th>
        <th>내용</th>
        <th>기사 번호</th>
      </tr>
    </thead>
    <tr>
      <td>1</td>
      <td>사건</td>
      <td>Happened</td>
      <td>687372</td>
    </tr>
    <tr>
      <td>Eve</td>
      <td>94</td>
      <td>123</td>
      <td>123</td>
    </tr>
    <tr>
      <td>Eve</td>
      <td>94</td>
      <td>123</td>
      <td>123</td>
    </tr>
    
  </table>
</div>
</body>
</html>