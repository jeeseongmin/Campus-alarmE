<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:useBean id="currTime" class="java.util.Date" />
<fmt:formatDate value="${currTime}" var="currTime" pattern="yyyy-MM-dd HH:mm:ss" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <title>Detailed Page</title>
</head>
<style>
    * {
        margin:5px;
    }
    /*
    @media ( max-width: 1000px ) {
        body { background-color: red; }
    }
    */

    img {
        display:block;
        position:relative;
        width:80%;
        margin:0 auto;
    }
    hr {
        border: 0;
        height:2px;
        background: #ccc;
    }

    input {
        padding:10px;
        font-size:medium;
        color: white;
        width:30%;
        border: 0 solid skyblue;
        border-radius: 15px;
        background-color:skyblue;
        text-align: center;
        display : block;
        margin : 0 auto;
    }

    .header-container {
        text-align: center;
    }

    .swiper-container {
        width:100%;
    }

    .swiper-slide {
        width:auto;
        color: whitesmoke;
        margin:0px;
        border: 0px solid skyblue;
        border-radius: 15px;
        background-color:skyblue;
        padding:5px;
        font-size:medium;
        text-align:center;
        display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
        align-items:center; /* 위아래 기준 중앙정렬 */
        justify-content:center; /* 좌우 기준 중앙정렬 */
    }

    .info-container {
        margin:5px;
        font-size: medium;
    }

    .info-container hr {
        border: 0;
        height:1.5px;
        background: #ccc;
    }
      .close_button_image {
        width:15px;
        padding-top:10px;
        margin-bottom:-15px!important;
        float:right;
        margin-right:15px;
        cursor:pointer;	
      }
    .info-name {
        font:bold;
    }

    .info-contents {
        word-wrap: break-word;
    }

    .info-textarea {
        align-items: right;
        border: none;
        background-color:whitesmoke;
        width: 80%;
        height: 100px;
    }

</style>
<body>
    <div>
    <image type="button" class="close_button_image" style="cursor:pointer;" src="../resources/images/close.png" onclick="location.href='/schedule'">
    <c:forEach var="l" items="${list}">
        <h1 class="header-container">${l.title}</h1>
        <hr>
            <img src="../${l.image_url}">
        <hr>

        <!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

        <div class="swiper-container">
            <div class="swiper-wrapper">
                <button class="swiper-slide">#Hash1</button>
                <button class="swiper-slide">#Ha2</button>
                <button class="swiper-slide">#tag3</button>
                <button class="swiper-slide">#Hashtag4</button>
                <button class="swiper-slide">#Hashtag5</button>
            </div>
        </div>

        <hr>
        <div class="info-container">
            <h3>상세 정보</h3>
            <hr>
                <span class="info-name">이름          :</span><span class="info-contents">${l.title}</span>
                <hr>
                <span class="info-name">접수 기간          :</span><span class="info-contents">${fn:substring(l.apply_start,0,10)} ~ ${fn:substring(l.apply_end,0,10)}</span>
                <hr>
                <span class="info-name">행사 기간          :</span><span class="info-contents">${fn:substring(l.event_start,0,10)} ~ ${fn:substring(l.event_end,0,10)}</span>
                <hr>
                <span class="info-name">대상          :</span><span class="info-contents">한동대학교 전산전자공학부생</span>
                <hr>
                <span class="info-name">연락          :</span><span class="info-contents">054-260-1470 (hih1470@handong.edu)</span>
                <hr>
                <span class="info-name">신청          :<a class="info-contents" href="http://csee.handong.edu/" >URL</a>
                <hr>
                <span class="info-name">상세          :</span><textarea class="info-textarea"></textarea>
        </div>
<!-- 
        <form>
            <input type="button" value="돌아가기">
        </form>
 -->
	</c:forEach>
    </div>
    <script>
    new Swiper('.swiper-container', {

        slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
        spaceBetween : 5, // 슬라이드간 간격
        slidesPerGroup : 5, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank : true,

        loop : false // 무한 반복

    });
</script>
</body>
</html>
