<div class="card user-profile-view" data-uid="{uid}">
	<div class="card-body cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
		<!-- IF isSelf -->
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-3x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-3x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-3x fa-times"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<!-- ENDIF isSelf -->
	</div>

	<div class="card-footer">
		<div class="profile-pic">
        <div class="user-icon profile-header-img" style="<!-- IF picture -->background-image: url({picture});  background-size: cover; background-repeat: no-repeat; background-position: center center;<!-- ELSE -->background-color: {icon:bgColor};<!-- ENDIF picture -->"><!-- IF !picture -->{icon:text}<!-- ENDIF !picture -->
        	
        	<div class="option profile"><a href="{config.relative_path}/user/{userslug}"><i class="fa fa-user"></i></a></div>
        	<div class="option follow"><a><i class="fa fa-<!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing -->"></i></a></div>
        	<!-- IF showHidden -->
	        <div class="option edit"><a href="{config.relative_path}/user/{userslug}/edit"><i class="fa fa-edit"></i></a></div>
	        <div class="option settings"><a href="{config.relative_path}/user/{userslug}/settings"><i class="fa fa-gear"></i></a></div>
	        <!-- ENDIF showHidden -->
	        <div class="close"><i class="fa fa-close"></i></div>
        </div>
        <!-- ENDIF picture -->
        <span component="user/status" class="status {status}" title="[[global:{status}]]"></span>

        	
        </div>

        <!-- IF template.account/profile -->
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
		<!-- ENDIF template.account/profile -->
		
		<!-- IMPORT partials/account/menu.tpl -->

		<div class="user-info">
	        <h3 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h3>
			<h4 class="username visible-md visible-sm visible-lg"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h4>
		</div>
		
	</div>
</div>