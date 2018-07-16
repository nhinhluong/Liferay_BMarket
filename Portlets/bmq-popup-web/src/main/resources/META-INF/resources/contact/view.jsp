<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ include file="init.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>


<div class="" style="line-height: 30px; display: table;">
	<div class="col-xs-12">
		<center>
			<span style="color: #333333; font-weight: bold;">BÁNH MÌ QUE</span>
		</center>
	</div>
	<div class="col-xs-5">
		<center>
			<img src="/o/bmq.popup.web/images/image2.png" style="width:100%;" />
		</center>
	</div>
	<div class="col-xs-7" style="">
		<center>
			<span>Bạn muốn tìm hiểu thêm về sản phẩm bánh mì que</span> <br>
			<span>Hãy đặt câu hỏi cho nhà cung cấp</span>
			<form>
				<div class="col-xs-12">
					<div class="form-group">
						<textarea class="form-control"
							name="_ContactManufactorPopupPortlet_question"
							placeholder="Yêu cầu chi tiết" required>
							</textarea>
					</div>
				</div>
				<div class="col-xs-12">
					<button type="submit" class="btn btn-warning">Gửi yêu cầu</button>
				</div>
			</form>
		</center>
	</div>
</div>