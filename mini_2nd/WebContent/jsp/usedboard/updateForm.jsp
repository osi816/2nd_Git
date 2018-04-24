<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8'>

<title>bit news</title>

</head>
<body>

	 <hr />

	 <hr />
	 <form action='update' method='post'>
	   <input type='hidden' name='no' value='1' />
	    제목 : <input type='text' name='title' value='미니프로젝트 화이팅' /><br>
	    말머리 : <select name="head">
				<option value="">선택</option>
				<option value="1">팝니다</option>
				<option value="2">삽니다</option>
			</select><br>
	    글쓴이 : <input type='text' name='writer' readonly value='중고나라 사기꾼' /><br>
	    내용 : <br>
	   <textarea name='content' rows='5' cols='70'>캐논 6d 4만컷 60에 팝니다.</textarea><br>
	   <button type='submit'>수정</button>
	 </form>
	 <a href='list'>목록</a>
</body>
</html>




