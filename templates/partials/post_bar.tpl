<span class="tags hidden-xs">
	<!-- BEGIN tags -->
	<div class="pull-left tag-container">
		<a href="{config.relative_path}/tags/{tags.value}">
		<span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span><span class="tag-topic-count">{tags.score}</span></a>
	</div>
	<!-- END tags -->
</span>

<div class="postbar-actions pull-right">
	<span class="loading-indicator pull-left hidden" done="0">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</span>

	<li class="post-count">
		<span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span><br />
		<small>[[global:posts]]</small>
	</li>
	<li class="view-count">
		<span title="{viewcount}" class="human-readable-number">{viewcount}</span><br />
		<small>[[global:views]]</small>
	</li>

	<!-- IMPORT partials/topic/reply-button.tpl -->
	
	<!-- IF loggedIn -->
	<li class="unread-button">
 	<button component="topic/mark-unread" class="btn btn-md btn-default">
 	<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:mark_unread]]</span>
	<span class="visible-xs-inline"><i class="fa fa-fw fa-inbox"></i></span>
 	</button>
 	</li>
 	<!-- ENDIF loggedIn -->

	<!-- IMPORT partials/thread_tools.tpl -->
</div>


