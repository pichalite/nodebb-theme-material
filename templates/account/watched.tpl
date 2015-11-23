<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account user-watched-topics">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF !topics.length -->
		<div class="alert alert-warning">[[user:has_no_watched_topics]]</div>
	<!-- ELSE -->

	<div class="category">
		<div class="card">
			<div class="card-header ch-alt">
				[[pages:{template.name}, {username}]]
			</div>
			<div class="listview lv-bordered lv-lg">
				<!-- IMPORT partials/topics_list.tpl -->
			</div>
		</div>
	</div>
	<!-- ENDIF !topics.length -->

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>