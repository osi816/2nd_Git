<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
  <h2>회원가입</h2>
  <div class="form-group">
    <label for="inputID" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-10">
      <input type="text" class="sign-form" id="inputID" placeholder="아이디를 입력하세요"  size="30">
      &nbsp;&nbsp;<button>중복확인</button>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">PW</label>
    <div class="col-sm-10">
      <input type="password" class="sign-form" id="inputPW" placeholder="비밀번호를 입력하세요"  size="30">
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
      <input type="text" class="sign-form" id="inputName" placeholder="이름을 입력하세요"  size="30">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label" >E-MAIL</label>
    <div class="col-sm-10">
      <input type="text" class="sign-form" id="inputEmail" placeholder="E-MAIL주소를 입력하세요"  size="30">
      &nbsp;&nbsp;<button>인증</button>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">인증번호</label>
    <div class="col-sm-10">
      <input type="text" class="sign-form" id="confirmNum" placeholder="인증번호를 입력하세요"  size="30">
      &nbsp;&nbsp;<button>확인</button>
    </div>
  </div>
</form>
</body>
</html>