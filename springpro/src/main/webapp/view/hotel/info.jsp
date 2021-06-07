<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
   href="<%=request.getContextPath()%>/assets/css/hotel_info.css" />


<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ce7b45f5d2c8595e8ff85665c67a774&libraries=services,clusterer,drawing"></script>

<body class="bodysize">
   <div style="text-align: center;">
      <img src="<%=request.getContextPath()%>/img/${hotel.picture}"
         class="andytest" />
   </div>
   <section id="searchbar" class=searchbar__section>
      <div class="searchbar__box">
         <div class="searchbar__container" style="border: 1px solid black;">
            <ul class="searchbar__menu nav nav-tabs" role="tab">
               <li class="searchbar__menu__item nav-item"><a
                  href="\springpro/member/main?list_id=3">HOME</a></li>
               <li class="searchbar__menu__item nav-item"><a
                  href="\springpro/reserveHotel/reviewform?h_num=${hotel.h_num}"
                  onclick="window.open(this.href, '', 'width=1000, height=1000, left=300, top=150'); return false;">REVIEW</a></li>
               <li class="searchbar__menu__item nav-item"><a
                  href="\springpro/reserveHotel/reserveForm?h_num=${hotel.h_num}"
                  onclick="window.open(this.href, '', 'width=1000, height=1000, left=300, top=150'); return false;">BOOKINGS</a></li>
            </ul>
         </div>

         <div>
            <div class="work__projects">

               <a href="" class="project" target="" data-type="">
                  <div id="map" style="width: 420px; height: 350px;"></div> <script>
                            var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
                            mapOption = {
                                center : new kakao.maps.LatLng(33.450701,
                                        126.570667), // ������ �߽���ǥ
                                level : 3
                            // ������ Ȯ�� ����
                            };

                            // ������ �����մϴ�    
                            var map = new kakao.maps.Map(mapContainer,
                                    mapOption);

                            // �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
                            var geocoder = new kakao.maps.services.Geocoder();

                            // �ּҷ� ��ǥ�� �˻��մϴ�zcczcxzc
                            geocoder
                                    .addressSearch(
                                            '${hotel.h_location}',
                                            function (result, status) {

                                                // ���������� �˻��� �Ϸ������ 
                                                if (status === kakao.maps.services.Status.OK) {

                                                    var coords = new kakao.maps.LatLng(
                                                            result[0].y,
                                                            result[0].x);

                                                    // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
                                                    var marker = new kakao.maps.Marker(
                                                            {
                                                                map : map,
                                                                position : coords
                                                            });

                                                    // ����������� ��ҿ� ���� ������ ǥ���մϴ�
                                                    var infowindow = new kakao.maps.InfoWindow(
                                                            {
                                                                content : '<div style="width:150px;text-align:center;padding:6px 0;">${hotel.h_name}</div>'
                                                            });
                                                    infowindow
                                                            .open(map, marker);

                                                    // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
                                                    map.setCenter(coords);
                                                }
                                            });
                        </script>
                  <div class="project__description">
                     <h3>BOOKING NOW</h3>
                     <span>Stay with ur story</span>
                  </div>
               </a> <a class="project_desc" data-type="front-end" target="blank">
                  <!-- <img class="project__img" src="img/a1.JPG" alt="navbar" /> -->
                  <h3 style="text-align: left; margin-left: -30px;">
                     <br>${hotel.h_name}<br> <br>
                  </h3>
                  <ul>

                     <li style="text-align: left; margin-left: -30px;">ȣ����ġ:
                        ${hotel.h_location}</li>
                     <li style="text-align: left; margin-left: -30px;">ȣ�� ��ȭ ��ȣ:
                        ${hotel.h_tel}</li>
                     <li style="text-align: left; margin-left: -30px;">${hotel.park==1?'���� ����':'���� �Ұ���'}</li>
                     <li style="text-align: left; margin-left: -30px;">${hotel.reserve==1?'���� ����':'���� �Ұ���'}</li>
                     <li style="text-align: left; margin-left: -30px;">${hotel.wifi==1?'�������ͳ� ��� ����':'�������ͳ� ��� �Ұ���'}</li>
                     <li style="text-align: left; margin-left: -30px;">��� ���� �ü�:
                        ${hotel.disability}</li>
                     <li style="text-align: left; margin-left: -30px;">��� ���� �ü�:
                        ${hotel.disability}</li>
                  </ul>
               </a>
            </div>
         </div>
      </div>

   </section>
</body>
<c:forEach var="review" items="${h_review}">

   <div>
      <table class="type04">
         <tr>
            <th scope="row">${review.id}</th>
            <td>${review.rv_desc}</td>
         </tr>
      </table>
   </div>
   <%-- <li>���� ���� : ${review.rv_desc}</li> --%>

</c:forEach>
</div>
<br />
<br />
<br />
<br />