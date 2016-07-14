<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account user-topics">
	<!-- IMPORT partials/account/header.tpl -->
	
	<div class="category">
		<div class="card">
			<div class="card-header ch-alt">
				<i class="fa fa-fw fa-book"></i> {title}
			</div>
			<div class="listview lv-bordered lv-lg">
				<!-- IF !topics.length -->
					<div class="alert alert-warning">{noItemsFoundKey}</div>
				<!-- ENDIF !topics.length -->
				<!-- IMPORT partials/topics_list.tpl -->
			</div>
		</div>
	</div>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>