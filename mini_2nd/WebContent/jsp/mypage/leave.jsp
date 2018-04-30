<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>회원탈퇴</h2>
  <form action="leave">
    <div class="form-group">
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="form-group">
      <label for="pwd">비밀번호 재확인</label>
      <input type="password" class="form-control" id="pwd-check" placeholder="Enter password">
    </div>
    <button type="submit" class="btn btn-default">회원탈퇴</button>
    <button type="button" class="btn btn-default" onclick="location.href='mypagemove'">취소</button>
  </form>
</div>
<script>
window.onsubmit = function(){
    var pwd = document.getElementById('pwd').value;
    var pwdcheck = document.getElementById('pwd-check').value
    
    if(pwd == ""|| pwdcheck ==""){
    	alert("빈칸을 채워주십시오")
    	return false;
    }else if(pwd!=pwdcheck){
    	alert("이전 비밀번호가 일치하지 않습니다.");
    	return false;
    }else{
    	return true;
    }
}
</script>
</body> 
</html>