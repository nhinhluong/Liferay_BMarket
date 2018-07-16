<%@ include file="../init.jsp"%>
<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.step-icon {
	background: #fff;
	color: #f7941d;
	border-radius: 50%;
	padding: 2px 6px;
	position: relative;
	z-index: 0;
}

.step-icon::before {
	content: '';
	display: block;
	height: 100%;
	top: 50%;
	border-left: 1px solid #fff;
	position: absolute;
	left: 50%;
	z-index: -1;
}

.step-icon-active {
	font-weight: bold;
}

span.step-icon.last::before {
	border: none;
}

input[type=checkbox] {
	position: inherit;
}
</style>