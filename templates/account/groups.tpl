<!-- IMPORT partials/breadcrumbs.tpl -->

<div component="groups/container" id="groups-list" class="account groups list user-groups row">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF !groups.length -->
	<div class="alert alert-warning text-center">[[groups:no_groups_found]]</div>
	<!-- ELSE -->
	<!-- IMPORT partials/groups/list.tpl -->
	<!-- ENDIF !groups.length -->
</div>