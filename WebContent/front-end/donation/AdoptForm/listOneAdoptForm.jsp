<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.donation.adopt_form_info.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
  Adopt_form_infoVO adopt_form_infoVO = (Adopt_form_infoVO) request.getAttribute("adopt_form_infoVO"); //EmpServlet.java(Concroller), �s�Jreq��empVO����
%>

<html>
<head>
<title>�{�i����� - listOneAdoptForm.jsp</title>

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
	width: 600px;
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

<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�{�i����� - ListOneAdoptForm.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/donation/AdoptForm/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�{�i���s��</th>
		<th>�{�i�ʪ��m�W</th>
		<th>�{�i�H</th>
		<th>�I�ڤH</th>
		<th>�{�i���B</th>
		<th>�I�ڤ覡</th>
		<th>�O�_�ݭn�����Ү�</th>
		<th>��a�a�}</th>
		<th>�q�l�l��</th>
	</tr>
	<tr>
		<td><%=adopt_form_infoVO.getAdopt_form_id()%></td>
<%-- 		<td>${adoptVO.getOneAdopt}(adopt_form_infoVO.adopt_id).adopt_name}</td> --%>
		<td><%=adopt_form_infoVO.getAdopt_person()%></td>
		<td><%=adopt_form_infoVO.getPayadopt_person()%></td>
<%-- 		<td>${adoptVO.getOneAdopt}(adopt_form_infoVO.adopt_id).adopt_money}</td> --%>
		<td><%=adopt_form_infoVO.getAdopt_payment()%></td>		
		<td><%=adopt_form_infoVO.getAdopt_certificate()%></td>
		<td><%=adopt_form_infoVO.getAddress()%></td>
		<td><%=adopt_form_infoVO.getAdopt_email()%></td>
		
	</tr>
</table>

</body>
</html>