<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/basket.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$('#check_all').click(function(){
	var checked = $('#check_all').is(':checked');
	
	if(checked)
		$('#item').prop('checked',true);
});
		//����Ʈ �������� �̵�
		
		
	$(function(){
			$("#btnList").click(function(){
				location.herf="<%=request.getContextPath()%>
	/goods/list";
			String
			msg = "";
			msg = "�ֹ��� �����Ͽ����ϴ�.";
		});
	});
</script>


<div class="ssall">
	<!--��ü ��ٱ��� ��ǰ��-->
	<hr />
	<c:choose>
		<c:when test="${map.count==0 }">
		��ٱ��ϰ� ����ֽ��ϴ�.
	</c:when>
		<c:otherwise>
			<form name="form1" id="form1" method="post" action="update">
				<div class="hotel_div form-check">
					<br /> <input type="checkbox"
						id="check_all" value="1"> <label>��� ��� ����</label>
				</div>

				<c:forEach var="cart" items="${list}">
					<div>
						<input type="checkbox" id=item> <label>�� 14�� �̻��Դϴ�. </label>
					</div>

					<img src="<%=request.getContextPath()%>/img/${goods.gbsImg}" />
					<div>${cart.gbsName}</div>



					<div style="width: 80px" align="right">
						<fmt:formatNumber pattern="###,###,###" value="${cart.gbsPrice}" />
					</div>



					<div>
						<input type="number" style="width: 40px" name="cartStock"
							value="${cart.cartStock}" min="1"> <input type="hidden"
							name="gbsNum" value="${cart.gbsName }">
					</div>



					<div style="width: 80px" align="right">
						<fmt:formatNumber pattern="###,###,###"
							value="${cart.gbsPrice * cart.cartStock}" />
					</div>



					<a href="delete?cartId=${cart.cartId}">����</a>


				</c:forEach>


				<input type="hidden" name="count" value="${map.count}">

			</form>
		</c:otherwise>
	</c:choose>
</div>

<!--��ٱ��ϻ�ǰ �հ�-->
<hr />
<div>
	<div>
		<!-- sum ���  �ٽ� ����� -->
		��ٱ��� �ݾ� �հ� :
		<fmt:formatNumber pattern="###,###,###" value="${sum}" />
	</div>
</div>
<div class="fff">
	<a href="<%=request.getContextPath()%>/goods/list">��Ӽ����ϱ�</a> <a
		href="<%=request.getContextPath()%>/goods/list">�ֹ��ϱ� </a>

</div>

<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>