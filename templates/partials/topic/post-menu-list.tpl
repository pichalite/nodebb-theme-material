<!-- IF posts.display_moderator_tools -->
<li class="tools-title">[[topic:tools]]</li>
<li><a component="post/edit" href="#"><i class="fa fa-fw fa-pencil"></i> [[topic:edit]]</a></li>
<li <!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->><a component="post/delete" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->"><i class="fa fa-fw fa-trash-o"></i> [[topic:delete]]</a></li>
<li <!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->><a component="post/restore" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->"><i class="fa fa-fw fa-history"></i> [[topic:restore]]</a></li>
<!-- IF posts.display_purge_tools -->
<li <!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->><a component="post/purge" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->"><i class="fa fa-fw fa-eraser"></i> [[topic:purge]]</a></li>
<!-- END -->
<li><a component="topic/delete/posts" href="#"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete-posts]]</a></li>

<!-- IF posts.display_history -->
<li>
	<a component="post/view-history" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-history"></i></span> [[topic:view-history]]
	</a>
</li>
<!-- END -->

<!-- IF posts.display_move_tools -->
<li><a component="post/move" href="#"><i class="fa fa-fw fa-arrows"></i> [[topic:move]]</a></li>
<!-- ENDIF posts.display_move_tools -->

<!-- IF posts.ip -->
<li>
	<a component="post/copy-ip" role="menuitem" tabindex="-1" href="#" data-clipboard-text="{posts.ip}">
		<span class="menu-icon" ><i class="fa fa-fw fa-copy"></i></span> [[topic:copy-ip]] {posts.ip}
	</a>
</li>
<!-- IF posts.display_ip_ban -->
<li>
	<a component="post/ban-ip" role="menuitem" tabindex="-1" href="#" data-ip="{posts.ip}">
		<span class="menu-icon"><i class="fa fa-fw fa-ban"></i></span> [[topic:ban-ip]] {posts.ip}
	</a>
</li>
<!-- ENDIF posts.display_ip_ban -->
<!-- ENDIF posts.ip -->
<!-- ENDIF posts.display_moderator_tools -->

<!-- BEGIN posts.tools -->
<li role="presentation">
	<a component="{posts.tools.action}" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw {posts.tools.icon}"></i></span> {{posts.tools.html}}
	</a>
</li>
<!-- END posts.tools -->
<!-- IF posts.toolsVisible -->
<li class="divider"></li>
<!-- ENDIF posts.toolsVisible -->

<!-- IF !posts.deleted -->
<!-- IF config.loggedIn -->
<li>
	<a component="post/bookmark" href="#" data-bookmarked="{posts.bookmarked}">[[topic:bookmark]]
	<span component="post/bookmark-count" class="bookmarkCount" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;
	<i component="post/bookmark/on" class="fa fa-fw fa-heart <!-- IF !posts.bookmarked -->hidden<!-- ENDIF !posts.bookmarked -->"></i>
	<i component="post/bookmark/off" class="fa fa-fw fa-heart-o <!-- IF posts.bookmarked -->hidden<!-- ENDIF posts.bookmarked -->"></i>
	</a>
</li>
<!-- ENDIF config.loggedIn -->

<!-- IF postSharing.length -->
<li class="divider"></li>
<li class="tools-title">[[topic:share_this_post]]</li>
<!-- ENDIF postSharing.length -->
<!-- BEGIN postSharing -->
<li role="presentation">
	<a role="menuitem" component="share/{postSharing.id}" tabindex="-1" href="#"><span class="menu-icon"><i class="fa fa-fw {postSharing.class}"></i></span> {postSharing.name}</a>
</li>
<!-- END postSharing -->

<li class="divider"></li>

<!-- IF posts.display_flag_tools -->
<li><a component="post/flag" href="#">[[topic:flag_title]]</a></li>
<!-- ENDIF posts.display_flag_tools -->
<!-- ENDIF !posts.deleted -->