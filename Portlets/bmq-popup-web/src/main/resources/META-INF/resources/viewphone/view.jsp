<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ include file="init.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String phone = ParamUtil.getString(request, "phone", "000000");
%>
<portlet:renderURL var="test"
	windowState="<%=LiferayWindowState.EXCLUSIVE.toString()%>">
	<portlet:param name="mvcPath" value="/viewphone/view.jsp" />
</portlet:renderURL>

<div class=""
	style="margin-top: 70px; line-height: 30px; display: table;">
	<div class="col-xs-6">
		<center>
			<span><b>Liên hệ với nhà cung cấp</b></span> <br> <span
				class="glyphicon glyphicon-earphone"
				style="color: #f7941f; font-size: 50px;"> </span> <br> <span
				style="font-size: 30px; font-weight: bold;"><%=phone%></span>
		</center>
	</div>
	<div class="col-xs-6" style="border-left: #67ed1c 2px solid;">
		<center>
			<span><b>Yêu cầu gọi lại</b></span>
			<form>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="text" class="form-control"
							name="_ViewPhonePopupPortlet_name" placeholder="Tên"
							required />
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<input type="tel" class="form-control"
							name="_ViewPhonePopupPortlet_cusphone"
							placeholder="Số điện thoại" required />
					</div>
				</div>
				<div class="col-xs-12">
					<button type="submit" class="btn btn-warning">Gửi yêu cầu</button>
				</div>
			</form>
		</center>
	</div>
</div>