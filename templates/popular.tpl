<div class="popular">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul class="nav nav-pills tab-nav" component="popular/tab">
		<li><a href="{config.relative_path}/popular/daily">[[recent:day]]</a></li>
		<li><a href="{config.relative_path}/popular/weekly">[[recent:week]]</a></li>
		<li><a href="{config.relative_path}/popular/monthly">[[recent:month]]</a></li>
	</ul>

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
		        	[[global:header.popular]]
		        </div>
		    </div>
		    <!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">
				[[recent:no_popular_topics]]
			</div>
			<!-- ENDIF !topics.length -->
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
	</div>
</div>