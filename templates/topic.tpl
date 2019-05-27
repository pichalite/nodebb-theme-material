<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="card">
		<div class="listview lv-lg">
			<div class="lv-header-alt" component="post/header">
				<div class="title">
					<i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>
					<ul class="lv-actions actions">
						<!-- IMPORT partials/topic/sort.tpl -->
					</ul>
				</div>
			</div>

			<!-- IF merger -->
			<div component="topic/merged/message" class="alert alert-warning clearfix">
				<span class="pull-left">[[topic:merged_message, {mergeIntoTid}, {merger.mergedIntoTitle}]]</span>
				<span class="pull-right">
					<a href="{config.relative_path}/user/{merger.userslug}">
						<strong>{merger.username}</strong>
					</a>
					<small class="timeago" title="{mergedTimestampISO}"></small>
				</span>
			</div>
			<!-- ENDIF merger -->

			<!-- IMPORT partials/topic/deleted-message.tpl -->

			<div class="lv-body">
				<div component="topic" data-tid="{tid}" data-cid="{cid}">
				<!-- BEGIN posts -->
					<!-- IMPORT partials/topic/post.tpl -->
					<!-- IF !posts.index -->
					<div class="post-bar-placeholder"></div>
					<!-- ENDIF !posts.index -->
				<!-- END posts -->
				</div>

				<div class="post-bar">
					<!-- IMPORT partials/post_bar.tpl -->
				</div>
			</div>
		</div>
	</div>
	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>
<!-- IF !config.usePagination -->
	<noscript>
	<!-- IMPORT partials/paginator.tpl -->
	</noscript>
<!-- ENDIF !config.usePagination -->