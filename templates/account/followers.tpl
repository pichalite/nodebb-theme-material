<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="users account user-followers">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-fw fa-users"></i> [[pages:{template.name}, {username}]]
				</div>
				<div class="card-body card-padding">
					<!-- IF !users.length -->
					<div class="alert alert-info">[[user:has_no_follower]]</div>
					<!-- ELSE -->
					<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
						<!-- IMPORT partials/users_list.tpl -->
					</ul>
					<!-- ENDIF !users.length -->
				</div>
			</div>
		</div>
	</div>
</div>