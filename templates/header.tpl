<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}">
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	<!-- IF metaTags.content -->
	{function.buildMetaTag}
	<!-- ENDIF metaTags.content -->
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>
	<script src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	<!-- BEGIN scripts -->
 	<script type="text/javascript" src="{scripts.src}"></script>
 	<!-- END scripts -->

	<!-- IF useCustomJS -->
	{{customJS}}
 	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- ENDIF useCustomCSS -->
</head>

<body class="{bodyClass} skin-{config.selectedSkin}">
    <!-- IMPORT partials/menu.tpl -->

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->