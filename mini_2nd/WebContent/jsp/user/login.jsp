<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
	.form-horizontal{
	width: 500px;
	padding-right:15px;
	padding-left: 15px;
	margin-right:auto;
	margin-left:auto;
	margin-top:150px;
	margin-bottom:auto;
	}
	.form-group .btn{
	width:388px ;
	}
	div.checkbox > label > input, div.checkbox > label > a {
		margin-left: 60px;
	}
</style>
</head>
<body>
<form class="form-horizontal" action="Test03.html">
  <div class="form-group">
    <label for="inputID" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputID" placeholder="아이디를 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">PW</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPW" placeholder="비밀번호를 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10"> 
      <button class="btn btn-default">Login</button>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>   
          <input type="checkbox"> ID 저장        
          <a href='/mini_2nd/jsp/user/findaccount.jsp'>ID/PW 찾기</a>
	      <a href=''>네이버ID로 로그인</a>
        </label>
      </div>
    </div>
  </div>
</form>
</body>
</html>