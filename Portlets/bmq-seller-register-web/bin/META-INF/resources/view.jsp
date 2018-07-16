<%@ include file="init.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <p>
	<b><liferay-ui:message key="bmq-seller-register-web.caption"/></b>
</p> -->

<portlet:actionURL name="/bmq_seller_regis" var="bmq_seller_regis">
	<portlet:param name="mvcActionCommand" value="/bmq_seller_regis" />
	<portlet:param name="add-process-action-success-action" value="false" />
</portlet:actionURL>
<portlet:renderURL var="redirectURL">
	<portlet:param name="mvcPath" value="/success.jsp" />
	<portlet:param name="add-process-action-success-action" value="false" />
</portlet:renderURL>

<div data-reactroot="" class="container">
	<div class="text-center">
		<h1 class="page-title">ĐĂNG KÝ BÁN HÀNG CÙNG BMQ</h1>
	</div>
	<form action="<%=bmq_seller_regis%>" method="post">
		<aui:input type="hidden" name="redirect" value="<%=redirectURL%>" />
		<div class="text-center">
			<p>
				<!-- react-text: 9 -->
				Cảm ơn đối tác đã tin tưởng và lựa chọn đồng hành cùng BMQ!
				<!-- /react-text -->
				<br>
				<!-- react-text: 11 -->
				Vui lòng hoàn tất biểu mẫu và cung cấp đầy đủ hồ sơ theo hướng dẫn
				để có thể bán hàng nhanh nhất.
				<!-- /react-text -->
			</p>
		</div>
		<section>
			<h4 class="form-section">Thông tin liên lạc</h4>
			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Họ
							tên người liên hệ trực tiếp:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_contact_name"
								name="_BmqSellerRegisterWeb_contact_name" class="form-control"
								maxlength="50" value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Số
							điện thoại:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_contact_phone"
								class="form-control" name="_BmqSellerRegisterWeb_contact_phone"
								value="" type="tel">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12">
					<label for="" class="form-label">Thông tin liên hệ chính
						thức của công ty. Đây sẽ là email dùng để đăng nhập hệ thống
						Seller Center:</label>
				</div>
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Địa
							chỉ email:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_business_email"
								class="form-control" name="_BmqSellerRegisterWeb_business_email"
								value="" type="email">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Hotline:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_business_hotline"
								class="form-control"
								name="_BmqSellerRegisterWeb_business_hotline" value=""
								type="tel">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Tên
							cửa hàng:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_store_name"
								name="_BmqSellerRegisterWeb_store_name" class="form-control"
								value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Loại
							cửa hàng:</label>
						<div>
							<select id="_BmqSellerRegisterWeb_store_type"
								name="_BmqSellerRegisterWeb_store_type" class="form-control">

							</select>

						</div>
					</div>
				</div>
			</div>
		</section>
		<section>
			<h4 class="form-section">THÔNG TIN DOANH NGHIỆP</h4>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Tên
							công ty/Hộ Kinh doanh:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_tax_name" class="form-control"
								name="_BmqSellerRegisterWeb_tax_name" maxlength="100" value=""
								type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-2">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Quy
							mô công ty:</label>
						<div>
							<select id="_BmqSellerRegisterWeb_business_type"
								name="_BmqSellerRegisterWeb_business_type" class="form-control">

							</select>

						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-2">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Ngày
							thành lập:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_date_founded"
								name="_BmqSellerRegisterWeb_date_founded" value=""
								class="form-control">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-2">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Quốc
							gia:</label>
						<div>
							<select id="_BmqSellerRegisterWeb_business_address_country_code"
								name="_BmqSellerRegisterWeb_business_address_country_code"
								class="form-control">

							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Địa
							chỉ công ty trên hoá đơn:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_tax_address"
								class="form-control" name="_BmqSellerRegisterWeb_tax_address"
								value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6" id="js-address-selection">
					<div class="row">
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label data-required="true" for="js-select-city"
									class="form-label">Tỉnh/thành phố:</label>
								<div>
									<select
										id="_BmqSellerRegisterWeb_business_address_province_code"
										name="_BmqSellerRegisterWeb_business_address_province_code"
										class="form-control">

									</select>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label data-required="true" for="js-select-district"
									class="form-label">Quận:</label>
								<div>
									<select
										id="_BmqSellerRegisterWeb_business_address_district_code"
										name="_BmqSellerRegisterWeb_business_address_district_code"
										class="form-control">

									</select>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label data-required="true" for="js-select-ward"
									class="form-label">Phường:</label>
								<div>
									<select id="_BmqSellerRegisterWeb_business_address_ward_code"
										name="_BmqSellerRegisterWeb_business_address_ward_code"
										class="form-control">

									</select>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label for="" class="form-label">Địa chỉ liên hệ:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_customer_address_street"
								class="form-control"
								name="_BmqSellerRegisterWeb_customer_address_street" value=""
								type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6" id="js-address-selection">
					<div class="row">
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label for="cty-js-select-city" class="form-label">Tỉnh/thành
									phố:</label>
								<div>
									<select
										id="_BmqSellerRegisterWeb_customer_address_province_code"
										name="_BmqSellerRegisterWeb_customer_address_province_code"
										class="form-control">

									</select>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label for="cty-js-select-district" class="form-label">Quận:</label>
								<div>
									<select
										id="_BmqSellerRegisterWeb_customer_address_district_code"
										name="_BmqSellerRegisterWeb_customer_address_district_code"
										class="form-control">

									</select>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label for="cty-js-select-ward" class="form-label">Phường:</label>
								<div>
									<select id="_BmqSellerRegisterWeb_customer_address_ward_code"
										name="_BmqSellerRegisterWeb_customer_address_ward_code"
										class="form-control">

									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Mã
							số đăng ký kinh doanh:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_business_registration_code"
								class="form-control"
								name="_BmqSellerRegisterWeb_business_registration_code"
								maxlength="30" value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Mã
							số thuế:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_tax_code" class="form-control"
								name="_BmqSellerRegisterWeb_tax_code" maxlength="30" value=""
								type="text">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label for="" class="form-label">Website (nếu có):</label>
						<div>
							<input id="_BmqSellerRegisterWeb_website_url"
								class="form-control" name="_BmqSellerRegisterWeb_website_url"
								value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Người
							đại diện trên hợp đồng:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_business_representative"
								class="form-control"
								name="_BmqSellerRegisterWeb_business_representative"
								maxlength="50" value="" type="text">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<label data-required="true" class="form-label">Tên tài
							khoản ngân hàng công ty:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_bank_account_name"
								class="form-control"
								name="_BmqSellerRegisterWeb_bank_account_name" maxlength="255"
								value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-2">
					<div class="form-group">
						<label data-required="true" class="form-label">Số tài
							khoản:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_bank_account_number"
								class="form-control"
								name="_BmqSellerRegisterWeb_bank_account_number" maxlength="20"
								value="" type="text">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="row">
						<div class="col-xs-12 col-sm-8">
							<div class="form-group">
								<label data-required="true" for="js-select-city"
									class="form-label">Ngân hàng</label>
								<div>
									<select id="_BmqSellerRegisterWeb_bank_name"
										name="_BmqSellerRegisterWeb_bank_name" class="form-control">

									</select>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="form-group">
								<label data-required="true" class="form-label">Chi
									nhánh:</label>
								<div>
									<input id="_BmqSellerRegisterWeb_bank_account_branch"
										class="form-control"
										name="_BmqSellerRegisterWeb_bank_account_branch" value=""
										type="text">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row"></div>
			<small>Đối với Hộ Kinh doanh người đứng tên tài khoản phải
				trùng với tên trên Giấy phép đăng kí</small>
		</section>

		<section>
			<h4 class="form-section">THÔNG TIN KHÁC</h4>
			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Số
							lượng hàng hoá khác nhau mà bạn có:</label>
						<div>
							<select id="_BmqSellerRegisterWeb_goods_quantity"
								name="_BmqSellerRegisterWeb_goods_quantity" class="form-control">

							</select>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3">
					<div class="form-group">
						<label for="" class="form-label">Thương hiệu bạn đang kinh
							doanh:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_trading_brands"
								class="form-control" name="_BmqSellerRegisterWeb_trading_brands"
								maxlength="50" value="" type="text">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<label data-required="true" for="" class="form-label">Bạn
						có đang kinh doanh ở các sàn TMĐT khác không?:</label>
					<div class="row">
						<div class="col-xs-12">
							<div class="form-group">
								<div>
									<div class="horizontal">
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="Lazada" type="checkbox"> <!-- react-text: 353 -->
												<!-- /react-text --> <!-- react-text: 354 -->Lazada<!-- /react-text --></label>
										</div>
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="Sendo" type="checkbox"> <!-- react-text: 358 -->
												<!-- /react-text --> <!-- react-text: 359 -->Sendo<!-- /react-text --></label>
										</div>
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="Adayroi" type="checkbox"> <!-- react-text: 363 -->
												<!-- /react-text --> <!-- react-text: 364 -->Adayroi<!-- /react-text --></label>
										</div>
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="Shopee" type="checkbox"> <!-- react-text: 368 -->
												<!-- /react-text --> <!-- react-text: 369 -->Shopee<!-- /react-text --></label>
										</div>
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="Zalo" type="checkbox"> <!-- react-text: 373 -->
												<!-- /react-text --> <!-- react-text: 374 -->Zalo<!-- /react-text --></label>
										</div>
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="Facebook" type="checkbox"> <!-- react-text: 378 -->
												<!-- /react-text --> <!-- react-text: 379 -->Facebook<!-- /react-text --></label>
										</div>
										<div class="checkbox">
											<label><input
												name="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												id="_BmqSellerRegisterWeb_checkbox_trading_platforms"
												value="None" type="checkbox"> <!-- react-text: 383 -->
												<!-- /react-text --> <!-- react-text: 384 -->Chưa kinh doanh
												ở sàn nào<!-- /react-text --></label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section>
			<h4 class="form-section">ĐĂNG KÝ DANH MỤC BÁN HÀNG</h4>
			<div class="row">
				<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Nghành
							nghề được phép kinh doanh:</label>
						<div>
							<select id="_BmqSellerRegisterWeb_permitted_business"
								name="_BmqSellerRegisterWeb_permitted_business"
								class="form-control">

							</select>

						</div>
					</div>
				</div>
			</div>
		</section>

		<section>
			<h4 class="form-section">TẬP TIN ĐÍNH KÈM</h4>
			<div class="row">
				<div class="col-xs-12">
					<div class="form-group">
						<label data-required="true" for="" class="form-label">Vui
							lòng đính kèm giấy chứng nhận đăng ký doanh nghiệp/ giấy chứng
							nhận đăng ký kinh doanh/ giấy chứng nhận đầu tư đối với doanh
							nghiệp là nhà đầu tư nước ngoài:</label>
						<div class="hint">
							<small><em>Chỉ chấp nhận tập tin có phần mở rộng:
									".jpg, .png, .pdf" và dung lượng tối đa 2 MB</em></small>
						</div>
						<div>
							<input id="_BmqSellerRegisterWeb_file_business_registration"
								name="_BmqSellerRegisterWeb_file_business_registration" value=""
								type="file">
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="" class="form-label">Vui lòng đính kèm đăng ký
							thông báo tài khoản ngân hàng tại sở kế hoạch đầu tư/ mẫu 08_mst:</label>
						<div>
							<input id="_BmqSellerRegisterWeb_file_bank_account_notification"
								name="_BmqSellerRegisterWeb_file_bank_account_notification"
								value="" type="file">
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="" class="form-label">Vui lòng đính kèm giấy
							chứng nhận đăng ký mã số thuế (trường hợp hộ kinh doanh)</label>
						<div>
							<input id="_BmqSellerRegisterWeb_file_tax_code_registration"
								name="_BmqSellerRegisterWeb_file_tax_code_registration" value=""
								type="file">
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="text-right buttons">

			<button type="submit" class="btn btn-primary"
				style="margin-left: 10px;">Đăng ký</button>
		</div>
	</form>

</div>