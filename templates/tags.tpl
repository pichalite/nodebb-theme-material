<div class="tags">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IF !tags.length -->
	<div class="alert alert-warning">
		[[tags:no_tags]]
	</div>
	<!-- ELSE -->
	<div class="form-group">
		<div class="fg-line">
			<input class="form-control" type="text" id="tag-search" placeholder="[[global:search]]"/>
		</div>
	</div>
	<!-- ENDIF !tags.length -->

	<div class="row">
		<div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>