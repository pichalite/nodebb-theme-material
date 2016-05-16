<div class="recent">
	<!-- IMPORT partials/breadcrumbs.tpl -->
		
	<a href="{config.relative_path}/recent">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>
    
    <div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
			        <!-- IF loggedIn -->
					<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
					<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF loggedIn -->
				</div>
		    </div>
		    <!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">
				[[recent:no_recent_topics]]
			</div>
			<!-- ENDIF !topics.length -->
			<!-- IMPORT partials/topics_list.tpl -->
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>