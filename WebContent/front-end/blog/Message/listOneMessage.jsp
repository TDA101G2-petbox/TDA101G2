<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.blog.message.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
  MessageVO messageVO = (MessageVO) request.getAttribute("messageVO"); //FollowServlet.java(Concroller), �s�Jreq��followVO����
%>

<html>
<head>
<title>�d����� - listOneMessage.jsp</title>

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
		 <h3>�d����� - listOneMessage.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/blog/Message/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�d��id</th>
		<th>�|��id</th>
		<th>�峹id</th>
		<th>�d�����e</th>
		<th>�d���ɶ�</th>
		<th>��s�ɶ�</th>
	</tr>	
	<tr>
		<td><%=messageVO.getMessage_id()%></td>
		<td><%=messageVO.getMember_id()%></td>
		<td><%=messageVO.getPost_id()%></td>
		<td><%=messageVO.getMessage_content()%></td>
		<td><%=messageVO.getCreate_time()%></td>
		<td><%=messageVO.getUpdate_time()%></td>
	</tr>
</table>

</body>
</html>