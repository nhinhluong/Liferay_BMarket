<%@ include file="init.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>

<portlet:renderURL var="step2URL"
	windowState="<%=LiferayWindowState.POP_UP.toString()%>">
	<portlet:param name="mvcPath" value="/bestprice/step2.jsp" />
</portlet:renderURL>

<div class=""
	style="line-height: 30px; display: flex; min-height: 100%; height: auto;">
	<div style="background: #f7941d; padding: 10px; color: #fff; flex: 1;">
		<center>
			<img src="/o/bmq.popup.web/images/image1.png"/>
		</center>
		<br>
		<ul style="list-style: none; padding: 0;">
			<li><span class="step-icon step-icon-active">1</span> <span>THÔNG
					TIN CƠ BẢN</span></li>
			<li><span class="step-icon">2</span> <span>CHI TIẾT YÊU
					CẦU</span></li>
			<li><span class="step-icon last">3</span> <span>HOÀN
					THÀNH</span></li>
		</ul>
	</div>
	<div style="flex: 4; background: #e6e7e9; padding: 10 0;">
		<!-- <div class="col-xs-5">
			<center>
				<img src="/o/bmq.popup.web/images/image3.png" style="width:100%;" />
			</center>
		</div> -->
		<div class="col-xs-12">
			<form action="<%=step2URL%>" method="post">
				<div class="col-xs-12">Chúng tôi sẽ giúp bạn chọn đúng nhà
					cung cấp</div>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="text" class="form-control"
							name="_RequestBestPricePopupPortlet_serviceName"
							placeholder="Tên sản phẩm/ Dịch vụ" required />
					</div>
				</div>
				<div class="" style="clear: both; display: table; width: 100%;">
					<div class="col-xs-6">
						<div class="form-group">
							<input type="number" class="form-control"
								name="_RequestBestPricePopupPortlet_number"
								placeholder="Số lượng" required />
						</div>
					</div>
					<div class="col-xs-6">
						<div class="form-group">
							<select class="form-control"
								name="_RequestBestPricePopupPortlet_unit" required>
								<option value="kg">Kilogram</option>
								<option value="gr">Gram</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-xs-12"><b>Thông tin liên hệ</b></div>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="text" class="form-control"
							name="_RequestBestPricePopupPortlet_cusName"
							placeholder="Tên đầy đủ" required />
					</div>

				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="email" class="form-control"
							name="_RequestBestPricePopupPortlet_email" placeholder="Email" required/>
					</div>

				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="tel" class="form-control"
							name="_RequestBestPricePopupPortlet_phone"
							placeholder="Số điện thoại" required/>
					</div>

				</div>
				<div class="col-xs-12">
					<button type="submit" class="btn btn-warning">Tiếp tục</button>
					<br><br>
				</div>
			</form>
		</div>
	</div>
</div>