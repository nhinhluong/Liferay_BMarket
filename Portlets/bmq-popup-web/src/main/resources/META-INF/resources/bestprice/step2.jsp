<%@ include file="init.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>

<portlet:renderURL var="step1URL"
	windowState="<%=LiferayWindowState.POP_UP.toString()%>">
	<portlet:param name="mvcPath" value="/bestprice/view.jsp" />
</portlet:renderURL>

<portlet:renderURL var="step3URL"
	windowState="<%=LiferayWindowState.POP_UP.toString()%>">
	<portlet:param name="mvcPath" value="/bestprice/step3.jsp" />
</portlet:renderURL>

<div class=""
	style="line-height: 30px; display: flex; min-height: 100%; height: auto;">
	<div style="background: #f7941d; padding: 10px; color: #fff; flex: 1;">
		<center>
			<img src="/o/bmq.popup.web/images/image1.png" />
		</center>
		<br>
		<ul style="list-style: none; padding: 0;">
			<li><span class="step-icon">1</span> <span>THÔNG TIN CƠ
					BẢN</span></li>
			<li><span class="step-icon step-icon-active">2</span> <span>CHI
					TIẾT YÊU CẦU</span></li>
			<li><span class="step-icon last">3</span> <span>HOÀN
					THÀNH</span></li>
		</ul>
	</div>
	<div style="flex: 4; background: #e6e7e9; padding: 10 0;">
		<!-- <div class="col-xs-5">
			<center>
				<img src="/o/bmq.popup.web/images/image3.png" />
			</center>
		</div> -->
		<div class="col-xs-12">
			<form action="<%=step3URL%>" method="post">
				<div class="col-xs-12">Tuyệt vời! Chúng tôi sẽ tìm nhà cung
					cấp theo yêu cầu của bạn. Vui lòng nhập thêm thông tin chi tiết để
					có kết quả tốt nhất.</div>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="file" class="form-control"
							name="_RequestBestPricePopupPortlet_file" />

					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<select class="form-control"
							name="_RequestBestPricePopupPortlet_transMethod" required>
							<option value="" disabled selected>Hình thức vận chuyển</option>
							<option value="1">hình thức 1</option>
							<option value="2">hình thức 2</option>
						</select>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<select class="form-control"
							name="_RequestBestPricePopupPortlet_paymentMethod" required>
							<option value="" disabled selected>Hình thức thanh toán</option>
							<option value="1">hình thức 1</option>
							<option value="2">hình thức 2</option>
						</select>
					</div>

				</div>
				<div class="col-xs-12"><b>Mục đích</b></div>
				<div class="" style="clear: both; display: table; width: 100%;">
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_toUse" value="true">
								Sử dụng</label>
						</div>

					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_toSell" value="true">
								Buôn bán</label>
						</div>

					</div>
				</div>
				<div class="col-xs-12"><b>Tần suất lấy hàng</b></div>
				<div class="" style="clear: both; display: table; width: 100%;">
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_once" value="true">
								Một lần</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_daily" value="true">
								Hàng ngày</label>
						</div>

					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_weekly" value="true">
								Hàng tuần</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_monthly" value="true">
								Hàng tháng</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_yearly" value="true">
								Hàng năm</label>
						</div>
					</div>
				</div>
				<div class="col-xs-12"><b>Nhà cung cấp đề xuất</b></div>
				<div class="" style="clear: both; display: table; width: 100%;">
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_producer" value="true">
								Nhà sản xuất</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_imexComp" value="true">
								Công ty xuất nhập khẩu</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_seller" value="true">
								Bán buôn</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"
								name="_RequestBestPricePopupPortlet_retailer" value="true">
								Bán lẻ</label>
						</div>
					</div>

				</div>
				<div class="col-xs-12">
					<a href="<%=step1URL%>" class="btn btn-default">Bỏ qua</a>
					<button type="submit" class="btn btn-warning">Tiếp tục</button>
					<br><br>
				</div>
			</form>
		</div>
	</div>
</div>