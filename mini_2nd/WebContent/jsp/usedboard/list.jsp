<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html> 
<head>
  <meta charset='utf-8'>

<title>bit news</title>

</head>
<body>
	 <div style="
		text-align: center;
		font-size: 40px;
		font-weight: bold;"
	 > 
	 	중고장터 게시판
	 </div>
	    전체 1개<br>
	  <hr>
	  <table class="table">
	  <tr>
	    <th> 
	   		<input type="checkbox" id="all" name="all" value="all">
	    </th>
	    <th>번호</th>
	    <th>말머리</th>
	    <th>제목</th>
	    <th>글쓴이</th>
	    <th>등록일</th>
	    <th>조회수</th>
	  </tr>
	  <tr>
	  	<td><input type="checkbox" id="f1" name="fruits" value="2" /></td>
		<td>2</td>
		<td>삽니다</td>
	    <td><a href='detail.jsp'>아이폰 7 구입하고 싶습니다.</a></td>
		<td>불쌍한 호구</td>
		<td>2018-04-20</td>
		<td>1</td>
	  </tr>
	  <tr>
		<td><input type="checkbox" id="f1" name="fruits" value="1" /></td>
		<td>1</td>
		<td>팝니다</td>
	    <td><a href='detail.jsp'>캐논 6d 4만컷 60에 팝니다.</a></td>
		<td>중고나라 사기꾼</td>
		<td>2018-04-18</td>
		<td>1</td>
	  </tr>

		  <tr>

		  </tr>

		</table>
		<a href='writeForm.jsp'>글쓰기</a>
</body>
</html>