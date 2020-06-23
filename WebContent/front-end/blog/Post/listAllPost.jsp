<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.blog.post.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
    PostService service = new PostService();
    List<PostVO> list = service.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>�Ҧ��峹 - listAllPost.jsp</title>

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
		 <h3>�Ҧ��峹 - listAllPost.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/blog/Post/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
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
		<th>�峹id</th>
		<th>�|��id</th>
		<th>�峹����</th>
		<th>�峹�Ϥ�1</th>
		<th>�峹�Ϥ�2</th>
		<th>�峹�Ϥ�3</th>
		<th>�峹�Ϥ�4</th>
		<th>�峹�Ϥ�5</th>
		<th>�峹���e</th>
		<th>�g��</th>
		<th>�d����</th>
		<th>���ɼ�</th>
		<th>�d���ɶ�</th>
		<th>��s�ɶ�</th>
	</tr>
	<c:forEach var="postVO" items="${list}">
		<tr>
			<td>${postVO.post_id}</td>
			<td>${postVO.member_id}</td>
			<td>${postVO.post_class}</td>
			<% for(int i = 1; i <= 5; i++){ %>
				<td><img src="<%=request.getContextPath()%>/Post/DBGifReader2?post_id=${postVO.post_id}&count=<%=i%>" width="200px" height="200px"></td>
			<% }; %>
			<td>${postVO.post_content}</td>
			<td>${postVO.post_like}</td>
			<td>${postVO.post_message_count}</td>
			<td>${postVO.post_share}</td>
			<td>${postVO.create_time}</td>
			<td>${postVO.update_time}</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Post/Post.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="post_id"  value="${postVO.post_id}">
			     <input type="hidden" name="action"	value="getOneForUpdate">
			  </FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Post/Post.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="post_id" value="${postVO.post_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>	
</table>

</body>
</html>