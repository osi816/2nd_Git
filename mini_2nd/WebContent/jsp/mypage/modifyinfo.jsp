<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.form-horizontal{
	width: 520px;
	padding-right:15px;
	padding-left: 15px;
	margin-right:auto;
	margin-left:auto;
	margin-top:100px;
	margin-bottom:auto;
	}
	.sign-form{
	size:30;
	}
	h2{
	text-align: center;
	margin-bottom: 60px;
	}
</style>
</head>
<body>
<form class="form-horizontal" action="Test03.html">
  <h2>회원정보수정</h2>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">PW</label>
    <div class="col-sm-10">
      <input type="password" class="sign-form" id="inputPW" placeholder="수정할 비밀번호를 입력하세요"  size="30">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">PW 확인</label>
    <div class="col-sm-10">
      <input type="password" class="sign-form" id="checkPW" placeholder="비밀번호를 한번 더 입력하세요" size="30">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">NAME</label>
    <div class="col-sm-10">
      <input type="text" class="sign-form" id="inputName" placeholder="수정할 이름을 입력하세요"  size="30">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label" >E-MAIL</label>
    <div class="col-sm-10">
      <input type="text" class="sign-form" id="inputEmail" placeholder="수정할 E-MAIL주소를 입력하세요"  size="30">
    </div>
  </div>
</form>
</body>
</html>