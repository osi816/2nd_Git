<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8'>

<title>bit news</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
	.tab {
		height: 100px;
		text-align: center;
		font-size: 48px;
		line-height: 100px;
		font-weight: bold;
	}
	.content{
		height: 100%;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	.space {
		height: 20px;
	}
	.col-md-8 > a:HOVER {
		text-decoration: none;
	}
	li {
		list-style: none;
	}
	.row > ul > li {
		float: left;
	}

</style>
</head>
<body>

	 <hr />
	 <form method='post' action='write' enctype="multipart/form-data">
	    제목 : <input type='text' name='title' size='70' /><br>
	    말머리 : <select name="head">
				<option value="">선택</option>
				<option value="1">팝니다</option>
				<option value="2">삽니다</option>
			</select><br>
	    글쓴이 : <input type='text' name='writer' size='30' /><br>
	    내용 : <textarea name='content' rows='7' cols='70'></textarea><br>
	    첨부파일 : 
	    <input type="file" name="attach1" /><br>
	    <input type="file" name="attach2" /><br>
	   <button type='submit'>등록</button>
	 </form>
</body>
</html>







