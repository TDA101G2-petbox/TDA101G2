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
</head>
<body>
	<a href='<%=request.getContextPath()%>/back-end/store/listAllStore.jsp'>�^listAllStore</a>
	<h3>���a�ק�</h3><span style="color: red ">${errorMsgs.error}</span>
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
		<br>
		<input type="hidden" name="action" value="update">
		<input type="hidden" name="storeId" value="<%=storeVO.getStore_id()%>">
		<input type="submit" value="�e�X�ק�">
		<img >
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
	<script>
		function loadImageFile(event){
			console.log(event.target.name);
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