<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection -->>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->{function.buildMetaTag}<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client.css?{config.cache-buster}" />
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
 	<!-- ENDIF useCustomHTML -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- ENDIF useCustomCSS -->
</head>

<body class="{bodyClass} theme-{config.selectedSkin}">
		<div id="header-menu">
			<div class="material-load-bar">
					<div class="material-bar"></div>
					<div class="material-bar"></div>
					<div class="material-bar"></div>
			</div>
			<div class="container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</div>

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->