<!DOCTYPE html>
<html lang="{function.localeToHTML, defaultLang}">
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{config.cache-buster}" />
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>
	<script src="{relative_path}/nodebb.min.js?{config.cache-buster}"></script>
	<!-- IMPORT partials/requirejs-config.tpl -->
	
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

<body>
	
    <!-- IMPORT partials/menu.tpl -->

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->