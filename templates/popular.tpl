<div class="popular">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
					<!-- IF canPost -->
					<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF canPost -->

					<div class="btn-group <!-- IF !terms.length -->hidden<!-- ENDIF !terms.length -->">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							{selectedTerm.name} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<!-- BEGIN terms -->
							<li role="presentation" class="category">
								<a role="menu-item" href="{config.relative_path}/{terms.url}"><i class="fa fa-fw <!-- IF terms.selected -->fa-check<!-- ENDIF terms.selected -->"></i>{terms.name}</a>
							</li>
							<!-- END terms -->
						</ul>
					</div>

					<div class="btn-group <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							{selectedFilter.name} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<!-- BEGIN filters -->
							<li role="presentation" class="category">
								<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
							</li>
							<!-- END filters -->
						</ul>
					</div>
					<!-- IMPORT partials/category-filter.tpl -->
				</div>
			</div>
			<!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">
				[[recent:no_popular_topics]]
			</div>
			<!-- ENDIF !topics.length -->
			<!-- IMPORT partials/topics_list.tpl -->

			<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>