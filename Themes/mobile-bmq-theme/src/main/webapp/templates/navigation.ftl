<#if has_navigation && is_setup_complete>
	<div class="row">
		<div class="col-xs-12" style="text-align: center;">
			<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
				<img alt="${logo_description}" src="${site_logo}"/>
			</a>		
		</div>	
	</div>	
	<div class="row">	
		<div class="col-xs-12">
			<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

			<div class="navbar-form" role="search">
				<@liferay.search default_preferences="${preferences}" />
			</div>
		</div>
		
		<#-- <div class="col-xs-2">
			<a href="#"><span class="glyphicon glyphicon-shopping-cart" style="font-size:40px; color:#f7941d;"> </span></a>
		</div> -->
	</div>
	<div class="row">
		<div class="col-xs-12">
			<#if !is_signed_in>
				<div class="col-xs-3 top-nav-item">
					<a href="/c/portal/login">Đăng nhập</a>
				</div>			
				<div class="col-xs-3 top-nav-item">
					<a href="/?p_p_id=com_liferay_login_web_portlet_LoginPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&saveLastPath=false&_com_liferay_login_web_portlet_LoginPortlet_mvcRenderCommandName=%2Flogin%2Fcreate_account
">Đăng ký</a>
				</div>				

			<#else>				
				<div class="col-xs-3 top-nav-item">
					<a>${user_name}</a>
				</div>
				<div class="col-xs-3 top-nav-item">
					<a href="/c/portal/logout">Đăng xuất</a>
				</div>					
			</#if>						
		</div>
	</div>
</#if>