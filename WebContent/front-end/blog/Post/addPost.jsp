<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.blog.post.model.*"%>

<%PostVO postVO = (PostVO) request.getAttribute("postVO");%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�峹�s�W - addPost.jsp</title>

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

<style>
  div{
  	width:200px;
  	height:200px;
  	display:inline-block;
  	margin-right:10px;
  	overflow:hidden;
  }
  
  img{
  	width:100%;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>�峹�s�W - addPost.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/front-end/blog/Post/select_page.jsp"><img src="images/tomcat.png" width="100" height="100" border="0">�^����</a></h4>
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

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Post/Post.do" name="form1" enctype="multipart/form-data">
<table>
	<tr>
		<td>�|��id:</td>
		<td><input type="TEXT" name="member_id" size="45" value="MB00001" readonly/></td>
	</tr>

	<tr>
		<td>����:</td>
		<td>
			<select name="post_class" style="width:50px">
				<option selected="true">�ͬ�</option>
				<option>����</option>
				<option>�ȹC</option>
				<option>�ʪ�</option>
				<option>��L</option>
			</select>
		</td>	
	</tr>
	
	<tr>
		<td>�峹�Ϥ�1:</td>
		<td><input type="file" name="post_image1" onchange="loadImageFile(event)"><br></td>
		<div><img id="image1"></div>
	</tr>
	<tr>
		<td>�峹�Ϥ�2:</td>
		<td><input type="file" name="post_image2" onchange="loadImageFile(event)"><br></td>
		<div><img id="image2"></div>
	</tr>
	<tr>
		<td>�峹�Ϥ�3:</td>
		<td><input type="file" name="post_image3" onchange="loadImageFile(event)"><br></td>
		<div><img id="image3"></div>
	</tr>
	<tr>
		<td>�峹�Ϥ�4:</td>
		<td><input type="file" name="post_image4" onchange="loadImageFile(event)"><br></td>
		<div><img id="image4"></div>
	</tr>
	<tr>
		<td>�峹�Ϥ�5:</td>
		<td><input type="file" name="post_image5" onchange="loadImageFile(event)"><br></td>
		<div><img id="image5"></div>
	</tr>
	<tr>
		<td>�峹���e:</td>
		<td><textarea style="width:500px ; height:50px" name="post_content"></textarea></td>
	</tr>
</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="�e�X�s�W"></FORM>
<SCRIPT>
  	function loadImageFile(event){
  		switch(event.target.name){
	  		case 'post_image1':
	  			var image1 = document.getElementById('image1');
	  			image1.src = URL.createObjectURL(event.target.files[0]);
	  			break;
	  		case 'post_image2':
	  			var image2 = document.getElementById('image2');
	  			image2.src = URL.createObjectURL(event.target.files[0]);
	  			break;
	  		case 'post_image3':
	  			var image3 = document.getElementById('image3');
	  			image3.src = URL.createObjectURL(event.target.files[0]);
	  			break;
	  		case 'post_image4':
	  			var image4 = document.getElementById('image4');
	  			image4.src = URL.createObjectURL(event.target.files[0]);
	  			break;
	  		case 'post_image5':
	  			var image5 = document.getElementById('image5');
	  			image5.src = URL.createObjectURL(event.target.files[0]);
	  			break;
  		}
  	};
</SCRIPT>  		
</body>
</html>