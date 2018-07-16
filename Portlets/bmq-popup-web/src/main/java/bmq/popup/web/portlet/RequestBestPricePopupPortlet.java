package bmq.popup.web.portlet;

import bmq.popup.web.constants.BmqPopupWebPortletKeys;

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
		"javax.portlet.display-name=Contact Manufactor popup",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/contact/view.jsp",
		"javax.portlet.name=" + BmqPopupWebPortletKeys.ContactManufactorPopupPortlet,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class RequestBestPricePopupPortlet extends MVCPortlet {
}