<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="listview lv-lg">
					<div class="lv-header-alt" component="post/header" itemprop="name">
						<div class="title">
						<i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>
						<ul class="lv-actions actions hidden-xs">
							<li>
								<span class="browsing-users">
									[[category:browsing]]
									<span component="topic/browsing/list" class="thread_active_users active-users"></span>
								</span>
								<small class="hidden">
									<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
								</small>
							</li>
							<!-- IMPORT partials/topic/sort.tpl -->
							<li>
							    <span component="topic/follow" class="hidden-xs <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->">
									<i class="fa fa-eye"></i>
								</span>

								<span component="topic/unfollow" class="hidden-xs <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->">
									<i class="fa fa-eye-slash"></i>
								</span>
							</li>
						</ul>
						</div>
					</div>
					<div class="lv-body" component="topic" data-tid="{tid}">
						
							<!-- BEGIN posts -->
							<!-- IMPORT partials/topic/post.tpl -->
							
							<!-- IF !posts.index -->
							<div class="post-bar" data-index="{posts.index}">
								<!-- IMPORT partials/post_bar.tpl -->
							</div>
							<!-- ENDIF !posts.index -->
							<!-- END posts -->
							<div class="post-bar <!-- IF unreplied -->hidden<!-- ENDIF unreplied -->">
								<!-- IMPORT partials/post_bar.tpl -->
							</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>
<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/topic.tpl -->