<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기사 상세페이지</title>
<link rel="stylesheet" href="http://www.hellodd.com/views/_css/common.css">
<link rel="stylesheet" href="http://www.hellodd.com/views/_css/news.css">
<link rel="stylesheet" href="http://www.hellodd.com/views/_css/template.css">
<link rel="stylesheet" href="http://www.hellodd.com/views/_css/board.css">
<link rel="stylesheet" href="http://www.hellodd.com/views/_css/etc.css">
<link rel="stylesheet" href="http://www.hellodd.com/js/css/validationEngine.jquery.css">
<script type="text/javascript" src="http://www.hellodd.com/views/_js/jquery.rolling.js"></script>

	<script type="text/javascript">
	var logged_pid = '0';
	var logged_id = '';
	var logged_gubun = '';
	$(document).ready(function(){
		$(".rollingNews").rolling({
			direction : 'up',
			width : 280, // 배너의 너비
			height : 16, // 배너의 높이
			max_view : 1, // 초기에 보일 배너의 갯수
			speed : 5000 // 속도
		});

		$('.navWrap ul li').bind('mouseenter keyup', function() {
			$(this).addClass('on').siblings().removeClass()
		});
	});
	</script>
</head>
<body>
	<div class="gnbLeft">
		<div id="hdNews">
			<strong class="icons ico_news">news</strong>
			<div class="rollingNews" style="position: relative; width: 280px; height: 16px; overflow: hidden;">
				<ul style="position: absolute; top: 0px; left: 0px; width: 280px;">
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64821">바꾼 난자로 태어난 아이···엄마는 누구입니까?</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64827">포항 5.4 지진, 원인은 지열발전소?</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64822">"우리나라 최초 '우주 발사체' 이름을 지어 주세요" </a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64819">"학문의 대를 잇는다"···'KAIST 초세대 협업 연구실' 개소</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64830">포항지진 원인 지열발전 탓? 국내외 논문 발표</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64820">임플란트용 전기화학 나노 표면처리 기술 개발</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64826">엄마 클래식 아들 랩 원하는 소리만? 해외 車업계 '눈독'</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64823">코셈·위드텍·꿈비·성진테크원 등 글로벌 강소기업으로</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64824">'펩트론 오송바이오파크' 준공···희귀병 신약개발 '시동'</a></li>
					<li style="float: left; position: relative; width: 280px; height: 16px; text-align: left; display: block;"><a href="/?md=news&mt=view&pid=64828">국내 식량 위기 '코앞'···"농업 중장기 R&D 로드맵 긴요" </a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10 content">
			<div id="contents" class="sub_contents">

				<div id="newsvw_header">
					<div class="newsvw_header">
						<div class="newsvw_title">
							<h2 class="newsTitle">${article.articleTitle}</h2>
							<span class="txt newsSubTitle">
								${article.articleSummary}
							</span>
						</div>
					</div>
					<div class="newsvw_info">
						<ul class="clear left_lnb">
							<li>
								
							</li>
						</ul>
						<span class="profile">
							${article.articleReporter}
						</span>
						<span class="newsvw_infodate">
							<span class="insert">작성일 : ${article.articleDate}</span>
						</span>
					</div>
				</div>
				<div id="newsvw">
					<div class="article_body">
						${article.articleContent}
					</div>
					<div class="article_info">
						<span class="articlecopy">저작권자(c) HELLODD, 무단 전재 및 재배포 금지</span>
						<div class="article_aside">
							<span>
								<a href="">스크랩</a> <!-- 스크랩 서블릿으로 이동 -->
							</span>
							<span class="txt_bar">|</span>
							<span>
								<a href="${article.articleUrl}" title="원본기사로 이동" target="_blank">원본기사</a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</body>
</html>