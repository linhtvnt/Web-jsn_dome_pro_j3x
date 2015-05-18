<?php
$jsnutils	= JSNTplUtils::getInstance();
$doc		= $this->_document;

// Count module instances
$doc->hasRight		= $jsnutils->countModules('right');
$doc->hasLeft		= $jsnutils->countModules('left');
$doc->hasPromo		= $jsnutils->countModules('promo');
$doc->hasPromoLeft	= $jsnutils->countModules('promo-left');
$doc->hasPromoRight	= $jsnutils->countModules('promo-right');
$doc->hasInnerLeft	= $jsnutils->countModules('innerleft');
$doc->hasInnerRight	= $jsnutils->countModules('innerright');

// Define template colors
$doc->templateColors	= array('orange', 'red', 'green', 'yellow', 'pink', 'cyan');

if (isset($doc->sitetoolsColorsItems))
{
	$this->_document->templateColors = $doc->sitetoolsColorsItems;
}

// Apply K2 style
if ($jsnutils->checkK2())
{
	$doc->addStylesheet($doc->templateUrl . "/ext/k2/jsn_ext_k2.css");
}
// Apply VM style
if ($jsnutils->checkVM())
{
	$doc->addStylesheet($doc->templateUrl . "/ext/vm/jsn_ext_vm.css");
}

// Start generating custom styles
$customCss	= '';

// Process TPLFW v2 parameter
if (isset($doc->customWidth))
{
	if ($doc->customWidth != 'responsive')
	{
		$stickyMenuWidth = $doc->customWidth - 16;
		$customCss .= '
	#jsn-page,
	#jsn-pos-topbar {
		width: ' . $doc->customWidth . ';
		min-width: ' . $doc->customWidth . ';
	}
	#jsn-menu.jsn-menu-sticky {
		width: ' . $stickyMenuWidth . ';
	}';
	}
}

// Setup main menu width parameter
if ($doc->mainMenuWidth)
{
	$menuMargin = $doc->mainMenuWidth - 1;

	$customCss .= '
	div.jsn-modulecontainer ul.menu-mainmenu ul,
	div.jsn-modulecontainer ul.menu-mainmenu ul li {
		width: ' . $doc->mainMenuWidth . 'px;
	}
	div.jsn-modulecontainer ul.menu-mainmenu ul ul {';

	if ($doc->direction == 'ltr')
	{
		$customCss .= '
		margin-left: ' . $menuMargin . 'px;';
	}

	if ($doc->direction == 'rtl')
	{
		$customCss .= '
		margin-right: ' . $menuMargin . 'px;';
	}

	$customCss .= '
	}
	#jsn-pos-toolbar div.jsn-modulecontainer ul.menu-mainmenu ul ul {';

	if ($doc->direction == 'ltr')
	{
		$customCss .= '
		margin-right: ' . $menuMargin . 'px;
		margin-left : auto';
	}

	if ($doc->direction == 'rtl')
	{
		$customCss .= '
		margin-left : ' . $menuMargin . 'px;
		margin-right: auto';
	}

	$customCss .= '
	}';
}

// Setup slide menu width parameter
if ($doc->sideMenuWidth)
{
	$sideMenuMargin = $doc->sideMenuWidth + 2;

	$customCss .= '
	div.jsn-modulecontainer ul.menu-sidemenu ul,
	div.jsn-modulecontainer ul.menu-sidemenu ul li {
		width: ' . $doc->sideMenuWidth . 'px;
	}
	div.jsn-modulecontainer ul.menu-sidemenu li ul {
		right: -' . $sideMenuMargin . 'px;
	}
	body.jsn-direction-rtl div.jsn-modulecontainer ul.menu-sidemenu li ul {
		left: -' . $sideMenuMargin . 'px;
		right: auto;
	}
	div.jsn-modulecontainer ul.menu-sidemenu ul ul {';

	if ($doc->direction == 'ltr')
	{
		$customCss .= '
		margin-left: ' . $sideMenuMargin . 'px;';
	}

	if ($doc->direction == 'rtl')
	{
		$customCss .= '
		margin-right: ' . $sideMenuMargin . 'px;';
	}

	$customCss .= '
	}';
}

// Include CSS3 support for IE browser
if ($doc->isIE)
{
	$customCss .= '
	.text-box,
	.text-box-highlight,
	.text-box-highlight:hover {
		behavior: url(' . $doc->rootUrl . '/templates/'.strtolower($doc->template).'/css/PIE.htc);
	}
	.link-button {
		zoom: 1;
		position: relative;
		behavior: url(' . $doc->rootUrl . '/templates/'.strtolower($doc->template).'/css/PIE.htc);
	}';
}

$doc->addStyleDeclaration(trim($customCss, "\n"));
