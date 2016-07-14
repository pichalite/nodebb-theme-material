<div class="users">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="row">
		<div class="col-lg-6">
			<ul class="nav nav-pills tab-nav">
				<li><a href="{config.relative_path}/users/online">[[global:online]]</a></li>
				<li><a href="{config.relative_path}/users/sort-posts">[[users:top_posters]]</a></li>
				<!-- IF !reputation:disabled -->
				<li><a href="{config.relative_path}/users/sort-reputation">[[users:most_reputation]]</a></li>
				<!-- ENDIF !reputation:disabled -->
				<!-- IF isAdminOrGlobalMod -->
				<li><a href="{config.relative_path}/users/flagged">[[users:most_flags]]</a></li>
				<li><a href="{config.relative_path}/users/banned">[[user:banned]]</a></li>
				<!-- ENDIF isAdminOrGlobalMod -->
			</ul>
		</div>
		<div class="col-lg-3">
			<!-- IF inviteOnly -->
 			<!-- IF loggedIn -->
 			<button component="user/invite" class="btn btn-success pull-right"><i class="fa fa-users"></i> [[users:invite]]</button>
 			<!-- ENDIF loggedIn -->
 			<!-- ENDIF inviteOnly -->
		</div>
		<div class="col-lg-3">
			<!-- IF function.displayUserSearch, {config.allowGuestUserSearching} -->
			<div class="search">
 				<div class="input-group">
 					<div class="fg-line">
 						<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
 					</div>
 				</div>
 			</div>
			<!-- ENDIF function.displayUserSearch -->
		</div>
	</div>
	<br />

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<div class="user-picture">G</div>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<div class="text-center {loadmore_display}">
		<button id="load-more-users-btn" class="btn btn-primary">[[users:load_more]]</button>
	</div>
</div>
