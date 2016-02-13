<div class="card-body card-padding" component="posts" data-nextstart="{nextStart}">
	<!-- BEGIN posts -->
	<div class="timeline single">
		<div class="frame">
			<div class="timeline-badge" style="background-color:{posts.category.bgColor}; border-color:{posts.category.bgColor};">
				<i class="fa {posts.category.icon}"></i>
			</div>
			<span class="timeline-date"><a href="{config.relative_path}/category/{posts.category.slug}">[[global:posted_in, {posts.category.name}]] <i class="fa {posts.category.icon}"></i></a> <span class="timeago" title="{posts.relativeTime}"></span> &bull;
			<a href="{config.relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]]</a></span>
			<div class="timeline-content">
				<p>{posts.content}</p>
			</div>
		</div>
	</div>
	<!-- END posts -->
	<div component="posts/loading" class="loading-indicator text-center hidden">
		<i class="fa fa-refresh fa-spin"></i>
	</div>
</div>