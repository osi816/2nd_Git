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
  <form action="passchange">
    <div class="form-group">
      <label for="pwd">현재 비밀번호</label>
      <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password">
    </div>
    <div class="form-group">
      <label for="pwd">비밀번호 재확인</label>
      <input type="password" class="form-control" id="pwd-check" placeholder="Enter password again">
    </div>
    <div class="form-group">
      <label for="pwd">새로운 비밀번호</label>
      <input type="password" class="form-control" id="npwd" name="npwd" placeholder="Enter new password">
    </div>
    <div class="form-group">
      <label for="pwd">새로운 비밀번호 재확인</label>
      <input type="password" class="form-control" id="npwd-check" placeholder="Enter new password again">
    </div>
    <button type="submit" class="btn btn-default">변경 완료</button>
    <button type="button" class="btn btn-default" onclick="location.href='userupdate'">취소</button>
  </form>
</div>

 <script>
        window.onsubmit = function(){
            var pwd = document.getElementById('pwd').value;
            var pwdcheck = document.getElementById('pwd-check').value
            
            var npwd = document.getElementById('npwd').value;
            var npwdcheck = document.getElementById('npwd-check').value;

            if(pwd == ""|| pwdcheck ==""||npwd==""||npwdcheck==""){
            	alert("빈칸을 채워주십시오")
            	return false;
            }else if(pwd!=pwdcheck){
            	alert("이전 비밀번호가 일치하지 않습니다.");
            	return false;
            }else if(pwd!=pwdcheck || npwd!=npwdcheck){
            	alert("새로운 비밀번호가 일치하지 않습니다.");
            	return false;
            }else{
            	return true;
            }
            /*if(pass==passCheck){
                alert("성공")
            }else{
                alert('다시 입력해주세요.')
                return false;
            }*/
        }
        </script>

</body>
</html>