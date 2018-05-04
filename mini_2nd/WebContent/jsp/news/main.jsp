<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bit news</title>
</head>
<body>
	
	<div id="sliderFrame">
	    <div id="slider">
			<c:choose>
				<c:when test="${empty sessionScope.user}">
					<img src="<c:url value="/images/헬로디디 주요뉴스.png" />" />
					<img src="<c:url value="/images/전자신문 주요뉴스.png" />" />
					<img src="<c:url value="/images/넥스트데일리 주요뉴스.png" />" />
					<img src="<c:url value="/images/디지털데일리 주요뉴스.png" />" />
					<img src="<c:url value="/images/IT조선 주요뉴스.png" />" />
					<img src="<c:url value="/images/디지털타임스 주요뉴스.png" />" />
					<img src="<c:url value="/images/보안뉴스 주요뉴스.png" />" />
					<img src="<c:url value="/images/블로터 주요뉴스.png" />" />
					<img src="<c:url value="/images/지디넷코리아 주요뉴스.png" />" />
					<img src="<c:url value="/images/키뉴스 주요뉴스.png" />" />
				</c:when>
				<c:otherwise>
					<c:forEach var="list" items="${imgList}">
						<img src="<c:url value="captureimages/${list.imgPath}" />" />
					</c:forEach>
				</c:otherwise>
			</c:choose>
        </div>
        <!--Custom navigation buttons on both sides-->
        <div class="group1-Wrapper">
            <a onclick="imageSlider.previous()" class="group1-Prev"></a>
            <a onclick="imageSlider.next()" class="group1-Next"></a>
        </div>
        <!--nav bar-->
        <div style="text-align:center;padding:20px;z-index:20;">
            <a onclick="imageSlider.previous()" class="group2-Prev"></a>
            <a id='auto' onclick="switchAutoAdvance()"></a>
            <a onclick="imageSlider.next()" class="group2-Next"></a>
        </div>
    </div>
    
    <script type="text/javascript">
//     	console.log(${imgList});
        //The following script is for the group 2 navigation buttons.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>
	
</body>
</html>