<div class="tags">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IF !tags.length -->
	<div class="alert alert-warning">
		[[tags:no_tags]]
	</div>
	<!-- ELSE -->
	<div class="row">
		<!-- IF displayTagSearch -->
		<div class="col-md-8 col-xs-12">
			<div class="form-group">
				<div class="fg-line">
					<input class="form-control" type="text" id="tag-search" placeholder="[[global:search]]"/>
				</div>
			</div>
		</div>
		<!-- ENDIF displayTagSearch -->
		<div class="col-md-4 col-xs-12">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary pull-right">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary pull-right">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
	</div>
	<!-- ENDIF !tags.length -->

	<div class="row">
		<div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>