<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<script>
		Liferay.Loader.define._amd = Liferay.Loader.define.amd;
		Liferay.Loader.define.amd = false;
	</script>	
	<#-- <script type="text/javascript" src="${javascript_folder}/vendor.js"></script> -->
	<script type="text/javascript" src="${javascript_folder}/bmq.js"></script>
	<script>
		Liferay.Loader.define.amd = Liferay.Loader.define._amd;
	</script>	
</head>

<body class="${css_class} ban-hang-cung-bmq">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<header class="hidden-sm hidden-xs">
    <div class="top-bar">
        <div class="container">
        <span>Chào mừng tới BMQ Sellers</span>
        <ul class="list-inline pull-right">
            <li>Email: <a href="mailto:support@bmq.vn">support@bmq.vn</a></li>
            <li>Hotline: <a href="tel:19005555591">19005555591</a></li>
        </ul>
        </div>
    </div>
</header>


	<section id="content">
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>


<footer id="footer" style="">
   <div class="row">
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
         <a class="logo custom-logo" href="http://staging.bmq.vn" title="Go to BMQ"> <img alt="" src="${site_logo}" height="70"> </a> 
         <p class="font-14-white" style="font-weight:bold">Công Ty Cổ Phẩn Thực Phẩm BMQ</p>
         <p class="font-14-white" style="font-weight:normal"><span class="glyphicon"></span> 268 Tô Hiến Thành, P.15, Q.10, TP.HCM</p>
         <p class="font-14-white" style="font-weight:bold;font-size:15px"><span class="glyphicon"></span> 1900-5555-91</p>
      </div>
      <div class="col-sm-12" style="text-align:center">
         <p class="font-14-white" style="font-weight:bold">Copyright @ 2018. ALL Right Reserved</p>
      </div>
   </div>
</footer>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>