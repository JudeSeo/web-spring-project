<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>RESERVATION_PAGE_ANDYversion</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/reserve_copy.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="C:\Users\andya\Documents\īī���� ���� ����\clinic\css\main.css"> -->

<script>
	function cancel(rc_num) {
		if (confirm("������ ����ϰڽ��ϱ�?")) {
			location.href = "cancel?rc_num=" + rc_num;
		}
		self.close();
	}
</script>
<div class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="one">
				<div class="inner">
					<header class="major">
						<h1>${reserveClinic.c_name}</h1>
					</header>

					<!-- Content -->
					<div class="row">
						<div class="col-6 col-12-small andysize">
							<h3>��û����</h3>
							<input type="hidden" name="problem"
								value="${reserveClinic.problem}">${reserveClinic.problem}<br />
							<br /> <input type="hidden" name="c_name"
								value="${reserveClinic.c_name}"> <input type="hidden"
								name="c_num" value="${reserveClinic.c_num}"> <input
								type="hidden" name="c_tel" value="${reserveClinic.c_tel}">
							<!-- <div>
                                <input type="text" placehoder="�˻��� �Է�">
                                <button>�˻�</button>

                            </div> -->

							<!-- <div class="dropdown">
									<button class="dropbtn">Ÿ��</button>
									<div class="dropdown-content">
										<a href="#">�׸�2</a> <a href="#">�׸�3</a> <a href="#">�׸�4</a> <a
											href="#">�׸�5</a>
											
									</div>
								</div> -->

							<h3>��������</h3>
							<p>
								<input type="hidden" name="date1" value="${reserveClinic.date1}">${reserveClinic.date1}
							</p>
							<p>
								<input type="hidden" name="time1" value="${reserveClinic.time1}">${reserveClinic.time1}
							</p>


						</div>
						<div class="col-6 col-12-small">
							<input type="hidden" name="id" value="${reserveClinic.id}">
							NAME<br> <input class="box__andy" type="hidden" name="name"
								value="${reserveClinic.name}">${reserveClinic.name} <br>Pet's
							kind<br> <input type="hidden" name="pet_kind"
								value="${reserveClinic.pet_kind}">${reserveClinic.pet_kind}
							<br>Pet's name<br> <input type="hidden" name="pet_name"
								value="${reserveClinic.pet_name}">${reserveClinic.pet_name}<br>Pet's
							age<br> <input type="hidden" name="pet_age"
								value="${reserveClinic.pet_age}">${reserveClinic.pet_age}
							<br /> <br /> <br /> <br /> <a
								href="editForm?rc_num=${reserveClinic.rc_num}">�������</a> <a
								href="javascript:cancel('${reserveClinic.rc_num}')">�������</a>

						</div>

					</div>
					<hr class="major" />
				</div>

				<!-- Scripts -->
				<script src="assets/js/jquery.min.js"></script>
				<script src="assets/js/jquery.scrolly.min.js"></script>
				<script src="assets/js/jquery.scrollex.min.js"></script>
				<script src="assets/js/browser.min.js"></script>
				<script src="assets/js/breakpoints.min.js"></script>
				<script src="assets/js/util.js"></script>
				<script src="assets/js/main.js"></script>
			</section>
		</div>
	</div>