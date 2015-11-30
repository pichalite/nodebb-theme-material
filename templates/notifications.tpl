<div class="notifications">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-body notifications-list">
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


