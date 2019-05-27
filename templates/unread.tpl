<div class="unread">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<a href="{config.relative_path}/unread">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt <!-- IF !topics.length -->hidden<!-- ENDIF !topics.length -->">
				<div class="title">
					<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>

					<div class="markread btn-group <!-- IF !topics.length -->hidden<!-- ENDIF !topics.length -->">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							[[unread:mark_as_read]] <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li role="presentation">
								<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
							</li>

							<li role="presentation">
								<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
							</li>
							<li class="divider"></li>
							<!-- BEGIN categories -->
							<li role="presentation" class="category" data-cid="{categories.cid}">
								<a role="menu-item" href="#">{categories.level}<!-- IF categories.icon --><span class="fa-stack"><i style="color: {categories.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
							</li>
							<!-- END categories -->
						</ul>
					</div>

					<!-- IMPORT partials/category-filter.tpl -->
					
					<div class="btn-group pull-right">
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
				</div>
			</div>

			<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

			<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>

			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->

		</div>
	</div>
</div>
