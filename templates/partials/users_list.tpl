<!-- BEGIN users -->
<li class="users-box registered-user" data-uid="{users.uid}">
	<a href="{config.relative_path}/user/{users.userslug}">
		<!-- IF users.picture -->
		<img class="user-picture" src="{users.picture}" />
		<!-- ELSE -->
		<div class="user-icon user-picture" style="background-color: {users.icon:bgColor};">{users.icon:text}</div>
		<!-- ENDIF users.picture -->
	</a>
	<br/>
	<div class="user-info">
		<div>
			<i component="user/status" class="status {users.status}" title="[[global:{users.status}]]"></i>
			<a href="{config.relative_path}/user/{users.userslug}"> {users.username}</a>
		</div>

		<!-- IF route_users:joindate -->
		<div title="joindate" class="joindate">
			<i class="fa fa-clock"></i>
			<span class="timeago" title="{users.joindateISO}"></span>
		</div>
		<!-- ENDIF route_users:joindate -->

		<!-- IF route_users:reputation -->
		<div title="reputation" class="reputation">
			<i class="fa fa-star"></i>
			<span class="formatted-number">{users.reputation}</span>
		</div>
		<!-- ENDIF route_users:reputation -->

		<!-- IF route_users:postcount -->
		<div title="post count" class="post-count">
			<i class="fa fa-pencil"></i>
			<span class="formatted-number">{users.postcount}</span>
		</div>
		<!-- ENDIF route_users:postcount -->
		
		<!-- IF route_users:flags -->
		<div title="flag count" class="flag-count">
			<i class="fa fa-flag"></i>
			<span class="formatted-number"><a href="{config.relative_path}/posts/flags?byUsername={users.username}">{users.flags}</a></span>
		</div>
		<!-- ENDIF route_users:flags -->
	</div>
</li>
<!-- END users -->