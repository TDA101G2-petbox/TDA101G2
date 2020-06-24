<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.donation.adopt_form_info.model.*"%>
<%@ page import="com.donation.adopt_info.model.*"%>

<%
	Adopt_form_infoVO adopt_form_infoVO = (Adopt_form_infoVO) request.getAttribute("adopt_form_infoVO");
%>

<%
	String adopt_id = request.getParameter("adopt_id");
	Adopt_infoService npoSvc = new Adopt_infoService();
	Adopt_infoVO adopt_infoVO = npoSvc.getOneAdopt_info(adopt_id);
	pageContext.setAttribute("adopt_infoVO", adopt_infoVO);
%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front-end/member/css/headerNfooter.css">
	
<title>Insert title here</title>
<style>
div.bs-example {
	margin: 100px;
}

body {
	overflow-x: hidden;
}

div.bac {
 	height: 1000px;  
	background-repeat: no-repeat;
 	background-position: center; 
	background-size: contain
}

div.container{
/*   border: 1px solid red; */
}
div.row1{
position: relative;
    top: 100px;
    right: 300px;}
    span.error{
    color:red;}

body.background-white{
	overflow-x: hidden;
	background-color: white;
}
</style>


</head>
<body>
<body class="background-white">
<%@ include file="/front-end/member/header.jsp"%>
<div class="container" >
<div class="row1">
<i class="fas fa-bone"></i>
<a href="<%=request.getContextPath()%>/front-end/donation/Adopt/Alladopt.jsp">�ʪ��{�i</a><span> > �{�i���</span>

</div>
</div>
<div class="container" >
		<div class="row bac justify-content-start align-items-center" style="background-image:url('<%=request.getContextPath()%>/resources/images/box.png')">
	
	<div class="container" >
		<div class="row justify-content-center">
				<div class="bs-example ">

					<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/AdoptForm/adoptform.do" name="form1">
						<div class="divforp">
							<div class="form-group">
								<p class="p0">
									${adopt_infoVO.adopt_name}: <input class="i0" type="TEXT" name="adopt_id" size="45"
										value="${adopt_infoVO.adopt_id}" readonly="readonly"
										style="border-style: none" />
								</p>
							</div>
							<div class="form-group">
								<p class="p1">
									�{�i�H�m�W:<input class="i1" type="TEXT" name="adopt_person"
										size="45" /><span class="error">${errors.adopt_person}</span>
								</p>
							</div>
							<div class="form-group">
								<p class="p2">
									�Q������:<input class="i2" type="TEXT" name="adopt_talk" size="45" /><span
										class="error">${errors.adopt_talk}</span>
								</p>
							</div>
							<div class="form-group">
								<p class="p3">
									�I�ڤH�m�W:<input class="i3" type="TEXT" name="payadopt_person"
										size="45" /><span class="error">${errors.payadopt_person}</span>
								</p>
							</div>
							<div class="form-group">
								<p class="p4">
									�p���q��:<input class="i4" type="TEXT" name="adopt_phone_num"
										size="45" /><span class="error">${errors.adopt_phone_num}</span>
								</p>
							</div>
							<div class="form-group">
								<p class="p5">
									�I�ڤ覡:<input type="radio" name="adopt_payment" value="�H�Υd"
										size="45" style="margin-left: 90px;" />�H�Υd<input type="radio"
										name="adopt_payment" value="�ĤT���I" size="45"
										style="margin-left: 90px" />�ĤT���I<span class="error">${errors.adopt_payment}</span>
								</p>
							</div>
							<div class="form-group">
								<p class="p6">
									�O�_�ݭn�����Ү�:<input type="radio" name="adopt_certificate" value="�O"
										size="45" style="margin-left: 26px;" />�O<input type="radio"
										name="adopt_certificate" value="�_" size="45"
										style="margin-left: 123px" />�_
								</p>
								<span class="error">${errors.adopt_certificate}</span>
							</div>
							<div class="form-group">
								<p class="p7">
									�q�l�H�c:<input class="i5" type="TEXT" name="adopt_email" size="45" /><span
										class="error">${errors.adopt_email}</span>
								</p>
							</div>
							<div class="form-group">
								<p class="p8">
									��a�a�}:<input class="i6" type="TEXT" name="address" size="45" /><span
										class="error">${errors.address}</span>
								</p>
							</div>
							<input type="hidden" name="action" value="insert"> <input class="p9" type="submit" value="�e�X�s�W">
						</div>
					</FORM>
				</div>
			</div>
		</div>
	</div>
</div>
	<%@ include file="/front-end/member/footer.jsp"%>

</body>
</html>