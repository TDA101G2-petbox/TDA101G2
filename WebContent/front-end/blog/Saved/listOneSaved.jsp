<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.blog.saved.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
  SavedVO savedVO = (SavedVO) request.getAttribute("savedVO"); 
%>

<html>
<head>
<title>���ø�� - listOneSaved.jsp</title>

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
		 <h3>���ø�� - listOneSaved.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>����id</th>
		<th>�|��id</th>
		<th>�峹id</th>
		<th>���îɶ�</th>
	</tr>	
	<tr>
		<td><%=savedVO.getSaved_post_id()%></td>
		<td><%=savedVO.getMember_id()%></td>
		<td><%=savedVO.getPost_id()%></td>
		<td><%=savedVO.getCreate_time()%></td>
		
<%-- 		<td>${savedVO.saved_post_id}</td> --%>
<%-- 		<td>${savedVO.member_id}</td> --%>
<%-- 		<td>${savedVO.post_id}</td> --%>
<%-- 		<td>${savedVO.create_time}</td> --%>
	</tr>
</table>

</body>
</html>