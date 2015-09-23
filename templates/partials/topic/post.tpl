<div component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
    <a component="post/anchor" name="{posts.index}"></a>
    <meta itemprop="datePublished" content="{posts.relativeTime}">
    <meta itemprop="dateModified" content="{posts.relativeEditTime}">

    <div class="post-block">
        <div class="poster-avatar hidden-xs">
            <a href="{config.relative_path}/user/{posts.user.userslug}">
                <img class="user-picture" src="{posts.user.picture}" title="{posts.user.username}">
            </a>
        </div>
        <div class="post-content">
            <div class="post-body">
                <div class="post-actions pull-right">
                    <li class="votes">
                        <!-- IF !reputation:disabled -->
                        <a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
                            <i class="fa fa-thumbs-o-up"></i>
                        </a>
                        <span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
                        <!-- IF !downvote:disabled -->
                        <a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
                            <i class="fa fa-thumbs-o-down"></i>
                        </a>
                        <!-- ENDIF !downvote:disabled -->
                        <!-- ENDIF !reputation:disabled -->
                    </li>
                    <!-- IMPORT partials/topic/post-menu.tpl -->
                </div>

                <div class="post-header">
                    <a class="pull-left visible-xs" href="{config.relative_path}/user/{posts.user.userslug}">
                        <img class="post-user-picture" src="{posts.user.picture}" title="{posts.user.username}">
                    </a>
                    
                    <i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
                    <strong>
                        <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
                    </strong>
                    <!-- IMPORT partials/topic/badge.tpl -->
                    <span class="post-time">
                        [[global:posted_ago, <a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>]]

                        <span class="post-tools">
                            <a component="post/reply" href="#" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-reply"></i>[[topic:reply]]</a>
                            <a component="post/quote" href="#" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-quote-left"></i>[[topic:quote]]</a>
                        </span>
                    </span>
                </div>
                <div component="post/content" itemprop="text">
                    <p>{posts.content}</p>
                </div>

                 <!-- IF posts.user.signature -->
                <div component="post/signature" data-uid="{posts.user.uid}" class="post-signature hidden-xs">{posts.user.signature}</div>
                <!-- ENDIF posts.user.signature -->

                <small component="post/editor" class="pull-right post-edit <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->">[[global:last_edited_by_ago, <strong><a href="{config.relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</small>
            </div>
            
        </div>
    </div>
</div>

