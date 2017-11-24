<!-- IF posts.display_moderator_tools -->
<li class="tools-title">[[topic:tools]]</li>
<li><a component="post/edit" href="#"><i class="fa fa-pencil"></i> [[topic:edit]]</a></li>
<li><a component="post/delete" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->"><i class="fa fa-trash-o"></i> [[topic:delete]]</a></li>
<li><a component="post/restore" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->"><i class="fa fa-history"></i> [[topic:restore]]</a></li>
<li><a component="post/purge" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->"><i class="fa fa-eraser"></i> [[topic:purge]]</a></li>
<li><a component="topic/delete/posts" href="#"><i class="fa fa-trash-o"></i> [[topic:thread_tools.delete-posts]]</a></li>

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

<!-- IF !posts.deleted -->
<!-- IF config.loggedIn -->
<li>
	<a component="post/bookmark" href="#" data-bookmarked="{posts.bookmarked}">[[topic:bookmark]]
	<span component="post/bookmark-count" class="bookmarkCount" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;
	<i component="post/bookmark/on" class="fa fa-heart <!-- IF !posts.bookmarked -->hidden<!-- ENDIF !posts.bookmarked -->"></i>
	<i component="post/bookmark/off" class="fa fa-heart-o <!-- IF posts.bookmarked -->hidden<!-- ENDIF posts.bookmarked -->"></i>
	</a>
</li>
<!-- ENDIF config.loggedIn -->

<!-- IF postSharing.length -->
<li class="divider"></li>
<li class="tools-title">[[topic:share_this_post]]</li>
<!-- ENDIF postSharing.length -->
<!-- BEGIN postSharing -->
<li role="presentation">
	<a role="menuitem" component="share/{postSharing.id}" tabindex="-1" href="#"><span class="menu-icon"><i class="fa {postSharing.class}"></i></span> {postSharing.name}</a>
</li>
<!-- END postSharing -->

<li class="divider"></li>

<!-- IF posts.display_flag_tools -->
<li><a component="post/flag" href="#">[[topic:flag_title]]</a></li>
<!-- ENDIF posts.display_flag_tools -->
<!-- ENDIF !posts.deleted -->