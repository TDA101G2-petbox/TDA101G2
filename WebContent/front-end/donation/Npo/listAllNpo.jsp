<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.donation.npo_info.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
    Npo_infoService NpoSvc = new Npo_infoService(); //����
    List<Npo_infoVO> list = NpoSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<%
  Npo_infoVO npo_infoVO = (Npo_infoVO) request.getAttribute("npo_infoVO"); 
%>
<%= npo_infoVO==null %>--${npo_infoVO}

<html>

<head>

</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
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
    div.row1{ 
     position: relative; 
	top: 55px;
    left: 100px;
    } 
</style>


<body bgcolor='white'>


 <div class="bs-example">
    <a href="#myModal" role="button" class="btn btn-lg btn-primary" data-toggle="modal">+</a>

    <div id="myModal" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirmation</h5>
                    <button type="button" class="����" data-dismiss="modal">&times;</button>
                </div>
                <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Npo/npo.do" name="form1" enctype="multipart/form-data">
                
                <div class="modal-body">
<%-- <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Npo/npo.do" name="form1" enctype="multipart/form-data"> --%>
	<tr>
		<td>���q����W��:</td>
		<td><input type="TEXT" name="npo_name" size="45" 
			 value="<%= (npo_infoVO==null)? "" : npo_infoVO.getNpo_name()%>" /></td>
	</tr><br><br>
	<tr>
		<td>�Ϥ�:</td>
		<td><input type="file" name="npo_image" size="45" id="the_file"/></td>	
    	<ul class="picture_list" id="pc"></ul>
<%-- 		<td><img id="blah" alt="your image" src="<%=request.getContextPath()%>/Npo/DBGifReader2?npo_id=${npo_infoVO.npo_id}"></td>		 --%>
	</tr>

	<tr>
		<td>���q���餶��:</td>
		<td><input type="TEXT" name="npo_description" size="45"
			 value="<%= (npo_infoVO==null)? "" : npo_infoVO.getNpo_description()%>" /></td>
	</tr>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">����</button>
                  <input type="hidden" name="action" value="insert">
				  <input class="btn btn-primary" type="submit" value="�e�X�s�W"></div></FORM>
                </div>
            </div>
        </div>
    </div>


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
		<th>���q����s��</th>
		<th>���q����W��</th>
		<th>�Ϥ�</th>
		<th>���q�y�z</th>

	</tr>
<%-- 	<%@ include file="page1.file" %>  --%>
	<%@ include file="page1.file" %> 
	<c:forEach var="npo_infoVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${npo_infoVO.npo_id}</td>
			<td>${npo_infoVO.npo_name}</td>
			<td><img src="<%=request.getContextPath()%>/Npo/DBGifReader2?npo_id=${npo_infoVO.npo_id}"></td>
			<td>${npo_infoVO.npo_description}</td>
<%-- ${inpo_infoVO.npo_image} --%>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Npo/npo.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="npo_id"  value="${npo_infoVO.npo_id}">
			     
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Npo/npo.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="npo_id"  value="${npo_infoVO.npo_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>