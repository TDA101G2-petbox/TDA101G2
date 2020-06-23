<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Message: Home</title>

<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
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

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>Message: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for Message: Home</p>

<h3>��Ƭd��:</h3>
	
<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='<%=request.getContextPath()%>/front-end/blog/Message/listAllMessage.jsp'>List all Messages.</a><br><br></li>
   
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Message/Message.do" >
        <b>��J�d���s��(�p)MID00001:</b>
        <input type="text" name="message_id">
        <input type="hidden" name="action" value="getOneMessage">
        <input type="submit" value="�e�X">
    </FORM>
  </li>
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Message/Message.do" >
        <b>��J�|���s��(�p)MB00001:</b>
        <input type="text" name="member_id">
        <input type="hidden" name="action" value="getByMemberId">
        <input type="submit" value="�e�X">
    </FORM>
  </li>
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Message/Message.do" >
        <b>��J�峹�s��(�p)PID00001:</b>
        <input type="text" name="post_id">
        <input type="hidden" name="action" value="getByPostId">
        <input type="submit" value="�e�X">
    </FORM>
  </li>
  
  <jsp:useBean id="service" scope="page" class="com.blog.message.model.MessageService" />
</ul>


<h3>�d���޲z</h3>

<ul>
  <li><a href='<%=request.getContextPath()%>/front-end/blog/Message/addMessage.jsp'>Add a new Message.</a></li>
</ul>

</body>
</html>