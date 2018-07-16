<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
	<head>
		<title>${the_title} - ${company_name}</title>
		<meta content="initial-scale=1.0, width=device-width" name="viewport" />

		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">
		<@liferay_ui["quick-access"] contentId="#main-content" />

		<@liferay_util["include"] page=body_top_include />

		<@liferay.control_menu />

		<div id="wrapper">
			<header class="container-fluid-1280" id="banner" role="banner" style="padding-bottom:0px;">
				<div class="col-sm-3">
					<a class="${logo_css_class}" href="${site_default_url}" style="margin-left:30px;" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />" >
							<img alt="${logo_description}" height="90" width:"129" src="${site_logo}" />
					</a>
				</div>
				<div class="col-sm-5">
					<#if main_search_class != "no-screen">
						<nav id="search" role="navigation">
							<div class="${main_search_class} navbar-form navbar-right" role="search">
								<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
								<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
								<#assign VOID = freeMarkerPortletPreferences.reset() />
							</div>
						</nav>
					</#if>
				</div>
				<div class="col-sm-4" align="right">
					<#if !is_signed_in>
						<span class="icon-login icon-monospaced">
							<svg class="lexicon-icon">
								<use xlink:href="${images_folder}/lexicon/icons.svg#users" />
							</svg>
						</span>
					</#if>
					<@liferay.user_personal_bar />
				</div>
				<div class="col-sm-12">
					<#assign
					VOID = freeMarkerPortletPreferences.setValue("displayDepth", "1")
					VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")
					/>
					<@liferay.navigation_menu
						instance_id="header_navigation_menu"
						default_preferences="${freeMarkerPortletPreferences}"
					/>
					<#assign VOID = freeMarkerPortletPreferences.reset() />
				</div>
			</header>
			<div class="container-fluid-1280" id="banner" role="banner">
				<div class="col-sm-12">	
					<#if selectable>
						<@liferay_util["include"] page=content_include />
					<#else>
						${portletDisplay.recycle()}
						${portletDisplay.setTitle(the_title)}
						<@liferay_theme["wrap-portlet"] page="portlet.ftl">
							<@liferay_util["include"] page=content_include />
						</@>
					</#if>
				</div>
			</div>	
			<footer class="container-fluid-1280" style="background-color: #f7941d; padding:30px;">
				<div class="col-sm-3" id="footer-col-md-3">
					<p class="font-14-white" style="font-weight:bold">GIỚI THIỆU</p>

					  <p class="font-14-white" style="font-weight:normal">Về BMQ</p>
					  <p class="font-14-white" style="font-weight:normal">Tuyển dụng</p>
					  <p class="font-14-white" style="font-weight:normal">Cơ chế hoạt động</p>
					  <p class="font-14-white" style="font-weight:normal">Chính sách bảo mật</p>
					  <p class="font-14-white" style="font-weight:normal">Câu hỏi thường gặp</p>

				</div>
				<div class="col-sm-3">
					<p class="font-14-white" style="font-weight:bold">DÀNH CHO KHÁCH HÀNG</p>

					  <p class="font-14-white" style="font-weight:normal">Chính sách giao hàng</p>
					  <p class="font-14-white" style="font-weight:normal">Chính sách đỗi trả</p>
					  <p class="font-14-white" style="font-weight:normal">Cách thức thanh toán</p>
					  <p class="font-14-white" style="font-weight:normal">Chính sách dành cho khách sỉ</p>
				</div>
				<div class="col-sm-3">
					<p class="font-14-white" style="font-weight:bold">DÀNH CHO NHÀ CUNG CẤP</p>

					  <p class="font-14-white" style="font-weight:normal">Đăng ký làm nhà cung cấp</p>
					  <p class="font-14-white" style="font-weight:normal">Quy định đối với nhà cung cấp</p>
					  <p class="font-14-white" style="font-weight:normal">Chính sách bán hàng</p>
					  <p class="font-14-white" style="font-weight:normal">Hệ thống tiêu chí kiểm duyệt</p>

				</div>
				<div class="col-sm-3">
					<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
							<img alt="${logo_description}" height="70" src="${site_logo}" />
					</a>
					<p class="font-14-white" style="font-weight:bold">Công Ty Cổ Phẩn Thực Phẩm BMQ</p>
					<p class="font-14-white" style="font-weight:normal"><span class="glyphicon">&#xe021;</span> 268 Tô Hiến Thành, P.15, Q.10, TP.HCM</p>
					<p class="font-14-white" style="font-weight:bold;font-size:15px"><span class="glyphicon">&#xe182;</span> 1900-5555-91</p>
				</div>
				<div class="col-sm-12" style="text-align:center">
					<p class="font-14-white" style="font-weight:bold">Copyright @ 2018. ALL Right Reserved</p>
				</div>
			</footer>
		</div>
		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />
	</body>
</html>