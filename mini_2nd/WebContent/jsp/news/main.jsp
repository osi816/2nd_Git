<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bit news</title>
<link href="<c:url value="/jsp/news/4/js-image-slider.css" />" rel="stylesheet" type="text/css" />
<script src="<c:url value="/jsp/news/4/js-image-slider.js" />" type="text/javascript"></script>
<link href="<c:url value="/jsp/news/4/generic.css" />" rel="stylesheet" type="text/css" />
</head>
<body>
	
	<div id="sliderFrame">
	    <div id="slider">
			<img src="<c:url value="/images/slider-1.jpg" />" />
			<img src="<c:url value="/images/slider-2.jpg" />" />
			<img src="<c:url value="/images/slider-3.jpg" />" />
			<img src="<c:url value="/images/slider-4.jpg" />" />
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