<%@page import="com.store.model.StoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	StoreVO storeVO = (StoreVO) request.getAttribute("storeVO"); //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
%>
<%= storeVO==null %> --${storeVO.store_id}
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>���a��ƭק� - update_store_input</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendors/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/back-end/css/adminStatistics.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
<style type="text/css">
div.myform a {
	color: blue;
}
</style>
</head>
<body>
<header class="bg-white">
		<div class="container-fluid">
			<div class="row header">
				<div
					class="col-2 d-flex align-items-center justify-content-center border-right border-bottom">
					<img src="<%=request.getContextPath()%>/resources/images/admin.svg"
						alt="admin"> &nbsp;
					<h5 class="text-center admin-tab">Admin</h5>
				</div>
				<div
					class="col-10 d-flex align-items-center justify-content-center border-bottom">
					<h3 class="title-tab">���a��ƭק�</h3>
				</div>
			</div>
		</div>

	</header>
	<div class="container-fluid">
		<div class="row content-height">
			<div class="col-2">
				<%@ include file="/back-end/sidebar.jsp"%>
			</div>

			<div class="col-10">
				<div class="row justify-content-star myform">
				<div class="col-1"></div>
				<div class="col-10">
	<a href='<%=request.getContextPath()%>/back-end/store/listAllStore.jsp'>�^�Ҧ����a</a>
	<span style="color: red ">${errorMsgs.error}</span>
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/store/Controller" name="form1" enctype="multipart/form-data" multiple>
		<table>
			<tr>
				<td>���a�s��:<font color=red><b>*</b></font></td>
				<td>${storeVO.store_id}</td>
				
			</tr>
			<tr>
				<td>�|���s��:</td>
				<td><input type="TEXT" name="memberId" size="45" value="<%=storeVO.getMember_id()%>" /></td>
				
			</tr>
			<tr>
				<td>�W��:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="storeName" size="45" value="<%=storeVO.getStore_name()%>" />
					<span style="color: red ">${errorMsgs.error_name}</span>
				</td>
				
			</tr>
			<tr>
				<td>����:</td>
				<td><select name="storeClass" size="1" value="<%=storeVO.getStore_class()%>">
						<option value="�\�U" <c:if test="${storeVO.store_class=='�\�U'}">selected</c:if>>�\�U</option>
						<option value="���]" <c:if test="${storeVO.store_class=='���]' }">selected</c:if>>���]</option>
						<option value="���e" <c:if test="${storeVO.store_class=='���e' }">selected</c:if>>���e</option>
						<option value="�Ǯ�" <c:if test="${storeVO.store_class=='�Ǯ�' }">selected</c:if>>�Ǯ�</option>
						<option value="��|" <c:if test="${storeVO.store_class=='��|' }">selected</c:if>>��|</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>�a�}:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="storeAdress" size="45"	value="<%=storeVO.getStore_adress()%>" />
					<span style="color: red ">${errorMsgs.error_adress}</span>
				</td>
			</tr>
			<tr>
				<td>�q��:<font color=red><b>*</b></font></td>
				<td><input name="storePhoneNumber" type="text" value="<%=storeVO.getStore_phone_number()%>"/>
					<span style="color: red ">${errorMsgs.error_phone}</span>
				</td>
			</tr>
			<tr>
				<td>²��:</td>
				<td><textarea name="storeIntroduction" style="resize:none;width:321.44px;height:100px;" /><%=storeVO.getStore_introduction()%></textarea></td>
			</tr>
			<tr>
				<td>�I�\��:</td>
				<td><input type="TEXT" name="storeClicks" size="45" value="<%=storeVO.getStore_clicks()%>" />
					<span style="color: red ">${errorMsgs.error_clicks}</span>
				</td>
			</tr>
			<tr>
				<td>�����1:</td>
				<td><select size="1" name="storeFirstbreak" value="<%=storeVO.getStore_firstbreak()%>">
						<option value=0 <c:if test="${storeVO.store_firstbreak==''}">selected</c:if>></option>
						<option value=1 <c:if test="${storeVO.store_firstbreak==1 }">selected</c:if>>�P�@</option>
						<option value=2 <c:if test="${storeVO.store_firstbreak==2 }">selected</c:if>>�g�G</option>
						<option value=3 <c:if test="${storeVO.store_firstbreak==3 }">selected</c:if>>�g�T</option>
						<option value=4 <c:if test="${storeVO.store_firstbreak==4 }">selected</c:if>>�g�|</option>
						<option value=5 <c:if test="${storeVO.store_firstbreak==5 }">selected</c:if>>�g��</option>
						<option value=6 <c:if test="${storeVO.store_firstbreak==6 }">selected</c:if>>�g��</option>
						<option value=7 <c:if test="${storeVO.store_firstbreak==7 }">selected</c:if>>�g��</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>�����2:</td>
				<td><select size="1" name="storeSecondbreak" value="<%=storeVO.getStore_secondbreak()%>">
						<option value=0 <c:if test="${storeVO.store_secondbreak==''}">selected</c:if>></option>
						<option value=1 <c:if test="${storeVO.store_secondbreak==1 }">selected</c:if>>�P�@</option>
						<option value=2 <c:if test="${storeVO.store_secondbreak==2 }">selected</c:if>>�g�G</option>
						<option value=3 <c:if test="${storeVO.store_secondbreak==3 }">selected</c:if>>�g�T</option>
						<option value=4 <c:if test="${storeVO.store_secondbreak==4 }">selected</c:if>>�g�|</option>
						<option value=5 <c:if test="${storeVO.store_secondbreak==5 }">selected</c:if>>�g��</option>
						<option value=6 <c:if test="${storeVO.store_secondbreak==6 }">selected</c:if>>�g��</option>
						<option value=7 <c:if test="${storeVO.store_secondbreak==7 }">selected</c:if>>�g��</option>
					</select>
				</td>
			</tr>

			<tr>
				<td>��~�ɬq1:</td>
				<td><input type="TEXT" name="storeOpenhours1" size="45" value="<%=storeVO.getStore_openhours1()%>" /></td>
			</tr>
			<tr>
				<td>���\�ɶ�:</td>
				<td><input type="TEXT" name="storeTimelimit" size="45" value="<%=storeVO.getStore_timelimit()%>" /></td>
			</tr>
			<tr>
				<td>�̤j�H��:</td>
				<td><input type="TEXT" name="storeMaxcapacity" size="45" value="<%=storeVO.getStore_maxcapacity()%>" />
				</td>
			</tr>
			<tr>
				<td>���A:</td>
				<td><input type="TEXT" name="storeOn" size="45" value="<%=storeVO.getStore_on()%>" /></td>
			</tr>
		
		</table>
		<input type="file" name="storeImage1" onchange="loadImageFile(event)">
		<input type="file" name="storeImage2" onchange="loadImageFile(event)">
		<input type="file" name="storeImage3" onchange="loadImageFile(event)">
		<span style="color: red ">${errorMsgs.error_image}</span>
		<br>
		<input type="hidden" name="action" value="update">
		<input type="hidden" name="storeId" value="<%=storeVO.getStore_id()%>">
		<input type="submit" value="�e�X�ק�">
	</FORM>
	<div style="width:200px; height:200px; display:inline-block;">
		<img id="image1" style="width:100%;"/>
	</div>
	<div style="width:200px; height:200px; display:inline-block;">
		<img id="image2"  style="width:100%;"/>
	</div>
	<div style="width:200px; height:200px; display:inline-block;">
		<img id="image3" style="width:100%;"/>
	</div>
<%-- 	<%for(int i=1;i<=3;i++){%> --%>
<!-- 	<div style="width:200px;height:200px;display:inline-block;"> -->
<%-- 		<img id="image<%=i%>" style="width:100%;"src="<%=request.getContextPath()%>/store/ShowImg?store_id=${storeVO.store_id}&store_image=<%=i%>"/> --%>
<!-- 	</div> -->
<%-- 	<%}%> --%>
							</div>
		</div>

	</div>

	</div>
	</div>
	<script>
		function loadImageFile(event){
			switch(event.target.name){
				case 'storeImage1':
					var image1 = document.getElementById('image1'); 
					image1.src = URL.createObjectURL(event.target.files[0]);
					break;
				case 'storeImage2':
					var image2 = document.getElementById('image2'); 
					image2.src = URL.createObjectURL(event.target.files[0]);
					break;
				case 'storeImage3':
					var image3 = document.getElementById('image3'); 
					image3.src = URL.createObjectURL(event.target.files[0]);
					break;
			}
		}; 
	</script>
	
	
</body>
</html>