<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account profile-view">
	<div class="card user-profile-view" data-uid="{uid}">
		<div class="card-body cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
			<!-- IF isSelf -->
			<div class="controls">
				<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
				<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
				<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
			</div>
			<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
			<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
			<!-- ENDIF isSelf -->
		</div>

		<div class="card-footer">
			<div class="profile-pic">
	        <div class="user-icon profile-header-img" style="<!-- IF picture -->background-image: url({picture});  background-size: cover; background-repeat: no-repeat; background-position: center center;<!-- ELSE -->background-color: {icon:bgColor};<!-- ENDIF picture -->"><!-- IF !picture -->{icon:text}<!-- ENDIF !picture -->
	        	<!-- IF showHidden -->
		        <div class="option love"><a href="{config.relative_path}/user/{userslug}/edit"><i class="fa fa-edit"></i></a></div>
		        <!-- ENDIF showHidden -->
		        <div class="option reply"><a href="{config.relative_path}/user/{userslug}"><i class="fa fa-user"></i></a></div>
		        <!-- IF showHidden -->
		        <div class="option delete"><a href="{config.relative_path}/user/{userslug}/settings"><i class="fa fa-gear"></i></a></div>
		        <!-- ENDIF showHidden -->
		        <div class="close"><i class="fa fa-close"></i></div>
	        </div>
	        <!-- ENDIF picture -->
	        <span component="user/status" class="status {status}" title="[[global:{status}]]"></span>

	        	
	        </div>

			<div class="account-stats">
				<!-- IF reputation -->
				<div class="stat">
					<div class="human-readable-number" title="{reputation}">{reputation}</div>
					<span class="stat-label">[[global:reputation]]</span>
				</div>
				<!-- ENDIF reputation -->

				<div class="stat">
					<div class="human-readable-number" title="{postcount}">{postcount}</div>
					<span class="stat-label">[[global:posts]]</span>
				</div>

				<div class="stat">
					<div class="human-readable-number" title="{profileviews}">{profileviews}</div>
					<span class="stat-label">[[user:profile_views]]</span>
				</div>

				<div class="stat">
					<div class="human-readable-number" title="{followerCount}">{followerCount}</div>
					<span class="stat-label">[[user:followers]]</span>
				</div>

				<div class="stat">
					<div class="human-readable-number"  title="{followingCount}">{followingCount}</div>
					<span class="stat-label">[[user:following]]</span>
				</div>
			</div>
			
			<!-- IMPORT partials/account_menu.tpl -->

			<div class="user-info">
		        <h3 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h3>
				<h4 class="username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h4>
			</div>
			
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="card">
				<div class="card-body card-padding">
					<!-- IF email -->
					<div class="profile-label">[[user:email]] <i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> <strong>{email}</strong></div>
					<!-- ENDIF email -->

					<!-- IF websiteName -->
					<div class="profile-label">[[user:website]] <a href="{websiteLink}"><strong>{websiteName}</strong></a></div>
					<!-- ENDIF websiteName -->

					<div class="profile-label">[[user:joined]] <strong class="timeago" title="{joindateISO}"></strong></div>

					<div class="profile-label">[[user:lastonline]] <strong class="timeago" title="{lastonlineISO}"></strong></div>
				</div>
			</div>
		</div>
		<div class="col-md-8 user-recent-posts">
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-edit"></i> [[global:recentposts]]
				</div>
				<!-- IF !posts.length -->
				<div class="alert alert-warning">[[user:has_no_posts]]</div>
				<!-- ENDIF !posts.length -->
				<!-- IMPORT partials/posts_list.tpl -->
			</div>

		</div>
	</div>
	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>