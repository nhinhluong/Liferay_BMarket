<div aria-expanded="true" class="collapse navbar-collapse" id="navigationCollapse">
	<#if main_search_class != "no-screen">
		<nav id="search" role="navigation">
			<div class="${main_search_class} navbar-form navbar-right" role="search">
				<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />

				<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />

				<#assign VOID = freeMarkerPortletPreferences.reset() />
			</div>
		</nav>
	</#if>

	<nav class="nav-header-global row" role="navigation">
		<ul class="nav navbar-nav">
    <#assign  count = 0 />
    <#list nav_items as nav_item>
        <#assign  count = count +1  />
        <#assign  nav_item_class = "item-" + count />

        <#if count == 1>
            <#assign  nav_item_class = nav_item_class + " first" />
        </#if>

        <#if nav_item.isSelected() >
            <#assign nav_item_class = nav_item_class + " selected" />
        </#if>

        <#if nav_item.hasChildren() >
            <#assign nav_item_class = nav_item_class + " dropdown mega-dropdown" />
        </#if>

        <#if nav_item.hasChildren()>
            <li class="${nav_item_class}">
                <a href="${nav_item.getURL()}" ${nav_item.getTarget()} class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-menu-hamburger pull-left"></span> ${nav_item.getName()}
                </a>

                <ul class="dropdown-menu mega-dropdown-menu row">
                    <#list nav_item.getChildren() as nav_child>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header"><a href="${nav_child.getURL()}" ${nav_child.getTarget()}>${nav_child.getName()}</a></li>
                                <#if nav_child.hasChildren()>
                                    <#list nav_child.getChildren() as nav_child_2>
                                        <li><a href="${nav_child_2.getURL()}" ${nav_child_2.getTarget()}>${nav_child_2.getName()}</a></li>
                                    </#list>
                                </#if>
                            </ul>
                        </li>
                    </#list>
                </ul>
            </li>
        <#else>
            <li class="${nav_item_class}">
                <a href="${nav_item.getURL()}" ${nav_item.getTarget()}>
                    <span>${nav_item.getName()}</span>
                </a>
            </li>
        </#if>

    </#list>
    </ul>
	</nav>


</div>