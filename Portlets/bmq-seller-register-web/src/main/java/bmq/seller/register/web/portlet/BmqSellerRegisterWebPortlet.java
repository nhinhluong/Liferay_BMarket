package bmq.seller.register.web.portlet;

import bmq.seller.register.web.constants.BmqSellerRegisterWebPortletKeys;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;

import javax.portlet.Portlet;

import org.osgi.service.component.annotations.Component;

/**
 * @author phuongltm
 */
@Component(
	immediate = true,
	
	property = {
		"com.liferay.portlet.display-category=category.bmq",
		"com.liferay.portlet.instanceable=false",
		"javax.portlet.display-name=bmq-seller-register-web Portlet",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.init-param.add-process-action-success-action=false",
		"javax.portlet.name=" + BmqSellerRegisterWebPortletKeys.BmqSellerRegisterWeb,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class BmqSellerRegisterWebPortlet extends MVCPortlet {
}