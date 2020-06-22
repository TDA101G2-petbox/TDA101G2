<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.member.model.*, com.notification.model.*"%>
<%@page
	import="java.util.List, java.util.ArrayList, java.util.Map, java.util.HashMap,java.util.Arrays"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Donation Record</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/member/css/donationRecord.css">
</head>

<body>
  
	
	<%@ include file="header.jsp"%>
  <div class="container-fluid">
    <div class="row content-height">
      <div class="col-2">
        <%@ include file="sidebar.jsp"%>
      </div>
      <!-- Main content -->
      <div class="col-9">
        <div class="content-title">公益紀錄</div>
        <div class="content-container">
          <ul class="nav nav-pills mb-3 d-flex" id="pills-tab" role="tablist">
            <li class="nav-item dropdown nav-tab">
              <a class="nav-link active" data-toggle="pill" href="#donation-record" role="button" aria-haspopup="true"
                aria-expanded="false">捐款紀錄</a>
            </li>
            <li class="nav-item nav-tab ">
              <a class="nav-link" data-toggle="pill" href="#adopt-record" role="button" aria-haspopup="true"
                aria-expanded="false">領養紀錄</a>
            </li>
          </ul>

          <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="donation-record" role="tabpanel" aria-labelledby="pills-1-tab">

              <div class="card bg-white border-0">
                <div class="card-body row">
                  <div class="product-image col-2">
                    <img src="<%=request.getContextPath()%>/resources/images/triangle.png" class="rounded">
                  </div>
                  <div class="col-8 text-left">
                    <h5 class="card-title">公益團體</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                    </p>
                  </div>
                  <div class="col-2 text-left align-self-center">
                    <h5 class="card-title">$1,000</h5>
                    <p class="card-text">
                      2020/04/07
                    </p>
                  </div>
                </div>
              </div>
              <div class="card bg-white border-0">
                <div class="card-body row">
                  <div class="product-image col-2">
                    <img src="<%=request.getContextPath()%>/resources/images/triangle.png" class="rounded">
                  </div>
                  <div class="col-8 text-left">
                    <h5 class="card-title">公益團體</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                    </p>
                  </div>
                  <div class="col-2 text-left align-self-center">
                    <h5 class="card-title">$1,000</h5>
                    <p class="card-text">
                      2020/04/07
                    </p>
                  </div>
                </div>
              </div>

            </div>
            <div class="tab-pane fade" id="adopt-record" role="tabpanel" aria-labelledby="pills-2-tab">

              <div class="card bg-white border-0">
                <div class="card-body row">
                  <div class="product-image col-2">
                    <img src="<%=request.getContextPath()%>/resources/images/triangle.png" class="rounded">
                  </div>
                  <div class="col-8 text-left">
                    <h5 class="card-title">動物名稱</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                    </p>
                  </div>
                  <div class="col-2 text-left align-self-center">
                    <h5 class="card-title">$1,000</h5>
                    <p class="card-text">
                      2020/04/07
                    </p>
                  </div>
                </div>
              </div>

              <div class="card bg-white border-0">
                <div class="card-body row">
                  <div class="product-image col-2">
                    <img src="<%=request.getContextPath()%>/resources/images/triangle.png" class="rounded">
                  </div>
                  <div class="col-8 text-left">
                    <h5 class="card-title">動物名稱</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                    </p>
                  </div>
                  <div class="col-2 text-left align-self-center">
                    <h5 class="card-title">$1,000</h5>
                    <p class="card-text">
                      2020/04/07
                    </p>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>
    </div>

    <%@ include file="footer.jsp"%>

</body>

</html>