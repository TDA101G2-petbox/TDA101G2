<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.blog.message.model.*"%>

<%
  MessageVO messageVO = (MessageVO) request.getAttribute("messageVO"); //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�d����ƭק� - updateMessage.jsp</title>

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
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>�d����ƭק� - updateMessage.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/blog/Message/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<h3>��ƭק�:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Message/Message.do" name="form1">
<table>
	<tr>
		<td>�d��id:<font color=red><b>*</b></font></td>
		<td><input type="TEXT" name="message_id" size="45" value="<%=messageVO.getMessage_id()%>" /></td>
	</tr>
	<tr>
		<td>�|��id:</td>
		<td><input type="TEXT" name="member_id" size="45" value="<%=messageVO.getMember_id()%>" /></td>
	</tr>
	<tr>
		<td>�峹id:</td>
		<td><input type="TEXT" name="post_id" size="45" value="<%=messageVO.getPost_id()%>" /></td>
	</tr>
	<tr>
		<td>�d�����e:</td>
		<td><textarea style="width:350px ; height:50px" name="message_content"></textarea></td>
	</tr>
	<tr>
		<td>�d���ɶ�:</td>
		<td><input type="TEXT" name="create_time" size="45" value="<%=messageVO.getCreate_time()%>" /></td>
	</tr>
	<tr>
		<td>��s�ɶ�:</td>
		<td><input type="TEXT" name="update_time" size="45" value="<%=messageVO.getUpdate_time()%>" /></td>
	</tr>
			
	<jsp:useBean id="service" scope="page" class="com.blog.message.model.MessageService" />
</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="message_id" value="<%=messageVO.getMessage_id()%>">
<input type="submit" value="�e�X�ק�"></FORM>
</body>

</html>