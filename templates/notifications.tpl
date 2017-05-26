<div class="notifications">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title pull-right">
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<!-- IF selectedFilter -->{selectedFilter.name}<!-- ENDIF selectedFilter --> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<!-- BEGIN filters -->
							<!-- IF filters.separator -->
							<li role="separator" class="divider"></li>
							<!-- ELSE -->
							<li>
								<a href="{config.relative_path}/notifications?filter={filters.filter}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
							</li>
							<!-- ENDIF filters.separator -->
							<!-- END filters -->
						</ul>
					</div>
					<button type="button" class="btn btn-default" component="notifications/mark_all">[[notifications:mark_all_read]]</button>
				</div>
		    </div>
			<div class="lv-body notifications-list" data-nextstart="{nextStart}">
				<!-- BEGIN notifications -->
				<div class="lv-item media {notifications.readClass}" data-nid="{notifications.nid}" component="notifications/item">
			    	<div class="pull-left">
			    		<!-- IF notifications.image -->
						<!-- IF notifications.from -->
						<a href="{config.relative_path}/user/{notifications.user.userslug}"><img class="lv-img" src="{notifications.image}" /></a>
						<!-- ENDIF notifications.from -->
						<!-- ELSE -->
						<a href="{config.relative_path}/user/{notifications.user.userslug}"><div class=" user-icon lv-img" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div></a>
						<!-- ENDIF notifications.image -->
					</div>
					<div class="media-body">
						<div class="lv-title">
						<a component="notifications/item/link" href="{notifications.path}">{notifications.bodyShort}</a>
						</div>
						<small class="timeago" title="{notifications.datetimeISO}"></small>
					</div>
		    	</div>
		    	<!-- END notifications -->
			</div>
		</div>
	</div>
</div>
