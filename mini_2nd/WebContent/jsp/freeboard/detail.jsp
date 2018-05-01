<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html> 
<html>
<head>
	<meta charset='utf-8'>
	<title>bit news</title>
</head>
<body>

<hr />
번호 :  ${board.no}<br>
글쓴이 : <c:out value="${board.userId}" /><br>
제목 : <c:out value="${board.title}" /><br>
내용 : <c:out value="${board.content}" /><br>
등록일 : <fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd HH:mm:ss" /><br><br>
조회수 : ${board.viewCnt}<br>
첨부파일 : <c:forEach var="file" items="${fileList}">
	<a href="/mini_2nd/common/file/down?path=${file.filePath}&sName=${file.systemName}&dName=${file.oriName}">${file.oriName}</a>(${file.fileSize} bytes)<br>
	</c:forEach><br>
<hr />
	<a href='updateForm?no=${board.no}'>수정</a>
	<a href='delete?no=${board.no}'>삭제</a>
	<a href='list'>목록</a>
<hr />
	<div id="comment">
		<form method="post" action="commentRegist">
			<input type="hidden" name="no" value="${board.no}" />	
			<table width="70%">
				<tr>
					<td><input type="text" name="writer" /></td>
					<td><textarea name="content" rows="2" cols="60"></textarea></td>
					<td><input type="submit" onclick="doCmt();" value="등록" /></td>
				</tr>	
			</table>
			<script>
				function doCmt() {
					if ( $("textarea").val() == ''){
						alert("내용을 입력하세요");
						return false;
					}
					return true;
				}
			</script>
		</form>
	</div>
		
	<form action="commentUpdate" method="post">
		<input type="hidden" name="no" value="${board.no}" />
		<input type="hidden" name="commentNo" value="${commentNo}" />
		<div id="commentList">
			
		  <table width='80%' border='1'>
		  <tr>
			<c:forEach var="comment" items="${commentList}">
			<c:choose>
		  		<c:when test="${commentNo eq comment.commentNo}">	
				<tr>
					<td><c:out value="${comment.userId}" /></td>
					<td>
					<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
					</td>
					<td colspan="2"><input type="submit" value="수정" /></td>
				</tr>
			 	</c:when>
			 	<c:otherwise>
					<tr>
					  <td><c:out value="${comment.userId}" /></td>
					  <td><c:out value="${comment.content}" /></td>
					  <td><fmt:formatDate var="regDate" value="${comment.regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
					      <c:out value="${regDate}" /></td>
					  <td>
					  	  <a href="commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
					  	  <a href="detail?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	
					  </td>
					 </tr>
			 	</c:otherwise>
			 </c:choose>	
			 </c:forEach>
			<c:if test="${empty commentList}">
			<tr>
			   <td colspan='4'>댓글이 존재하지 않습니다.</td>
			</tr>
		 	</c:if>
		 </table>
		</div>
	</form>
</body>
</html>




