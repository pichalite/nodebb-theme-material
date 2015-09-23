<!-- IMPORT partials/account_menu.tpl -->

<div class="user-watched-topics">
	<!-- IF !topics.length -->
		<div class="alert alert-warning">[[user:has_no_watched_topics]]</div>
	<!-- ELSE -->

	<div class="category">
		<div class="card">
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