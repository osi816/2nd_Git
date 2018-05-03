<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	.form-p{
	padding-left:200px;
	}
</style>
</head>
<body>
<form name="mForm" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/login/login" 
onsubmit="return doAction()">
<p class="form-p" style="color: red;">${errMsg}</p>
  <div class="form-group">
    <label for="inputID" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputID" name="id" placeholder="아이디를 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPW" class="col-sm-2 control-label">PW</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPW" name="pw" placeholder="비밀번호를 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10"> 
      <button class="btn btn-default" >Login</button>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>   
          <input type="checkbox"> ID 저장        
          <a href="<c:url value="/findaccform" />">ID/PW 찾기</a>
	      <a href=''>네이버ID로 로그인</a>
        </label>
      </div>
    </div>
  </div>
  <script>
  
	var f = document.mForm;
	function doAction() {
		if (f.id.value == "") {
			alert("아이디 입력하세요")
			f.id.focus()
			return false;
		}
		if (f.pw.value == "") {
			alert("비밀번호 입력하세요")
			f.pw.focus()
			return false;
		}	
	
	}
  </script>
</form>
</body>
</html>

