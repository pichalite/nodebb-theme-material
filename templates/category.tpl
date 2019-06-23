<div class="category">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IMPORT partials/category/subcategory.tpl -->

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
					<!-- IF privileges.topics:create -->
					<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
						<!-- IF !loggedIn -->
						<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
						<!-- ENDIF !loggedIn -->
					<!-- ENDIF privileges.topics:create -->

					<a href="{url}">
						<div class="alert alert-warning hide" id="new-topics-alert"></div>
					</a>

					<ul class="lv-actions actions" component="category/controls">
						<!-- IMPORT partials/category/watch.tpl -->
						<!-- IMPORT partials/category/tools.tpl -->
						<!-- IMPORT partials/category/sort.tpl -->
					</ul>
				</div>
			</div>
			<!-- IF !topics.length -->
			<!-- IF privileges.topics:create -->
			<div class="alert alert-warning" id="category-no-topics">
				[[category:no_topics]]
			</div>
			<!-- ENDIF privileges.topics:create -->
			<!-- ENDIF !topics.length -->

			<!-- IMPORT partials/topics_list.tpl -->
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