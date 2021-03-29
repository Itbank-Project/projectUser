<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/hotelGuide.css" />
<body>

<div id="root">
	<section class="img_wrap">
      <img src="${cpath }/resources/img/hotelGuide.jpg" alt=""/>
    </section>
    <section class="tab_wrap">
      <div class="tab_btn">
        <a class="on one" href="#tab1">예약</a>
        <a class="two" href="#tab2">객실</a>
        <a class="three" href="#tab3">서비스</a>
        <a class="four" href="#tab4">부대시설</a>
      </div>
      <div class="cont_area on" id="tab1">
        <img src="${cpath }/resources/img/hotelGuideIMG/reservaction.jpg" alt=""/>
      </div>
      <div class="cont_area" id="tab2">
        <img src="${cpath }/resources/img/hotelGuideIMG/room.jpg" alt=""/>
      </div>
      <div class="cont_area" id="tab3">
        <img src="${cpath }/resources/img/hotelGuideIMG/service.jpg" alt=""/>
      </div>
      <div class="cont_area" id="tab4">
        <img src="${cpath }/resources/img/hotelGuideIMG/facility.jpg" alt=""/>
      </div>
    </section>
    <section class="img_wrap">
      <img src="${cpath }/resources/img/hotelGuideIMG/02.jpg" alt=""/>
    </section>
 </div>
  <script src="https://cdn.jsdelivr.net/npm/js-cookie@2.2.1/src/js.cookie.min.js"></script>
  <script src="https://cdn.dailyhotel.com/mkt/event/common/jquery.js"></script>
  <script src="${cpath }/resources/js/deeplink.js"></script>
  <script>
    $(document).ready(function () {
      if (deeplink.isWeb) {
        $('.header').addClass('on');
      } else {
        $('.header').removeClass('on');
      }
      $(window).on("scroll", function () {
        var scrollT = $(window).scrollTop();
        var offsetY = $(".tab_wrap").offset().top;

        if (scrollT <= offsetY) {
          $(".tab_btn").removeClass("fixed");
        } else {
          $(".tab_btn").addClass("fixed");
        }
      });
      tab_js();
    });
    function tab_js() {
      var obj = $(".tab_wrap");
      obj.tab = obj.find(".tab_btn>a");
      obj.cont = obj.find(".cont_area");

      obj.tab.click(function () {
        var idx = $(this).index();
        obj.tab.removeClass("on");
        $(this).addClass("on");
        $(".cont_area").removeClass("on");
        $(".cont_area").eq(idx).addClass("on");
        if ($(".tab_btn").hasClass("fixed")) {
          return true;
        } else {
          return false;
        }
      });
    }
  </script>

</body>
</html>
