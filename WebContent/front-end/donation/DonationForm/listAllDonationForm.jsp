<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.donation.donation_form_info.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
    Donation_form_infoService DonationFormSvc = new Donation_form_infoService();
    List<Donation_form_infoVO> list = DonationFormSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<jsp:useBean id ="npoSvc" scope="page" class="com.donation.npo_info.model.Npo_infoService"/>


<html>
<head>
<title>�Ҧ����ڪ���� - listAllDonationForm.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>�����m�߱ĥ� EL ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ����ڪ���� - listAllAdoptForm.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/donation/DonationForm/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table>
	<tr>
		<th>���ڤ��</th>
		<th>���ڦa��</th>
		<th>���کm�W</th>
		<th>���ڪ��B</th>
		<th>�I�ڤ覡</th>
<!-- 		<th>�W����s</th> -->

	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="donation_form_infoVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${donation_form_infoVO.create_time}</td> 
			<td>${npoSvc.getOneNpo_info(donation_form_infoVO.npo_id).npo_name}</td>		
			<td>${donation_form_infoVO.donator_name}</td>
			<td>${donation_form_infoVO.donation_money}</td>
			<td>${donation_form_infoVO.payment}</td>		
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/DonationForm/donationform.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="adopt_id"  value="${adopt_form_infoVO.adopt_form_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/AdoptForm/adoptform.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="adopt_form_id"  value="${adopt_form_infoVO.adopt_form_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>