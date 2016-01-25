<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account favourites">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF !posts.length -->
		<div class="alert alert-warning">{noItemsFoundKey}</div>
	<!-- ELSE -->
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-fw fa-pencil"></i> {title}
				</div>
				<!-- IMPORT partials/posts_list.tpl -->
			</div>
		</div>
	</div>
	<!-- ENDIF !posts.length -->

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
	
</div>