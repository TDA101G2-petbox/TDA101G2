<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.blog.message.model.*"%>

<%
  MessageVO messageVO = (MessageVO) request.getAttribute("messageVO");
%>
<%-- <%= empVO == null %>--${empVO.deptno} --%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�d����Ʒs�W - addMessage.jsp</title>

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
		 <h3>�d����Ʒs�W - addMessage.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/front-end/blog/Message/select_page.jsp"><img src="images/tomcat.png" width="100" height="100" border="0">�^����</a></h4>
	</td></tr>
</table>

<h3>��Ʒs�W:</h3>

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
		<td>�|��id:</td>
		<td><input type="TEXT" name="member_id" size="45" value="MB00001"/></td>
	</tr>
	<tr>
		<td>�峹id:</td>
		<td><input type="TEXT" name="post_id" size="45" value="PID00010"/></td>
	</tr>
	<tr>
		<td>�d�����e:</td>
		<td><textarea style="width:350px ; height:50px" name="message_content"></textarea></td>
	</tr>
</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="�e�X�s�W"></FORM>
</body>
</html>