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
	 <form action='update' method='post'>
	   <input type='hidden' name='no' value='1' />
	    제목 : <input type='text' name='title' value='구글 알파고, 바둑 짱먹다.' /><br>
	    글쓴이 : <input type='text' name='writer' readonly value='알파고' /><br>
	    내용 : <br>
	   <textarea name='content' rows='5' cols='70'>내가 이세돌 이김.</textarea><br>
	   <button type='submit'>수정</button>
	 </form>
	 <a href='list'>목록</a>
</body>
</html>




