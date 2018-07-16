package bmq.seller.register.web.command;

import java.io.File;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;

import org.osgi.service.component.annotations.Component;

import com.liferay.portal.kernel.portlet.bridges.mvc.BaseMVCActionCommand;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCActionCommand;
import com.liferay.portal.kernel.upload.UploadPortletRequest;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;

import bmq.seller.register.web.constants.BmqSellerRegisterWebPortletKeys;

@Component(property = {

		"javax.portlet.name=" + BmqSellerRegisterWebPortletKeys.BmqSellerRegisterWeb,
		"mvc.command.name=/bmq_seller_regis",

}, service = MVCActionCommand.class)
public class RegisterSellerActionCommand extends BaseMVCActionCommand {

	@Override
	protected void doProcessAction(ActionRequest actionRequest, ActionResponse actionResponse) throws Exception {
		// TODO Auto-generated method stub
		UploadPortletRequest uploadPortletRequest = PortalUtil.getUploadPortletRequest(actionRequest);
		// String file_business_registration =
		// uploadPortletRequest.getFileName("file_business_registration");
		File file_business_registration = uploadPortletRequest.getFile("file_business_registration");
		File file_bank_account_notification = uploadPortletRequest.getFile("file_bank_account_notification");
		File file_tax_code_registration = uploadPortletRequest.getFile("file_tax_code_registration");

		String contact_name = ParamUtil.getString(actionRequest, "contact_name");
		String contact_phone = ParamUtil.getString(actionRequest, "contact_phone");
		String business_email = ParamUtil.getString(actionRequest, "business_email");
		String business_hotline = ParamUtil.getString(actionRequest, "business_hotline");
		String store_name = ParamUtil.getString(actionRequest, "store_name");
		String store_type = ParamUtil.getString(actionRequest, "store_type");
		String tax_name = ParamUtil.getString(actionRequest, "tax_name");
		String business_type = ParamUtil.getString(actionRequest, "business_type");
		String date_founded = ParamUtil.getString(actionRequest, "date_founded");
		String business_address_country_code = ParamUtil.getString(actionRequest, "business_address_country_code");
		String tax_address = ParamUtil.getString(actionRequest, "tax_address");
		String customer_address_street = ParamUtil.getString(actionRequest, "customer_address_street");
		String customer_address_province_code = ParamUtil.getString(actionRequest, "customer_address_province_code");
		String business_registration_code = ParamUtil.getString(actionRequest, "business_registration_code");
		String tax_code = ParamUtil.getString(actionRequest, "tax_code");
		String website_url = ParamUtil.getString(actionRequest, "website_url");
		String business_representative = ParamUtil.getString(actionRequest, "business_representative");
		String bank_account_name = ParamUtil.getString(actionRequest, "bank_account_name");
		String bank_account_number = ParamUtil.getString(actionRequest, "bank_account_number");
		String bank_name = ParamUtil.getString(actionRequest, "bank_name");
		String bank_account_branch = ParamUtil.getString(actionRequest, "bank_account_branch");
		String goods_quantity = ParamUtil.getString(actionRequest, "goods_quantity");
		String trading_brands = ParamUtil.getString(actionRequest, "trading_brands");
		String[] checkbox_trading_platforms = ParamUtil.getStringValues(actionRequest, "checkbox_trading_platforms");
		String permitted_business = ParamUtil.getString(actionRequest, "permitted_business");

		String redirect = ParamUtil.getString(actionRequest, "redirect");
		// redirect = HttpUtil.encodeURL(redirect);
		actionResponse.sendRedirect(redirect);
	}

}
