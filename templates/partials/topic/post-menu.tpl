<li class="dropdown moderator-tools">
	<a data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-ellipsis-v"></i></a>
	<ul class="dropdown-menu pull-right">
		<!-- IF posts.display_moderator_tools -->
		<li class="tools-title">[[topic:tools]]</li>
		<li><a component="post/edit" href="#"><i class="fa fa-pencil"></i> [[topic:edit]]</a></li>
		<li><a component="post/delete" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->"><i class="fa fa-trash-o"></i> [[topic:delete]]</a></li>
		<li><a component="post/restore" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->"><i class="fa fa-history"></i> [[topic:restore]]</a></li>
		<li><a component="post/purge" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->"><i class="fa fa-eraser"></i> [[topic:purge]]</a></li>

		<!-- BEGIN posts.tools -->
		<li>
			<a component="{posts.tools.action}" href="#">
				<i class="fa {posts.tools.icon}"></i> {{posts.tools.html}}
			</a>
		</li>
		<!-- END posts.tools -->

		<!-- IF posts.display_move_tools -->
		<li><a component="post/move" href="#"><i class="fa fa-arrows"></i> [[topic:move]]</a></li>
		<!-- ENDIF posts.display_move_tools -->
		<li class="divider"></li>
		<!-- ENDIF posts.display_moderator_tools -->

		<li>
			<a component="post/favourite" href="#" data-favourited="{posts.favourited}">[[topic:favourite]]
			<span component="post/favourite-count" class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp;
			<i component="post/favourite/on" class="fa fa-heart <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->"></i>
			<i component="post/favourite/off" class="fa fa-heart-o <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->"></i>
			</a>
		</li>

		<!-- IF !config.disableSocialButtons -->
		<li class="divider"></li>
		<li class="tools-title">[[topic:share_this_post]]</li>
		<li><a class="facebook-share" href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
		<li><a class="twitter-share" href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
		<li><a class="google-share" href="#"><i class="fa fa-google-plus"></i> Google+</a></li>
		<!-- ENDIF !config.disableSocialButtons -->

		<li class="divider"></li>

		<!-- IF !posts.selfPost -->
		<li><a component="post/flag" href="#">[[topic:flag_title]]</a></li>
		<!-- ENDIF !posts.selfPost -->
	</ul>
</li>