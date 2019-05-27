<!-- BEGIN groups -->
<div class="col-lg-4 col-md-6 col-sm-12" data-slug="{groups.slug}">
  <div class="card">
		<div class="card-header ch-alt">
			<div>{groups.displayName}</div>
		</div>
    <a href="{config.relative_path}/groups/{groups.slug}" class="card-body group-cover list-cover" style="<!-- IF groups.cover:thumb:url -->background-image: url({groups.cover:thumb:url});<!-- ENDIF groups.cover:thumb:url -->"></a>
    <div class="card-body card-padding">
			<ul class="members">
				<!-- BEGIN groups.members -->
				<li>
					<a href="{config.relative_path}/user/{groups.members.userslug}">
						<!-- IF groups.members.picture -->
						<img class="user-avatar" src="{groups.members.picture}" alt="{groups.members.username}" title="{groups.members.username}" />
						<!-- ELSE -->
						<div class="user-icon" style="background-color: {groups.members.icon:bgColor};">{groups.members.icon:text}</div>
						<!-- ENDIF groups.members.picture -->
					</a>
				</li>
				<!-- END groups.members -->
				<!-- IF groups.truncated -->
				<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
				<!-- ENDIF groups.truncated -->
			</ul>
		</div>
		<div class="card-footer">
			{groups.memberCount} member(s)
		</div>
  </div>
</div>
<!-- END groups -->