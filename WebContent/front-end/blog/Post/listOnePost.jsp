<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.blog.post.model.*"%>
<%
  PostVO postVO = (PostVO) request.getAttribute("postVO");
%> 
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>
<html>
<head>
<title>�峹��� - listOnePost.jsp</title>

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
		 <h3>�峹��� - listOnePost.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/blog/Post/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

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
		<th>�o��ɶ�</th>
		<th>��s�ɶ�</th>
	</tr>	
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
	</tr>
</table>

</body>
</html>