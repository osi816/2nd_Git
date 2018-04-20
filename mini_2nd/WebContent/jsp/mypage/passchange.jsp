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
</head>
<body>
<div class="container">
  <h2>비밀번호 변경</h2>
  <form>
    <div class="form-group">
      <label for="pwd">현재 비밀번호</label>
      <input type="password" class="form-control" id="pwd1" placeholder="Enter password">
    </div>
    <div class="form-group">
      <label for="pwd">비밀번호 재확인</label>
      <input type="password" class="form-control" id="pwd2" placeholder="Enter password again">
    </div>
    <div class="form-group">
      <label for="pwd">새로운 비밀번호</label>
      <input type="password" class="form-control" id="npwd1" placeholder="Enter new password">
    </div>
    <div class="form-group">
      <label for="pwd">새로운 비밀번호 재확인</label>
      <input type="password" class="form-control" id="npwd2" placeholder="Enter new password again">
    </div>
    <button type="submit" class="btn btn-default" onclick="location.href='비밀번호수정관련 서블릿으로'">회원탈퇴</button>
    <button type="button" class="btn btn-default" onclick="location.href='userinfo.jsp'">취소</button>
  </form>
</div>

</body>
</html>