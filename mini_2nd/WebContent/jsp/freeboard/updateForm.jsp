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
	    글쓴이 : <input type='text' name='writer' readonly value='봉석' /><br>
	    내용 : <br>
	   <textarea name='content' rows='5' cols='70'>정말로 화이팅!</textarea><br>
	   <button type='submit'>수정</button>
	 </form>
	 <a href='list'>목록</a>
</body>
</html>





