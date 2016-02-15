<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="row groups">
	<div class="col-lg-4">
		<!-- IF allowGroupCreation -->
		<button class="btn btn-primary" data-action="new"><i class="fa fa-plus"></i> [[groups:new_group]]</button>
		<!-- ENDIF allowGroupCreation -->
	</div>
	<div class="col-lg-8">
		<div class="row">
			<div class="col-xs-5 pull-right form-group">
				<div class="fg-line">
				<select class="form-control" id="search-sort">
					<option value="alpha">[[groups:details.group_name]]</option>
					<option value="count">[[groups:details.member_count]]</option>
					<option value="date">[[groups:details.creation_date]]</option>
				</select>
				</div>
			</div>
			<div class="col-xs-7 text-left pull-right">
				<div class="input-group">
					<div class="fg-line">
						<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="" id="search-text">
					</div>
					<span id="search-button" class="input-group-addon last"><i class="fa fa-search"></i></span>
				</div>
			</div>
		</div>
	</div>
</div>

<div component="groups/container" class="groups list row" id="groups-list" data-nextstart="{nextStart}">
	<!-- IF groups.length -->
	<!-- IMPORT partials/groups/list.tpl -->
	<!-- ELSE -->
	<div class="col-xs-12">
		<div class="alert alert-warning">
		[[groups:no_groups_found]]
		</div>
	</div>
	<!-- ENDIF groups.length -->
</div>
